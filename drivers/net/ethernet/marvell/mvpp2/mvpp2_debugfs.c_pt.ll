; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mvpp2 = type { ptr, ptr, ptr, [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], i32, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, [30 x i8], ptr, ptr, ptr, [8 x ptr], [32 x ptr], i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mvpp2_dbgfs_prs_entry = type { i32, ptr }
%struct.mvpp2_dbgfs_entries = type { [256 x %struct.mvpp2_dbgfs_prs_entry], [256 x %struct.mvpp2_dbgfs_c2_entry], [512 x %struct.mvpp2_dbgfs_flow_tbl_entry], [52 x %struct.mvpp2_dbgfs_flow_entry], [4 x %struct.mvpp2_dbgfs_port_flow_entry] }
%struct.mvpp2_dbgfs_c2_entry = type { i32, ptr }
%struct.mvpp2_dbgfs_flow_tbl_entry = type { i32, ptr }
%struct.mvpp2_dbgfs_flow_entry = type { i32, ptr }
%struct.mvpp2_dbgfs_port_flow_entry = type { ptr, ptr }
%struct.mvpp2_port = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, [9 x %struct.spinlock], [9 x %struct.spinlock], i32, i16, i16, ptr, ptr, i32, %struct.mutex, %struct.delayed_work, ptr, i32, ptr, %struct.phylink_config, %struct.phylink_pcs, %struct.phylink_pcs, ptr, ptr, ptr, i8, [9 x %struct.mvpp2_queue_vector], i32, i8, i32, [4 x ptr], i32, [8 x i32], i8, i8, i32, [2 x %struct.mvpp2_hwtstamp_queue], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.mvpp2_queue_vector = type { i32, %struct.napi_struct, i32, i32, i16, i32, i32, i32, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mvpp2_hwtstamp_queue = type { [32 x ptr], i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.165, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.166, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.167, ptr, %struct.address_space, %struct.list_head, %union.anon.168, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.165 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.166 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.167 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.168 = type { ptr }
%struct.mvpp2_prs_entry = type { i32, [6 x i32], [4 x i32] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mvpp2_prs_shadow = type { i8, i8, i32, i32, i32, i32 }
%struct.mvpp2_cls_c2_entry = type { i32, [5 x i32], i32, [5 x i32], i8 }
%struct.mvpp2_cls_flow = type { i32, i16, i16, %struct.mvpp2_prs_result_info }
%struct.mvpp2_prs_result_info = type { i32, i32 }
%struct.mvpp2_cls_flow_entry = type { i32, [3 x i32] }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mvpp2\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parser\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%03d\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_prs_sram_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_prs_sram_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"valid\00", [26 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_prs_valid_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_prs_valid_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lookup_id\00", [22 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_prs_lu_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_prs_lu_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ai\00", [29 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_prs_ai_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_prs_ai_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"header_data\00", [20 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_prs_hdata_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_prs_hdata_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hits\00", [27 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_prs_hits_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_prs_hits_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmap\00", [27 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_prs_pmap_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_prs_pmap_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*phN\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%02x %02x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%*phN %*phN\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"classifier\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"c2\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flow_table\00", [21 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_flow_c2_hits_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_flow_c2_hits_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"default_rxq\00", [20 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_flow_c2_rxq_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_flow_c2_rxq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rss_enable\00", [21 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_flow_c2_enable_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_flow_c2_enable_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_flow_flt_hits_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_flow_flt_hits_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parser_entries\00", [17 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_port_parser_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_port_parser_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mac_filter\00", [21 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_filter_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_filter_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vid_filter\00", [21 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_port_vid_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_port_vid_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%03d\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flows\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02d\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dec_hits\00", [23 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_flow_dec_hits_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_flow_dec_hits_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_flow_type_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_flow_type_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_flow_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_flow_id_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv4\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcp4\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcp6\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"udp4\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"udp6\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"other\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hash_opts\00", [22 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_port_flow_hash_opt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_port_flow_hash_opt_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"engine\00", [25 x i8] zeroinitializer }, align 32
@mvpp2_dbgfs_port_flow_engine_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvpp2_dbgfs_port_flow_engine_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 5, i64 6, i64 16, i64 17]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 706, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 572, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 533, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 543, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"mvpp2_dbgfs_prs_sram_fops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 416, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 546, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"mvpp2_dbgfs_prs_valid_fops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 445, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 549, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"mvpp2_dbgfs_prs_lu_fops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 347, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 552, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"mvpp2_dbgfs_prs_ai_fops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 383, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 555, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"mvpp2_dbgfs_prs_hdata_fops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 402, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 558, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"mvpp2_dbgfs_prs_hits_fops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 432, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 561, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant [26 x i8] c"mvpp2_dbgfs_prs_pmap_fops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 365, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 411, i32 16 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 440, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 342, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 378, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 397, i32 16 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 360, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 648, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 652, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 662, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"mvpp2_dbgfs_flow_c2_hits_fops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 203, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 607, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant [29 x i8] c"mvpp2_dbgfs_flow_c2_rxq_fops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 224, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 610, i32 22 }
@___asan_gen_.133 = private unnamed_addr constant [32 x i8] c"mvpp2_dbgfs_flow_c2_enable_fops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 241, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 198, i32 16 }
@___asan_gen_.139 = private unnamed_addr constant [31 x i8] c"mvpp2_dbgfs_flow_flt_hits_fops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 69, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 682, i32 22 }
@___asan_gen_.145 = private unnamed_addr constant [29 x i8] c"mvpp2_dbgfs_port_parser_fops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 297, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 685, i32 22 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"mvpp2_dbgfs_filter_fops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 335, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 688, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"mvpp2_dbgfs_port_vid_fops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 276, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 291, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 329, i32 17 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 512, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 478, i32 27 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 487, i32 22 }
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"mvpp2_dbgfs_flow_dec_hits_fops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 82, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 490, i32 22 }
@___asan_gen_.181 = private unnamed_addr constant [27 x i8] c"mvpp2_dbgfs_flow_type_fops\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 122, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 493, i32 22 }
@___asan_gen_.187 = private unnamed_addr constant [25 x i8] c"mvpp2_dbgfs_flow_id_fops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 138, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 96, i32 15 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 99, i32 15 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 102, i32 15 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 105, i32 15 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 108, i32 15 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 111, i32 15 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 114, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 117, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 461, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant [36 x i8] c"mvpp2_dbgfs_port_flow_hash_opt_fops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 164, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 464, i32 22 }
@___asan_gen_.223 = private unnamed_addr constant [34 x i8] c"mvpp2_dbgfs_port_flow_engine_fops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 189, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [54 x i8] c"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 159, i32 16 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mvpp2_dbgfs_prs_sram_fops, ptr @.str.4, ptr @mvpp2_dbgfs_prs_valid_fops, ptr @.str.5, ptr @mvpp2_dbgfs_prs_lu_fops, ptr @.str.6, ptr @mvpp2_dbgfs_prs_ai_fops, ptr @.str.7, ptr @mvpp2_dbgfs_prs_hdata_fops, ptr @.str.8, ptr @mvpp2_dbgfs_prs_hits_fops, ptr @.str.9, ptr @mvpp2_dbgfs_prs_pmap_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mvpp2_dbgfs_flow_c2_hits_fops, ptr @.str.19, ptr @mvpp2_dbgfs_flow_c2_rxq_fops, ptr @.str.20, ptr @mvpp2_dbgfs_flow_c2_enable_fops, ptr @.str.21, ptr @mvpp2_dbgfs_flow_flt_hits_fops, ptr @.str.22, ptr @mvpp2_dbgfs_port_parser_fops, ptr @.str.23, ptr @mvpp2_dbgfs_filter_fops, ptr @.str.24, ptr @mvpp2_dbgfs_port_vid_fops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mvpp2_dbgfs_flow_dec_hits_fops, ptr @.str.30, ptr @mvpp2_dbgfs_flow_type_fops, ptr @.str.31, ptr @mvpp2_dbgfs_flow_id_fops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @mvpp2_dbgfs_port_flow_hash_opt_fops, ptr @.str.41, ptr @mvpp2_dbgfs_port_flow_engine_fops, ptr @.str.42], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_prs_sram_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_prs_valid_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_prs_lu_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_prs_ai_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_prs_hdata_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_prs_hits_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_prs_pmap_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_flow_c2_hits_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_flow_c2_rxq_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_flow_c2_enable_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_flow_flt_hits_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_port_parser_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_filter_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_port_vid_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_flow_dec_hits_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_flow_type_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_flow_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_port_flow_hash_opt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp2_dbgfs_port_flow_engine_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_dbgfs_cleanup(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dbgfs_dir = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 26
  %0 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbgfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #5
  %dbgfs_entries = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 27
  %2 = ptrtoint ptr %dbgfs_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_entries, align 4
  tail call void @kfree(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_dbgfs_init(ptr noundef %priv, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %flow_entry_name.i.i = alloca [10 x i8], align 1
  %flow_tbl_entry_name.i.i = alloca [10 x i8], align 1
  %c2_entry_name.i.i = alloca [10 x i8], align 1
  %prs_entry_name.i.i = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mvpp2_root.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef %name, ptr noundef %mvpp2_root.0) #5
  %dbgfs_dir = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 26
  %0 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %dbgfs_dir, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8640, i32 noundef 3520, i32 noundef 2) #8
  %dbgfs_entries = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 27
  %1 = ptrtoint ptr %dbgfs_entries to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i.i.i, ptr %dbgfs_entries, align 4
  %tobool5.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool5.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end7:                                          ; preds = %if.end
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %call2) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7
  %i.01.i = phi i32 [ 0, %if.end7 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %prs_entry_name.i.i) #5
  %2 = call ptr @memset(ptr %prs_entry_name.i.i, i32 255, i32 10)
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %prs_entry_name.i.i, ptr noundef nonnull @.str.2, i32 noundef %i.01.i) #5
  %call3.i.i = call ptr @debugfs_create_dir(ptr noundef nonnull %prs_entry_name.i.i, ptr noundef %call.i) #5
  %3 = ptrtoint ptr %dbgfs_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbgfs_entries, align 4
  %arrayidx.i.i = getelementptr [256 x %struct.mvpp2_dbgfs_prs_entry], ptr %4, i32 0, i32 %i.01.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.01.i, ptr %arrayidx.i.i, align 4
  %priv5.i.i = getelementptr [256 x %struct.mvpp2_dbgfs_prs_entry], ptr %4, i32 0, i32 %i.01.i, i32 1
  %6 = ptrtoint ptr %priv5.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv, ptr %priv5.i.i, align 4
  %call6.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %call3.i.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mvpp2_dbgfs_prs_sram_fops) #5
  %call7.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %call3.i.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mvpp2_dbgfs_prs_valid_fops) #5
  %call8.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %call3.i.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mvpp2_dbgfs_prs_lu_fops) #5
  %call9.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %call3.i.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mvpp2_dbgfs_prs_ai_fops) #5
  %call10.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 420, ptr noundef %call3.i.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mvpp2_dbgfs_prs_hdata_fops) #5
  %call11.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %call3.i.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mvpp2_dbgfs_prs_hits_fops) #5
  %call12.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %call3.i.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mvpp2_dbgfs_prs_pmap_fops) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %prs_entry_name.i.i) #5
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %mvpp2_dbgfs_prs_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mvpp2_dbgfs_prs_init.exit:                        ; preds = %for.body.i
  %call.i45 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.16, ptr noundef %call2) #5
  %tobool.not.i = icmp eq ptr %call.i45, null
  br i1 %tobool.not.i, label %mvpp2_dbgfs_prs_init.exit.err_crit_edge, label %if.end.i

mvpp2_dbgfs_prs_init.exit.err_crit_edge:          ; preds = %mvpp2_dbgfs_prs_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.i:                                         ; preds = %mvpp2_dbgfs_prs_init.exit
  %call1.i = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i45) #5
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.err_crit_edge, label %if.end.i.for.body.i49_crit_edge

if.end.i.for.body.i49_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i49

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.body.i49:                                     ; preds = %for.inc.i.for.body.i49_crit_edge, %if.end.i.for.body.i49_crit_edge
  %i.053.i = phi i32 [ %inc.i54, %for.inc.i.for.body.i49_crit_edge ], [ 0, %if.end.i.for.body.i49_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %c2_entry_name.i.i) #5
  %7 = call ptr @memset(ptr %c2_entry_name.i.i, i32 255, i32 10)
  %call.i.i47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %c2_entry_name.i.i, ptr noundef nonnull @.str.2, i32 noundef %i.053.i) #5
  %call3.i.i48 = call ptr @debugfs_create_dir(ptr noundef nonnull %c2_entry_name.i.i, ptr noundef nonnull %call1.i) #5
  %tobool.not.i.i = icmp eq ptr %call3.i.i48, null
  br i1 %tobool.not.i.i, label %mvpp2_dbgfs_c2_entry_init.exit.i, label %for.inc.i

mvpp2_dbgfs_c2_entry_init.exit.i:                 ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %c2_entry_name.i.i) #5
  br label %err

for.inc.i:                                        ; preds = %for.body.i49
  %8 = ptrtoint ptr %dbgfs_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbgfs_entries, align 4
  %arrayidx.i.i50 = getelementptr %struct.mvpp2_dbgfs_entries, ptr %9, i32 0, i32 1, i32 %i.053.i
  %10 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.053.i, ptr %arrayidx.i.i50, align 4
  %priv7.i.i = getelementptr %struct.mvpp2_dbgfs_entries, ptr %9, i32 0, i32 1, i32 %i.053.i, i32 1
  %11 = ptrtoint ptr %priv7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %priv, ptr %priv7.i.i, align 4
  %call8.i.i51 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef nonnull %call3.i.i48, ptr noundef %arrayidx.i.i50, ptr noundef nonnull @mvpp2_dbgfs_flow_c2_hits_fops) #5
  %call9.i.i52 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 292, ptr noundef nonnull %call3.i.i48, ptr noundef %arrayidx.i.i50, ptr noundef nonnull @mvpp2_dbgfs_flow_c2_rxq_fops) #5
  %call10.i.i53 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 292, ptr noundef nonnull %call3.i.i48, ptr noundef %arrayidx.i.i50, ptr noundef nonnull @mvpp2_dbgfs_flow_c2_enable_fops) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %c2_entry_name.i.i) #5
  %inc.i54 = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i55 = icmp eq i32 %inc.i54, 256
  br i1 %exitcond.not.i55, label %for.end.i, label %for.inc.i.for.body.i49_crit_edge

for.inc.i.for.body.i49_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i49

for.end.i:                                        ; preds = %for.inc.i
  %call9.i = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i45) #5
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %for.end.i.err_crit_edge, label %for.end.i.for.body15.i_crit_edge

for.end.i.for.body15.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body15.i

for.end.i.err_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.body15.i:                                     ; preds = %for.inc20.i.for.body15.i_crit_edge, %for.end.i.for.body15.i_crit_edge
  %i.154.i = phi i32 [ %inc21.i, %for.inc20.i.for.body15.i_crit_edge ], [ 0, %for.end.i.for.body15.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %flow_tbl_entry_name.i.i) #5
  %12 = call ptr @memset(ptr %flow_tbl_entry_name.i.i, i32 255, i32 10)
  %call.i40.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %flow_tbl_entry_name.i.i, ptr noundef nonnull @.str.2, i32 noundef %i.154.i) #5
  %call3.i41.i = call ptr @debugfs_create_dir(ptr noundef nonnull %flow_tbl_entry_name.i.i, ptr noundef nonnull %call9.i) #5
  %tobool.not.i42.i = icmp eq ptr %call3.i41.i, null
  br i1 %tobool.not.i42.i, label %mvpp2_dbgfs_flow_tbl_entry_init.exit.i, label %for.inc20.i

mvpp2_dbgfs_flow_tbl_entry_init.exit.i:           ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %flow_tbl_entry_name.i.i) #5
  br label %err

for.inc20.i:                                      ; preds = %for.body15.i
  %13 = ptrtoint ptr %dbgfs_entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dbgfs_entries, align 4
  %arrayidx.i44.i = getelementptr %struct.mvpp2_dbgfs_entries, ptr %14, i32 0, i32 2, i32 %i.154.i
  %15 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.154.i, ptr %arrayidx.i44.i, align 4
  %priv7.i45.i = getelementptr %struct.mvpp2_dbgfs_entries, ptr %14, i32 0, i32 2, i32 %i.154.i, i32 1
  %16 = ptrtoint ptr %priv7.i45.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %priv7.i45.i, align 4
  %call8.i46.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef nonnull %call3.i41.i, ptr noundef %arrayidx.i44.i, ptr noundef nonnull @mvpp2_dbgfs_flow_flt_hits_fops) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %flow_tbl_entry_name.i.i) #5
  %inc21.i = add nuw nsw i32 %i.154.i, 1
  %exitcond55.not.i = icmp eq i32 %inc21.i, 512
  br i1 %exitcond55.not.i, label %for.cond.preheader, label %for.inc20.i.for.body15.i_crit_edge

for.inc20.i.for.body15.i_crit_edge:               ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15.i

for.cond.preheader:                               ; preds = %for.inc20.i
  %port_count = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 10
  %17 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp73 = icmp sgt i32 %18, 0
  br i1 %cmp73, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mvpp2, ptr %priv, i32 0, i32 11, i32 %i.074
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %dev.i = getelementptr inbounds %struct.mvpp2_port, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %call.i56 = call ptr @debugfs_create_dir(ptr noundef %22, ptr noundef %call2) #5
  %call1.i57 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 292, ptr noundef %call.i56, ptr noundef %20, ptr noundef nonnull @mvpp2_dbgfs_port_parser_fops) #5
  %call2.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 292, ptr noundef %call.i56, ptr noundef %20, ptr noundef nonnull @mvpp2_dbgfs_filter_fops) #5
  %call3.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 292, ptr noundef %call.i56, ptr noundef %20, ptr noundef nonnull @mvpp2_dbgfs_port_vid_fops) #5
  %inc = add nuw nsw i32 %i.074, 1
  %23 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_count, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i58 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.27, ptr noundef %call2) #5
  br label %for.body.i68

for.body.i68:                                     ; preds = %mvpp2_dbgfs_flow_entry_init.exit.i.for.body.i68_crit_edge, %for.end
  %i.01.i60 = phi i32 [ 0, %for.end ], [ %inc.i69, %mvpp2_dbgfs_flow_entry_init.exit.i.for.body.i68_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %flow_entry_name.i.i) #5
  %25 = call ptr @memset(ptr %flow_entry_name.i.i, i32 255, i32 10)
  %call.i.i61 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %flow_entry_name.i.i, ptr noundef nonnull @.str.28, i32 noundef %i.01.i60) #5
  %call3.i.i62 = call ptr @debugfs_create_dir(ptr noundef nonnull %flow_entry_name.i.i, ptr noundef %call.i58) #5
  %26 = ptrtoint ptr %dbgfs_entries to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dbgfs_entries, align 4
  %arrayidx.i.i63 = getelementptr %struct.mvpp2_dbgfs_entries, ptr %27, i32 0, i32 3, i32 %i.01.i60
  %28 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.01.i60, ptr %arrayidx.i.i63, align 4
  %priv5.i.i64 = getelementptr %struct.mvpp2_dbgfs_entries, ptr %27, i32 0, i32 3, i32 %i.01.i60, i32 1
  %29 = ptrtoint ptr %priv5.i.i64 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %priv, ptr %priv5.i.i64, align 4
  %call6.i.i65 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 292, ptr noundef %call3.i.i62, ptr noundef %arrayidx.i.i63, ptr noundef nonnull @mvpp2_dbgfs_flow_dec_hits_fops) #5
  %call7.i.i66 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef %call3.i.i62, ptr noundef %arrayidx.i.i63, ptr noundef nonnull @mvpp2_dbgfs_flow_type_fops) #5
  %call8.i.i67 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %call3.i.i62, ptr noundef %arrayidx.i.i63, ptr noundef nonnull @mvpp2_dbgfs_flow_id_fops) #5
  %30 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1.i.i = icmp sgt i32 %31, 0
  br i1 %cmp1.i.i, label %for.body.i68.for.body.i.i_crit_edge, label %for.body.i68.mvpp2_dbgfs_flow_entry_init.exit.i_crit_edge

for.body.i68.mvpp2_dbgfs_flow_entry_init.exit.i_crit_edge: ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %mvpp2_dbgfs_flow_entry_init.exit.i

for.body.i68.for.body.i.i_crit_edge:              ; preds = %for.body.i68
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i68.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i68.for.body.i.i_crit_edge ]
  %arrayidx9.i.i = getelementptr %struct.mvpp2, ptr %priv, i32 0, i32 11, i32 %i.02.i.i
  %32 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx9.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.mvpp2_port, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i.i, align 4
  %call.i.i.i = call ptr @debugfs_create_dir(ptr noundef %35, ptr noundef %call3.i.i62) #5
  %priv.i.i.i = getelementptr inbounds %struct.mvpp2_port, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i.i.i, align 4
  %dbgfs_entries.i.i.i = getelementptr inbounds %struct.mvpp2, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %dbgfs_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dbgfs_entries.i.i.i, align 4
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %33, align 8
  %idxprom.i.i.i = zext i8 %41 to i32
  %arrayidx.i.i.i = getelementptr %struct.mvpp2_dbgfs_entries, ptr %39, i32 0, i32 4, i32 %idxprom.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %33, ptr %arrayidx.i.i.i, align 4
  %dbg_fe.i.i.i = getelementptr %struct.mvpp2_dbgfs_entries, ptr %39, i32 0, i32 4, i32 %idxprom.i.i.i, i32 1
  %43 = ptrtoint ptr %dbg_fe.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx.i.i63, ptr %dbg_fe.i.i.i, align 4
  %call3.i.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 292, ptr noundef %call.i.i.i, ptr noundef %arrayidx.i.i.i, ptr noundef nonnull @mvpp2_dbgfs_port_flow_hash_opt_fops) #5
  %call4.i.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 292, ptr noundef %call.i.i.i, ptr noundef %arrayidx.i.i.i, ptr noundef nonnull @mvpp2_dbgfs_port_flow_engine_fops) #5
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %44 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port_count, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %45
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.mvpp2_dbgfs_flow_entry_init.exit.i_crit_edge

for.body.i.i.mvpp2_dbgfs_flow_entry_init.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mvpp2_dbgfs_flow_entry_init.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

mvpp2_dbgfs_flow_entry_init.exit.i:               ; preds = %for.body.i.i.mvpp2_dbgfs_flow_entry_init.exit.i_crit_edge, %for.body.i68.mvpp2_dbgfs_flow_entry_init.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %flow_entry_name.i.i) #5
  %inc.i69 = add nuw nsw i32 %i.01.i60, 1
  %exitcond.not.i70 = icmp eq i32 %inc.i69, 52
  br i1 %exitcond.not.i70, label %mvpp2_dbgfs_flow_entry_init.exit.i.cleanup_crit_edge, label %mvpp2_dbgfs_flow_entry_init.exit.i.for.body.i68_crit_edge

mvpp2_dbgfs_flow_entry_init.exit.i.for.body.i68_crit_edge: ; preds = %mvpp2_dbgfs_flow_entry_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i68

mvpp2_dbgfs_flow_entry_init.exit.i.cleanup_crit_edge: ; preds = %mvpp2_dbgfs_flow_entry_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err:                                              ; preds = %mvpp2_dbgfs_flow_tbl_entry_init.exit.i, %for.end.i.err_crit_edge, %mvpp2_dbgfs_c2_entry_init.exit.i, %if.end.i.err_crit_edge, %mvpp2_dbgfs_prs_init.exit.err_crit_edge, %if.end.err_crit_edge
  %46 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dbgfs_dir, align 4
  call void @debugfs_remove(ptr noundef %47) #5
  %48 = ptrtoint ptr %dbgfs_entries to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dbgfs_entries, align 4
  call void @kfree(ptr noundef %49) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %mvpp2_dbgfs_flow_entry_init.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_sram_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_prs_sram_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_sram_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #5
  %2 = call ptr @memset(ptr %pe, i32 255, i32 44)
  %priv = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %4, ptr noundef nonnull %pe, i32 noundef %6) #5
  %sram = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.10, i32 noundef 14, ptr noundef %sram) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvpp2_prs_init_from_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_valid_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_prs_valid_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_valid_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv2 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 4, !range !133
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %10) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_lu_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_prs_lu_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_lu_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv2 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prs_shadow, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %lu = getelementptr %struct.mvpp2_prs_shadow, ptr %5, i32 %7, i32 2
  %8 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lu, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_ai_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_prs_ai_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_ai_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #5
  %2 = call ptr @memset(ptr %pe, i32 255, i32 44)
  %priv = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %4, ptr noundef nonnull %pe, i32 noundef %6) #5
  %arrayidx = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %8, 16
  %conv6 = and i32 %8, 255
  %conv7 = and i32 %shr, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, i32 noundef %conv6, i32 noundef %conv7) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_hdata_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_prs_hdata_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_hdata_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  %data = alloca [8 x i8], align 8
  %mask = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #5
  %2 = call ptr @memset(ptr %pe, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #5
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %7 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %8 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %9 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask) #5
  %11 = getelementptr inbounds [8 x i8], ptr %mask, i32 0, i32 1
  %12 = getelementptr inbounds [8 x i8], ptr %mask, i32 0, i32 2
  %13 = getelementptr inbounds [8 x i8], ptr %mask, i32 0, i32 3
  %14 = getelementptr inbounds [8 x i8], ptr %mask, i32 0, i32 4
  %15 = getelementptr inbounds [8 x i8], ptr %mask, i32 0, i32 5
  %16 = getelementptr inbounds [8 x i8], ptr %mask, i32 0, i32 6
  %17 = getelementptr inbounds [8 x i8], ptr %mask, i32 0, i32 7
  %priv = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %mask, align 8
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %20, ptr noundef nonnull %pe, i32 noundef %22) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 0, ptr noundef nonnull %data, ptr noundef nonnull %mask) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 1, ptr noundef %3, ptr noundef %11) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 2, ptr noundef %4, ptr noundef %12) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 3, ptr noundef %5, ptr noundef %13) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 4, ptr noundef %6, ptr noundef %14) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 5, ptr noundef %7, ptr noundef %15) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 6, ptr noundef %8, ptr noundef %16) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 7, ptr noundef %9, ptr noundef %17) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef 8, ptr noundef nonnull %data, i32 noundef 8, ptr noundef nonnull %mask) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvpp2_prs_tcam_data_byte_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_hits_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_prs_hits_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_hits_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call = tail call i32 @mvpp2_prs_hits(ptr noundef %3, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvpp2_prs_hits(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_pmap_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_prs_pmap_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_prs_pmap_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #5
  %2 = call ptr @memset(ptr %pe, i32 255, i32 44)
  %priv = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %4, ptr noundef nonnull %pe, i32 noundef %6) #5
  %call2 = call i32 @mvpp2_prs_tcam_port_map_get(ptr noundef nonnull %pe) #5
  %and = and i32 %call2, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %and) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvpp2_prs_tcam_port_map_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_c2_hits_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_flow_c2_hits_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_c2_hits_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv = getelementptr inbounds %struct.mvpp2_dbgfs_c2_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call = tail call i32 @mvpp2_cls_c2_hit_count(ptr noundef %3, i32 noundef %5) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, i32 noundef %call) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvpp2_cls_c2_hit_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_c2_rxq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_flow_c2_rxq_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_c2_rxq_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %c2 = alloca %struct.mvpp2_cls_c2_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %c2) #5
  %2 = call ptr @memset(ptr %c2, i32 255, i32 52)
  %priv = getelementptr inbounds %struct.mvpp2_dbgfs_c2_entry, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @mvpp2_cls_c2_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %c2) #5
  %attr = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 3
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attr, align 4
  %shr4 = lshr i32 %8, 21
  %or = and i32 %shr4, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %or) #5
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %c2) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvpp2_cls_c2_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_c2_enable_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_flow_c2_enable_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_c2_enable_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %c2 = alloca %struct.mvpp2_cls_c2_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %c2) #5
  %2 = call ptr @memset(ptr %c2, i32 255, i32 52)
  %priv = getelementptr inbounds %struct.mvpp2_dbgfs_c2_entry, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @mvpp2_cls_c2_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %c2) #5
  %arrayidx = getelementptr inbounds %struct.mvpp2_cls_c2_entry, ptr %c2, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %and = lshr i32 %8, 30
  %and.lobit = and i32 %and, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %and.lobit) #5
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %c2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_flt_hits_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_flow_flt_hits_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_flt_hits_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv = getelementptr inbounds %struct.mvpp2_dbgfs_flow_tbl_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call = tail call i32 @mvpp2_cls_flow_hits(ptr noundef %3, i32 noundef %5) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, i32 noundef %call) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvpp2_cls_flow_hits(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_port_parser_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_port_parser_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_port_parser_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  %pmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #5
  %4 = call ptr @memset(ptr %pe, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmap)
  %5 = ptrtoint ptr %pmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pmap, align 4
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %3, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 4
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %7, ptr noundef nonnull %pe, i32 noundef %i.013) #5
  %call3 = call i32 @mvpp2_prs_tcam_port_map_get(ptr noundef nonnull %pe) #5
  %8 = ptrtoint ptr %pmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3, ptr %pmap, align 4
  %9 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %10, i32 %i.013
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 8
  %15 = ptrtoint ptr %pmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %pmap.0. = load volatile i32, ptr %pmap, align 4
  %16 = and i8 %14, 31
  %and.i = zext i8 %16 to i32
  %17 = shl nuw i32 1, %and.i
  %18 = and i32 %17, %pmap.0.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not = icmp eq i32 %18, 0
  br i1 %tobool5.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef %i.013) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmap)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_filter_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_filter_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_filter_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  %pmap = alloca i32, align 4
  %da = alloca [6 x i8], align 1
  %da_mask = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #5
  %4 = call ptr @memset(ptr %pe, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmap)
  %5 = ptrtoint ptr %pmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pmap, align 4
  %6 = getelementptr inbounds [6 x i8], ptr %da, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %da, i32 0, i32 2
  %8 = getelementptr inbounds [6 x i8], ptr %da, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %da, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %da, i32 0, i32 5
  %11 = getelementptr inbounds [6 x i8], ptr %da_mask, i32 0, i32 1
  %12 = getelementptr inbounds [6 x i8], ptr %da_mask, i32 0, i32 2
  %13 = getelementptr inbounds [6 x i8], ptr %da_mask, i32 0, i32 3
  %14 = getelementptr inbounds [6 x i8], ptr %da_mask, i32 0, i32 4
  %15 = getelementptr inbounds [6 x i8], ptr %da_mask, i32 0, i32 5
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %3, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %tid.045 = phi i32 [ 112, %entry ], [ %inc22, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %da) #5
  %16 = call ptr @memset(ptr %da, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %da_mask) #5
  %17 = call ptr @memset(ptr %da_mask, i32 255, i32 6)
  %18 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %19, i32 %tid.045
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %lu = getelementptr %struct.mvpp2_prs_shadow, ptr %19, i32 %tid.045, i32 2
  %22 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp4.not = icmp eq i32 %23, 1
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %udf = getelementptr %struct.mvpp2_prs_shadow, ptr %19, i32 %tid.045, i32 3
  %24 = ptrtoint ptr %udf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %udf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp8.not = icmp eq i32 %25, 0
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %3, ptr noundef nonnull %pe, i32 noundef %tid.045) #5
  %call9 = call i32 @mvpp2_prs_tcam_port_map_get(ptr noundef nonnull %pe) #5
  %26 = ptrtoint ptr %pmap to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call9, ptr %pmap, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 8
  %pmap.0. = load volatile i32, ptr %pmap, align 4
  %29 = and i8 %28, 31
  %and.i = zext i8 %29 to i32
  %30 = shl nuw i32 1, %and.i
  %31 = and i32 %30, %pmap.0.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool11.not = icmp eq i32 %31, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %for.body17.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body17.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 0, ptr noundef nonnull %da, ptr noundef nonnull %da_mask) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 1, ptr noundef %6, ptr noundef %11) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 2, ptr noundef %7, ptr noundef %12) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 3, ptr noundef %8, ptr noundef %13) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 4, ptr noundef %9, ptr noundef %14) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 5, ptr noundef %10, ptr noundef %15) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26, ptr noundef nonnull %da) #5
  br label %cleanup

cleanup:                                          ; preds = %for.body17.preheader, %if.end.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %da_mask) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %da) #5
  %inc22 = add nuw nsw i32 %tid.045, 1
  %exitcond.not = icmp eq i32 %inc22, 192
  br i1 %exitcond.not, label %for.end23, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end23:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmap)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_port_vid_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_port_vid_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_port_vid_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
for.body.lr.ph:
  %byte = alloca [2 x i8], align 1
  %enable = alloca [2 x i8], align 1
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  %pmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %byte) #5
  %2 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %byte, align 1, !annotation !134
  %3 = getelementptr inbounds [2 x i8], ptr %byte, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !134
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %enable) #5
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %enable, align 1, !annotation !134
  %6 = getelementptr inbounds [2 x i8], ptr %enable, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !134
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #5
  %10 = call ptr @memset(ptr %pe, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmap)
  %11 = ptrtoint ptr %pmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %pmap, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 8
  %conv = zext i8 %13 to i32
  %mul = mul nuw nsw i32 %conv, 11
  %add = add nuw nsw i32 %mul, 192
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %9, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tid.038 = phi i32 [ %add, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %9, ptr noundef nonnull %pe, i32 noundef %tid.038) #5
  %call8 = call i32 @mvpp2_prs_tcam_port_map_get(ptr noundef nonnull %pe) #5
  %14 = ptrtoint ptr %pmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call8, ptr %pmap, align 4
  %15 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %16, i32 %tid.038
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 8
  %21 = ptrtoint ptr %pmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %pmap.0. = load volatile i32, ptr %pmap, align 4
  %22 = and i8 %20, 31
  %and.i = zext i8 %22 to i32
  %23 = shl nuw i32 1, %and.i
  %24 = and i32 %23, %pmap.0.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not = icmp eq i32 %24, 0
  br i1 %tobool12.not, label %if.end.for.inc_crit_edge, label %if.end14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 2, ptr noundef nonnull %byte, ptr noundef nonnull %enable) #5
  call void @mvpp2_prs_tcam_data_byte_get(ptr noundef nonnull %pe, i32 noundef 3, ptr noundef %3, ptr noundef %6) #5
  %25 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %byte, align 1
  %27 = and i8 %26, 15
  %and = zext i8 %27 to i32
  %shl = shl nuw nsw i32 %and, 8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 1
  %conv22 = zext i8 %29 to i32
  %add23 = or i32 %shl, %conv22
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, i32 noundef %add23) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %tid.038, 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 8
  %conv3 = zext i8 %31 to i32
  %mul4 = mul nuw nsw i32 %conv3, 11
  %add6 = add nuw nsw i32 %mul4, 201
  %cmp.not.not = icmp ult i32 %tid.038, %add6
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmap)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %enable) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %byte) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_dec_hits_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_flow_dec_hits_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_dec_hits_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv = getelementptr inbounds %struct.mvpp2_dbgfs_flow_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call = tail call i32 @mvpp2_cls_lookup_hits(ptr noundef %3, i32 noundef %5) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, i32 noundef %call) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvpp2_cls_lookup_hits(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_type_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_flow_type_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_type_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call ptr @mvpp2_cls_flow_get(i32 noundef %3) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 16, label %if.end.sw.epilog_crit_edge
    i32 17, label %sw.bb2
    i32 1, label %sw.bb3
    i32 5, label %sw.bb4
    i32 2, label %sw.bb5
    i32 6, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %if.end.sw.epilog_crit_edge
  %flow_name.0 = phi ptr [ @.str.38, %sw.default ], [ @.str.37, %sw.bb6 ], [ @.str.36, %sw.bb5 ], [ @.str.35, %sw.bb4 ], [ @.str.34, %sw.bb3 ], [ @.str.33, %sw.bb2 ], [ @.str.32, %if.end.sw.epilog_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, ptr noundef nonnull %flow_name.0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mvpp2_cls_flow_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_id_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_flow_id_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_flow_id_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call ptr @mvpp2_cls_flow_get(i32 noundef %3) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %flow_id = getelementptr inbounds %struct.mvpp2_cls_flow, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %flow_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flow_id, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %conv) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_port_flow_hash_opt_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_port_flow_hash_opt_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_port_flow_hash_opt_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %fe = alloca %struct.mvpp2_cls_flow_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fe) #5
  %dbg_fe = getelementptr inbounds %struct.mvpp2_dbgfs_port_flow_entry, ptr %1, i32 0, i32 1
  %4 = call ptr @memset(ptr %fe, i32 255, i32 16)
  %5 = ptrtoint ptr %dbg_fe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dbg_fe, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call = tail call ptr @mvpp2_cls_flow_get(i32 noundef %8) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %flow_id = getelementptr inbounds %struct.mvpp2_cls_flow, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %flow_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flow_id, align 4
  %conv = zext i16 %10 to i32
  %11 = mul nuw nsw i32 %conv, 21
  %add4 = add nsw i32 %11, -151
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 8
  %conv6 = zext i8 %15 to i32
  %add7 = add nsw i32 %add4, %conv6
  %priv = getelementptr inbounds %struct.mvpp2_port, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  call void @mvpp2_cls_flow_read(ptr noundef %17, i32 noundef %add7, ptr noundef nonnull %fe) #5
  %call8 = call zeroext i16 @mvpp2_flow_get_hek_fields(ptr noundef nonnull %fe) #5
  %conv9 = zext i16 %call8 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, i32 noundef %conv9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fe) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvpp2_cls_flow_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mvpp2_flow_get_hek_fields(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_port_flow_engine_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mvpp2_dbgfs_port_flow_engine_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp2_dbgfs_port_flow_engine_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %fe = alloca %struct.mvpp2_cls_flow_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fe) #5
  %dbg_fe = getelementptr inbounds %struct.mvpp2_dbgfs_port_flow_entry, ptr %1, i32 0, i32 1
  %4 = call ptr @memset(ptr %fe, i32 255, i32 16)
  %5 = ptrtoint ptr %dbg_fe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dbg_fe, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call = tail call ptr @mvpp2_cls_flow_get(i32 noundef %8) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %flow_id = getelementptr inbounds %struct.mvpp2_cls_flow, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %flow_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flow_id, align 4
  %conv = zext i16 %10 to i32
  %11 = mul nuw nsw i32 %conv, 21
  %add4 = add nsw i32 %11, -151
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 8
  %conv6 = zext i8 %15 to i32
  %add7 = add nsw i32 %add4, %conv6
  %priv = getelementptr inbounds %struct.mvpp2_port, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  call void @mvpp2_cls_flow_read(ptr noundef %17, i32 noundef %add7, ptr noundef nonnull %fe) #5
  %call8 = call i32 @mvpp2_cls_flow_eng_get(ptr noundef nonnull %fe) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %call8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fe) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvpp2_cls_flow_eng_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 706, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 572, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 533, i32 26}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 543, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 546, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 549, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 552, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 555, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 558, i32 22}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 561, i32 22}
!20 = !{ptr @mvpp2_dbgfs_prs_sram_fops, !21, !"mvpp2_dbgfs_prs_sram_fops", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 416, i32 1}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 411, i32 16}
!24 = !{ptr @mvpp2_dbgfs_prs_valid_fops, !25, !"mvpp2_dbgfs_prs_valid_fops", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 445, i32 1}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 440, i32 16}
!28 = !{ptr @mvpp2_dbgfs_prs_lu_fops, !29, !"mvpp2_dbgfs_prs_lu_fops", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 347, i32 1}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 342, i32 16}
!32 = !{ptr @mvpp2_dbgfs_prs_ai_fops, !33, !"mvpp2_dbgfs_prs_ai_fops", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 383, i32 1}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 378, i32 16}
!36 = !{ptr @mvpp2_dbgfs_prs_hdata_fops, !37, !"mvpp2_dbgfs_prs_hdata_fops", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 402, i32 1}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 397, i32 16}
!40 = !{ptr @mvpp2_dbgfs_prs_hits_fops, !41, !"mvpp2_dbgfs_prs_hits_fops", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 432, i32 1}
!42 = !{ptr @mvpp2_dbgfs_prs_pmap_fops, !43, !"mvpp2_dbgfs_prs_pmap_fops", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 365, i32 1}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 360, i32 16}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 648, i32 31}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 652, i32 30}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 662, i32 36}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 607, i32 22}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 610, i32 22}
!56 = !{ptr @mvpp2_dbgfs_flow_c2_hits_fops, !57, !"mvpp2_dbgfs_flow_c2_hits_fops", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 203, i32 1}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 198, i32 16}
!60 = !{ptr @mvpp2_dbgfs_flow_c2_rxq_fops, !61, !"mvpp2_dbgfs_flow_c2_rxq_fops", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 224, i32 1}
!62 = !{ptr @mvpp2_dbgfs_flow_c2_enable_fops, !63, !"mvpp2_dbgfs_flow_c2_enable_fops", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 241, i32 1}
!64 = !{ptr @mvpp2_dbgfs_flow_flt_hits_fops, !65, !"mvpp2_dbgfs_flow_flt_hits_fops", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 69, i32 1}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 682, i32 22}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 685, i32 22}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 688, i32 22}
!72 = !{ptr @mvpp2_dbgfs_port_parser_fops, !73, !"mvpp2_dbgfs_port_parser_fops", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 297, i32 1}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 291, i32 18}
!76 = !{ptr @mvpp2_dbgfs_filter_fops, !77, !"mvpp2_dbgfs_filter_fops", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 335, i32 1}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 329, i32 17}
!80 = !{ptr @mvpp2_dbgfs_port_vid_fops, !81, !"mvpp2_dbgfs_port_vid_fops", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 276, i32 1}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 512, i32 32}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 478, i32 27}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 487, i32 22}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 490, i32 22}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 493, i32 22}
!92 = !{ptr @mvpp2_dbgfs_flow_dec_hits_fops, !93, !"mvpp2_dbgfs_flow_dec_hits_fops", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 82, i32 1}
!94 = !{ptr @mvpp2_dbgfs_flow_type_fops, !95, !"mvpp2_dbgfs_flow_type_fops", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 122, i32 1}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 96, i32 15}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 99, i32 15}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 102, i32 15}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 105, i32 15}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 108, i32 15}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 111, i32 15}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 114, i32 15}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 117, i32 16}
!112 = !{ptr @mvpp2_dbgfs_flow_id_fops, !113, !"mvpp2_dbgfs_flow_id_fops", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 138, i32 1}
!114 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 461, i32 22}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 464, i32 22}
!118 = !{ptr @mvpp2_dbgfs_port_flow_hash_opt_fops, !119, !"mvpp2_dbgfs_port_flow_hash_opt_fops", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 164, i32 1}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 159, i32 16}
!122 = !{ptr @mvpp2_dbgfs_port_flow_engine_fops, !123, !"mvpp2_dbgfs_port_flow_engine_fops", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.c", i32 189, i32 1}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i8 0, i8 2}
!134 = !{!"auto-init"}
