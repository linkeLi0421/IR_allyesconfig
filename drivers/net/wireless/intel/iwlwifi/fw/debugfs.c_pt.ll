; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/fw/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.130, %struct.anon.135, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.129], i32, i32, i32, [6 x i32] }
%struct.anon.129 = type { [15 x i32], i32 }
%struct.anon.130 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.134 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.iwl_fwrt_dump_data = type { %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.134 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.135 = type { %struct.delayed_work, i32, i64 }
%struct.iwl_mvm_marker = type <{ i8, i8, i16, i64, [0 x i32] }>
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.file = type { %union.anon.22, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.22 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dbgfs_timestamp_marker_data = type { ptr, i8, i32, [16 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.136, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.137, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.138, ptr, %struct.address_space, %struct.list_head, %union.anon.139, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.136 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.137 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.139 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_fw_cmd_version = type { i8, i8, i8, i8 }
%struct.iwl_fw_runtime_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hcmd_write_data = type <{ i32, i32, i16, [0 x i8] }>
%struct.dbgfs_send_hcmd_data = type { ptr, i8, i32, [512 x i8] }
%struct.iwl_dbg_host_event_cfg_cmd = type { i32 }
%struct.dbgfs_enabled_severities_data = type { ptr, i8, i32, [16 x i8] }
%struct.dbgfs_fw_dbg_domain_data = type { ptr, i8, i32, [20 x i8] }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }

@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"starting timestamp_marker trigger with delay: %us\0A\00", [45 x i8] zeroinitializer }, align 32
@iwl_fwrt_dbgfs_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&fwrt->timestamp.wk)->work)\00", [48 x i8] zeroinitializer }, align 32
@iwl_fwrt_dbgfs_register.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&fwrt->timestamp.wk)->timer\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timestamp_marker\00", [47 x i8] zeroinitializer }, align 32
@iwl_dbgfs_timestamp_marker_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @_iwl_dbgfs_timestamp_marker_read, ptr @_iwl_dbgfs_timestamp_marker_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @_iwl_dbgfs_timestamp_marker_open, ptr null, ptr @_iwl_dbgfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw_info\00", [24 x i8] zeroinitializer }, align 32
@iwl_dbgfs_fw_info_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @iwl_dbgfs_fw_info_open, ptr null, ptr @seq_release_private, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_hcmd\00", [22 x i8] zeroinitializer }, align 32
@iwl_dbgfs_send_hcmd_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_send_hcmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @_iwl_dbgfs_send_hcmd_open, ptr null, ptr @_iwl_dbgfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enabled_severities\00", [45 x i8] zeroinitializer }, align 32
@iwl_dbgfs_enabled_severities_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_enabled_severities_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @_iwl_dbgfs_enabled_severities_open, ptr null, ptr @_iwl_dbgfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fw_dbg_domain\00", [18 x i8] zeroinitializer }, align 32
@iwl_dbgfs_fw_dbg_domain_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @_iwl_dbgfs_fw_dbg_domain_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @_iwl_dbgfs_fw_dbg_domain_open, ptr null, ptr @_iwl_dbgfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"stopping timestamp_marker, ret: %d, delay: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iwl_dbgfs_info_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @iwl_dbgfs_fw_info_seq_start, ptr @iwl_dbgfs_fw_info_seq_stop, ptr @iwl_dbgfs_fw_info_seq_next, ptr @iwl_dbgfs_fw_info_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_api_ver:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  0x%04x:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"    name: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"    cmd_ver: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"    notif_ver: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"host command data size does not match header length\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sent host event cfg with enabled_severities: %u, ret: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 195, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 403, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 404, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [31 x i8] c"iwl_dbgfs_timestamp_marker_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 230, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 405, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"iwl_dbgfs_fw_info_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 392, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 406, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"iwl_dbgfs_send_hcmd_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 293, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 407, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [33 x i8] c"iwl_dbgfs_enabled_severities_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 174, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 408, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [28 x i8] c"iwl_dbgfs_fw_dbg_domain_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 302, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 188, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 227, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 156, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_info_seq_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 371, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 357, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 363, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 364, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 366, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 367, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 272, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 167, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [51 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 298, i32 30 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @iwl_fwrt_dbgfs_register.__key, ptr @.str.1, ptr @iwl_fwrt_dbgfs_register.__key.2, ptr @.str.3, ptr @.str.4, ptr @iwl_dbgfs_timestamp_marker_ops, ptr @.str.5, ptr @iwl_dbgfs_fw_info_ops, ptr @.str.6, ptr @iwl_dbgfs_send_hcmd_ops, ptr @.str.7, ptr @iwl_dbgfs_enabled_severities_ops, ptr @.str.8, ptr @iwl_dbgfs_fw_dbg_domain_ops, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @iwl_dbgfs_info_seq_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_fwrt_dbgfs_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_fwrt_dbgfs_register.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_timestamp_marker_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_fw_info_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_send_hcmd_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_enabled_severities_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_fw_dbg_domain_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_info_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_fw_trigger_timestamp(ptr noundef %fwrt, i32 noundef %delay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @__iwl_info(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %delay) #8
  %timestamp.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13
  %delay.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %delay.i, align 4
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timestamp.i) #8
  %mul = mul i32 %delay, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #8
  %3 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.i, ptr %delay.i, align 4
  %call7 = tail call i32 @round_jiffies_relative(i32 noundef %call2.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %timestamp.i, i32 noundef %call7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_fwrt_dbgfs_register(ptr noundef %fwrt, ptr noundef %dbgfs_dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timestamp = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13
  tail call void @__init_work(ptr noundef %timestamp, i32 noundef 0) #8
  %0 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %timestamp, align 8
  %lockdep_map = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @iwl_fwrt_dbgfs_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry11 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13, i32 0, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @iwl_fw_timestamp_marker_wk, ptr %func, align 4
  %timer = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @iwl_fwrt_dbgfs_register.__key.2) #8
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 128, ptr noundef %dbgfs_dir, ptr noundef %fwrt, ptr noundef nonnull @iwl_dbgfs_timestamp_marker_ops) #8
  %call23 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 128, ptr noundef %dbgfs_dir, ptr noundef %fwrt, ptr noundef nonnull @iwl_dbgfs_fw_info_ops) #8
  %call26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 128, ptr noundef %dbgfs_dir, ptr noundef %fwrt, ptr noundef nonnull @iwl_dbgfs_send_hcmd_ops) #8
  %call29 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 128, ptr noundef %dbgfs_dir, ptr noundef %fwrt, ptr noundef nonnull @iwl_dbgfs_enabled_severities_ops) #8
  %call32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %dbgfs_dir, ptr noundef %fwrt, ptr noundef nonnull @iwl_dbgfs_fw_dbg_domain_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_fw_timestamp_marker_wk(ptr noundef %work) #0 align 64 {
entry:
  %marker.i = alloca %struct.iwl_mvm_marker, align 1
  %hcmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1464
  %delay1 = getelementptr inbounds %struct.anon.135, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %delay1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %marker.i) #8
  %2 = getelementptr inbounds %struct.iwl_mvm_marker, ptr %marker.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iwl_mvm_marker, ptr %marker.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.iwl_mvm_marker, ptr %marker.i, i32 0, i32 3
  %5 = ptrtoint ptr %marker.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %marker.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %3, align 1
  %seq.i = getelementptr i8, ptr %work, i32 104
  %8 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %seq.i, align 8
  %inc.i = add i64 %9, 1
  store i64 %inc.i, ptr %seq.i, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i) #8
  %12 = getelementptr inbounds i8, ptr %hcmd.i, i32 32
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65535, ptr %12, align 4, !annotation !66
  %14 = ptrtoint ptr %hcmd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %marker.i, ptr %hcmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %hcmd.i, i32 1
  %flags.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 4
  %15 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 16)
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags.i, align 4
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 5
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 203, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 12, ptr %len.i, align 4
  %arrayinit.start4.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayinit.start4.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %arrayinit.start4.i, align 2
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %call.i = call i32 @iwl_trans_send_cmd(ptr noundef %21, ptr noundef nonnull %hcmd.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %marker.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = call i32 @round_jiffies_relative(i32 noundef %1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef %call4) #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %work, i32 -1456
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %call7 = call i32 @jiffies_to_msecs(i32 noundef %1) #8
  %div = udiv i32 %call7, 1000
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %24, ptr noundef nonnull @.str.9, i32 noundef %call.i, i32 noundef %div) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_timestamp_marker_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read_done = getelementptr inbounds %struct.dbgfs_timestamp_marker_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_done, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %read_done to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %read_done, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %rbuf = getelementptr inbounds %struct.dbgfs_timestamp_marker_data, ptr %1, i32 0, i32 3
  %delay.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %6, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay.i, align 4
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %8) #8
  %div.i = udiv i32 %call.i, 1000
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %rbuf, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %div.i) #8
  %rlen = getelementptr inbounds %struct.dbgfs_timestamp_marker_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call1.i, ptr %rlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rlen2 = getelementptr inbounds %struct.dbgfs_timestamp_marker_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %rlen2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rlen2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rbuf6 = getelementptr inbounds %struct.dbgfs_timestamp_marker_data, ptr %1, i32 0, i32 3
  %call9 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %rbuf6, i32 noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end5 ], [ %11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_timestamp_marker_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %delay.i = alloca i32, align 4
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #8
  %4 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #11, !srcloc !68
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !69

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #8
  %7 = call i32 @llvm.read_register.i32(metadata !56) #8
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !70
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !69

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay.i) #8
  %11 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %delay.i, align 4, !annotation !66
  %call.i.i9 = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull %delay.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.i = icmp slt i32 %call.i.i9, 0
  br i1 %cmp.i, label %if.end.iwl_dbgfs_timestamp_marker_write.exit_crit_edge, label %if.end.i

if.end.iwl_dbgfs_timestamp_marker_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbgfs_timestamp_marker_write.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay.i, align 4
  %dev.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef %13) #8
  %timestamp.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 13
  %delay.i.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %delay.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %delay.i.i.i, align 4
  %call.i.i.i10 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timestamp.i.i.i) #8
  %mul.i.i = mul i32 %13, 1000
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %mul.i.i) #8
  %17 = ptrtoint ptr %delay.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2.i.i.i, ptr %delay.i.i.i, align 4
  %call7.i.i = call i32 @round_jiffies_relative(i32 noundef %call2.i.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %timestamp.i.i.i, i32 noundef %call7.i.i) #8
  br label %iwl_dbgfs_timestamp_marker_write.exit

iwl_dbgfs_timestamp_marker_write.exit:            ; preds = %if.end.i, %if.end.iwl_dbgfs_timestamp_marker_write.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.end.i ], [ %call.i.i9, %if.end.iwl_dbgfs_timestamp_marker_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i) #8
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_timestamp_marker_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_timestamp_marker_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_timestamp_marker_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_done = getelementptr inbounds %struct.dbgfs_timestamp_marker_data, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %read_done to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %read_done, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_fw_info_open(ptr nocapture noundef readonly %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__seq_open_private(ptr noundef %filp, ptr noundef nonnull @iwl_dbgfs_info_seq_ops, i32 noundef 4) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @iwl_dbgfs_fw_info_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fw1 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw1, align 4
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %n_cmd_versions = getelementptr inbounds %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 10
  %8 = ptrtoint ptr %n_cmd_versions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_cmd_versions, align 4
  %conv = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp.not = icmp slt i64 %7, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos, align 8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_dbgfs_fw_info_seq_stop(ptr nocapture noundef readnone %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %v) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @iwl_dbgfs_fw_info_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef writeonly %pos) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fw1 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw1, align 4
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %v, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %v, align 8
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %inc, ptr %pos, align 8
  %n_cmd_versions = getelementptr inbounds %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 10
  %9 = ptrtoint ptr %n_cmd_versions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_cmd_versions, align 4
  %conv = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %conv)
  %cmp.not = icmp slt i64 %inc, %conv
  %v. = select i1 %cmp.not, ptr %v, ptr null
  ret ptr %v.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_fw_info_seq_show(ptr noundef %seq, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fw1 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw1, align 4
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.14) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmd_versions = getelementptr inbounds %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 9
  %8 = ptrtoint ptr %cmd_versions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd_versions, align 4
  %10 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %v, align 8
  %idxprom = trunc i64 %11 to i32
  %arrayidx = getelementptr %struct.iwl_fw_cmd_version, ptr %9, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %group = getelementptr %struct.iwl_fw_cmd_version, ptr %9, i32 %idxprom, i32 1
  %14 = ptrtoint ptr %group to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %group, align 1
  %conv.i = zext i8 %13 to i32
  %conv1.i = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %add.i = or i32 %shl.i, %conv.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, i32 noundef %add.i) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %call4 = tail call ptr @iwl_get_cmd_string(ptr noundef %19, i32 noundef %add.i) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.16, ptr noundef %call4) #8
  %cmd_ver = getelementptr %struct.iwl_fw_cmd_version, ptr %9, i32 %idxprom, i32 2
  %20 = ptrtoint ptr %cmd_ver to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmd_ver, align 1
  %conv = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, i32 noundef %conv) #8
  %notif_ver = getelementptr %struct.iwl_fw_cmd_version, ptr %9, i32 %idxprom, i32 3
  %22 = ptrtoint ptr %notif_ver to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %notif_ver, align 1
  %conv5 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.18, i32 noundef %conv5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_cmd_string(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_send_hcmd_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %hcmd.i = alloca %struct.iwl_host_cmd, align 4
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #8
  %4 = call ptr @memset(ptr %buf, i32 0, i32 512)
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 511)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #11, !srcloc !68
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !69

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #8
  %7 = call i32 @llvm.read_register.i32(metadata !56) #8
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !70
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !69

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %sub.i = add nsw i32 %5, -1
  %div81.i = lshr i32 %sub.i, 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i) #8
  %11 = call ptr @memset(ptr %hcmd.i, i32 0, i32 36)
  %ops.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %fw_running.i = getelementptr inbounds %struct.iwl_fw_runtime_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %fw_running.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw_running.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %ops_ctx.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %ops_ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops_ctx.i, align 8
  %call.i = call zeroext i1 %15(ptr noundef %17) #8
  br i1 %call.i, label %land.lhs.true3.i.if.end.i_crit_edge, label %land.lhs.true3.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge

land.lhs.true3.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbgfs_send_hcmd_write.exit

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true3.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %5)
  %cmp.i = icmp ult i32 %5, 21
  br i1 %cmp.i, label %if.end.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge, label %if.end8.i.i

if.end.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbgfs_send_hcmd_write.exit

if.end8.i.i:                                      ; preds = %if.end.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %div81.i, i32 noundef 3264) #13
  %tobool10.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i, label %if.end8.i.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge, label %if.end12.i

if.end8.i.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbgfs_send_hcmd_write.exit

if.end12.i:                                       ; preds = %if.end8.i.i
  %call13.i = call i32 @hex2bin(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %buf, i32 noundef %div81.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.out.thread.i_crit_edge

if.end12.i.out.thread.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.i

if.end16.i:                                       ; preds = %if.end12.i
  %18 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call9.i.i, align 128
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 5
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %id.i, align 4
  %flags.i = getelementptr inbounds %struct.hcmd_write_data, ptr %call9.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %flags17.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 4
  %23 = ptrtoint ptr %flags17.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %flags17.i, align 4
  %length.i = getelementptr inbounds %struct.hcmd_write_data, ptr %call9.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %length.i, align 8
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %len.i, align 4
  %data18.i = getelementptr inbounds %struct.hcmd_write_data, ptr %call9.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %hcmd.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %data18.i, ptr %hcmd.i, align 4
  %conv.i = zext i16 %25 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add24.i = add nuw nsw i32 %mul.i, 21
  call void @__sanitizer_cov_trace_cmp4(i32 %add24.i, i32 %5)
  %cmp25.not.i = icmp eq i32 %add24.i, %5
  br i1 %cmp25.not.i, label %if.end31.i, label %do.end.i

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %29, i32 noundef 0, ptr noundef nonnull @.str.19) #8
  br label %out.thread.i

if.end31.i:                                       ; preds = %if.end16.i
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %tobool33.not.i = icmp eq ptr %31, null
  br i1 %tobool33.not.i, label %if.end31.i.out.thread.i_crit_edge, label %land.lhs.true34.i

if.end31.i.out.thread.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.i

land.lhs.true34.i:                                ; preds = %if.end31.i
  %send_hcmd.i = getelementptr inbounds %struct.iwl_fw_runtime_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %send_hcmd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %send_hcmd.i, align 4
  %tobool36.not.i = icmp eq ptr %33, null
  br i1 %tobool36.not.i, label %land.lhs.true34.i.out.thread.i_crit_edge, label %if.end42.i

land.lhs.true34.i.out.thread.i_crit_edge:         ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.i

if.end42.i:                                       ; preds = %land.lhs.true34.i
  %ops_ctx40.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %ops_ctx40.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops_ctx40.i, align 8
  %call41.i = call i32 %33(ptr noundef %35, ptr noundef nonnull %hcmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp43.i = icmp slt i32 %call41.i, 0
  br i1 %cmp43.i, label %if.end42.i.out.thread.i_crit_edge, label %if.end46.i

if.end42.i.out.thread.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.i

if.end46.i:                                       ; preds = %if.end42.i
  %36 = ptrtoint ptr %flags17.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags17.i, align 4
  %and.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool48.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.out.i_crit_edge, label %if.then49.i

if.end46.i.out.i_crit_edge:                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %_rx_page_addr.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 2
  %38 = ptrtoint ptr %_rx_page_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %_rx_page_addr.i.i, align 4
  %_rx_page_order.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 3
  %40 = ptrtoint ptr %_rx_page_order.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %_rx_page_order.i.i, align 4
  call void @free_pages(i32 noundef %39, i32 noundef %41) #8
  br label %out.i

out.thread.i:                                     ; preds = %if.end42.i.out.thread.i_crit_edge, %land.lhs.true34.i.out.thread.i_crit_edge, %if.end31.i.out.thread.i_crit_edge, %do.end.i, %if.end12.i.out.thread.i_crit_edge
  %ret.1.ph.i = phi i32 [ %call41.i, %if.end42.i.out.thread.i_crit_edge ], [ -22, %do.end.i ], [ %call13.i, %if.end12.i.out.thread.i_crit_edge ], [ -1, %land.lhs.true34.i.out.thread.i_crit_edge ], [ -1, %if.end31.i.out.thread.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %iwl_dbgfs_send_hcmd_write.exit

out.i:                                            ; preds = %if.then49.i, %if.end46.i.out.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool51.not.i = icmp eq i32 %call41.i, 0
  %spec.select.i = select i1 %tobool51.not.i, i32 %5, i32 %call41.i
  br label %iwl_dbgfs_send_hcmd_write.exit

iwl_dbgfs_send_hcmd_write.exit:                   ; preds = %out.i, %out.thread.i, %if.end8.i.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge, %if.end.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge, %land.lhs.true3.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %land.lhs.true3.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge ], [ -12, %if.end8.i.i.iwl_dbgfs_send_hcmd_write.exit_crit_edge ], [ %ret.1.ph.i, %out.thread.i ], [ %spec.select.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i) #8
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_send_hcmd_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_send_hcmd_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_send_hcmd_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 524) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_done = getelementptr inbounds %struct.dbgfs_send_hcmd_data, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %read_done to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %read_done, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_enabled_severities_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %event_cfg.i = alloca %struct.iwl_dbg_host_event_cfg_cmd, align 4
  %hcmd.i = alloca %struct.iwl_host_cmd, align 4
  %enabled_severities.i = alloca i32, align 4
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #8
  %4 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #11, !srcloc !68
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !69

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #8
  %7 = call i32 @llvm.read_register.i32(metadata !56) #8
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !70
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !69

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event_cfg.i) #8
  %11 = ptrtoint ptr %event_cfg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %event_cfg.i, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i) #8
  %12 = getelementptr inbounds i8, ptr %hcmd.i, i32 32
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65535, ptr %12, align 4, !annotation !66
  %14 = ptrtoint ptr %hcmd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %event_cfg.i, ptr %hcmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %hcmd.i, i32 1
  %flags.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 4
  %15 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 16)
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags.i, align 4
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 5
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3843, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 4, ptr %len.i, align 4
  %arrayinit.start3.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayinit.start3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %arrayinit.start3.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled_severities.i) #8
  %20 = ptrtoint ptr %enabled_severities.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %enabled_severities.i, align 4, !annotation !66
  %call.i.i9 = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull %enabled_severities.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.i = icmp slt i32 %call.i.i9, 0
  br i1 %cmp.i, label %if.end.iwl_dbgfs_enabled_severities_write.exit_crit_edge, label %if.end.i

if.end.iwl_dbgfs_enabled_severities_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_dbgfs_enabled_severities_write.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %enabled_severities.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enabled_severities.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = ptrtoint ptr %event_cfg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %event_cfg.i, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %call12.i = call i32 @iwl_trans_send_cmd(ptr noundef %26, ptr noundef nonnull %hcmd.i) #8
  %dev.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  %29 = ptrtoint ptr %enabled_severities.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %enabled_severities.i, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %28, ptr noundef nonnull @.str.20, i32 noundef %30, i32 noundef %call12.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %5, i32 %call12.i
  br label %iwl_dbgfs_enabled_severities_write.exit

iwl_dbgfs_enabled_severities_write.exit:          ; preds = %if.end.i, %if.end.iwl_dbgfs_enabled_severities_write.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end.i ], [ %call.i.i9, %if.end.iwl_dbgfs_enabled_severities_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled_severities.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event_cfg.i) #8
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_enabled_severities_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_enabled_severities_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_enabled_severities_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_done = getelementptr inbounds %struct.dbgfs_enabled_severities_data, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %read_done to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %read_done, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_fw_dbg_domain_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read_done = getelementptr inbounds %struct.dbgfs_fw_dbg_domain_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_done, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %read_done to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %read_done, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %rbuf = getelementptr inbounds %struct.dbgfs_fw_dbg_domain_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %domains_bitmap.i = getelementptr inbounds %struct.iwl_trans, ptr %8, i32 0, i32 32, i32 22
  %9 = ptrtoint ptr %domains_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %domains_bitmap.i, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %rbuf, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %10) #8
  %rlen = getelementptr inbounds %struct.dbgfs_fw_dbg_domain_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %rlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rlen2 = getelementptr inbounds %struct.dbgfs_fw_dbg_domain_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %rlen2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rlen2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rbuf6 = getelementptr inbounds %struct.dbgfs_fw_dbg_domain_data, ptr %1, i32 0, i32 3
  %call9 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %rbuf6, i32 noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end5 ], [ %13, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_fw_dbg_domain_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_done = getelementptr inbounds %struct.dbgfs_fw_dbg_domain_data, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %read_done to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %read_done, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 195, i32 2}
!2 = !{ptr @iwl_fwrt_dbgfs_register.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 403, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @iwl_fwrt_dbgfs_register.__key.2, !3, !"__key", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 404, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 405, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 406, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 407, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 408, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 188, i32 3}
!19 = !{ptr @iwl_dbgfs_timestamp_marker_ops, !20, !"iwl_dbgfs_timestamp_marker_ops", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 230, i32 1}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 227, i32 30}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!25 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!30 = !{ptr @iwl_dbgfs_fw_info_ops, !31, !"iwl_dbgfs_fw_info_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 392, i32 37}
!32 = !{ptr @iwl_dbgfs_info_seq_ops, !33, !"iwl_dbgfs_info_seq_ops", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 371, i32 36}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 357, i32 17}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 363, i32 18}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 364, i32 18}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 366, i32 18}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 367, i32 18}
!44 = !{ptr @iwl_dbgfs_send_hcmd_ops, !45, !"iwl_dbgfs_send_hcmd_ops", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 293, i32 1}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 272, i32 3}
!48 = !{ptr @iwl_dbgfs_enabled_severities_ops, !49, !"iwl_dbgfs_enabled_severities_ops", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 174, i32 1}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 167, i32 2}
!52 = !{ptr @iwl_dbgfs_fw_dbg_domain_ops, !53, !"iwl_dbgfs_fw_dbg_domain_ops", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 302, i32 1}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/debugfs.c", i32 298, i32 30}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{i8 0, i8 2}
!68 = !{i64 2152918626, i64 2152918651}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 5414181}
!71 = !{i64 5414378}
!72 = !{i64 2152899611}
