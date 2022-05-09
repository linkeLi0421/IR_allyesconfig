; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.fm10k_intfc = type { [128 x i32], ptr, ptr, ptr, [1 x i32], [1 x i32], i32, i32, i16, i32, i16, [90 x i8], [128 x ptr], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, [128 x ptr], [256 x ptr], ptr, i32, [2 x %struct.fm10k_ring_feature], ptr, %struct.fm10k_hw_stats, %struct.fm10k_hw, %struct.spinlock, ptr, ptr, i16, i16, i16, %struct.timer_list, %struct.work_struct, i32, i32, i32, i32, i8, i8, [32 x i32], [10 x i32], i16, i16, %struct.list_head, %struct.delayed_work, %struct.spinlock, ptr, i8, i8, i16, i16, i16, [36 x i8] }
%struct.fm10k_ring_feature = type { i16, i16, i16, i16 }
%struct.fm10k_hw_stats = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, [128 x %struct.fm10k_hw_stats_q] }
%struct.fm10k_hw_stat = type { i64, i32, i32 }
%struct.fm10k_hw_stats_q = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat }
%struct.fm10k_hw = type { ptr, ptr, %struct.fm10k_mac_info, %struct.fm10k_bus_info, %struct.fm10k_bus_info, %struct.fm10k_iov_info, %struct.fm10k_mbx_info, %struct.fm10k_swapi_info, i16, i16, i16, i16, i8 }
%struct.fm10k_mac_info = type { %struct.fm10k_mac_ops, i32, [6 x i8], [6 x i8], i16, i16, i16, i8, i8, i8, i32, i8, i64 }
%struct.fm10k_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_bus_info = type { i32, i32, i32 }
%struct.fm10k_iov_info = type { %struct.fm10k_iov_ops, i16, i16, i16 }
%struct.fm10k_iov_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_info = type { %struct.fm10k_mbx_ops, ptr, %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, [640 x i32] }
%struct.fm10k_mbx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_fifo = type { ptr, i16, i16, i16 }
%struct.fm10k_swapi_info = type { i32, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info }
%struct.fm10k_swapi_table_info = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.fm10k_q_vector = type { ptr, ptr, i16, %struct.fm10k_ring_container, %struct.fm10k_ring_container, %struct.napi_struct, %struct.cpumask, [25 x i8], ptr, %struct.callback_head, [60 x i8], [0 x %struct.fm10k_ring] }
%struct.fm10k_ring_container = type { ptr, i32, i32, i16, i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.fm10k_ring = type { ptr, ptr, ptr, ptr, ptr, %union.anon.115, ptr, [1 x i32], i32, i32, i8, i8, i8, i16, i16, i16, i16, i16, %struct.fm10k_queue_stats, %struct.u64_stats_sync, %union.anon.116, [72 x i8] }
%union.anon.115 = type { ptr }
%struct.fm10k_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { %struct.fm10k_rx_queue_stats, ptr }
%struct.fm10k_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.114 = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.118, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.119, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.120, ptr, %struct.address_space, %struct.list_head, %union.anon.121, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.118 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.119 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.120 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.121 = type { ptr }
%struct.file = type { %union.anon.39, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.39 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.fm10k_tx_desc = type { i64, i16, i16, i16, i8, i8 }
%union.fm10k_rx_desc = type { %struct.anon.122 }
%struct.anon.122 = type { i64, i64, i64, i64 }
%struct.anon.123 = type { i32, i32, i32, i32, i32 }
%struct.anon.124 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"q_vector.%03d\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_ring.%03d\00", [19 x i8] zeroinitializer }, align 32
@fm10k_dbg_desc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fm10k_dbg_desc_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_ring.%03d\00", [19 x i8] zeroinitializer }, align 32
@dbg_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fm10k_driver_name = external dso_local global [0 x i8], align 1
@fm10k_dbg_tx_desc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @fm10k_dbg_desc_seq_start, ptr @fm10k_dbg_desc_seq_stop, ptr @fm10k_dbg_desc_seq_next, ptr @fm10k_dbg_tx_desc_seq_show }, [16 x i8] zeroinitializer }, align 32
@fm10k_dbg_rx_desc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @fm10k_dbg_desc_seq_start, ptr @fm10k_dbg_desc_seq_stop, ptr @fm10k_dbg_desc_seq_next, ptr @fm10k_dbg_rx_desc_seq_show }, [16 x i8] zeroinitializer }, align 32
@fm10k_dbg_tx_desc_seq_show.tx_desc_hdr = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DES BUFFER_ADDRESS     LENGTH VLAN   MSS    HDRLEN FLAGS\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%03X Descriptor ring not allocated.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%03X %#018llx %#06x %#06x %#06x %#06x %#04x\0A\00", [51 x i8] zeroinitializer }, align 32
@fm10k_dbg_rx_desc_seq_show.rx_desc_hdr = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"DES DATA       RSS        STATERR    LENGTH VLAN   DGLORT SGLORT TIMESTAMP\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%03X %#010x %#010x %#010x %#06x %#06x %#06x %#06x %#018llx\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 160, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 168, i32 32 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"fm10k_dbg_desc_fops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 134, i32 37 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 179, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"dbg_root\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 9, i32 23 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"fm10k_dbg_tx_desc_seq_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 99, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"fm10k_dbg_rx_desc_seq_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 106, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"tx_desc_hdr\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 47, i32 20 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 58, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 62, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"rx_desc_hdr\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 74, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [52 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 90, i32 7 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @fm10k_dbg_desc_fops, ptr @.str.2, ptr @dbg_root, ptr @fm10k_dbg_tx_desc_seq_ops, ptr @fm10k_dbg_rx_desc_seq_ops, ptr @fm10k_dbg_tx_desc_seq_show.tx_desc_hdr, ptr @.str.3, ptr @.str.4, ptr @fm10k_dbg_rx_desc_seq_show.rx_desc_hdr, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_dbg_desc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_dbg_tx_desc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_dbg_rx_desc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_dbg_tx_desc_seq_show.tx_desc_hdr to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_dbg_rx_desc_seq_show.rx_desc_hdr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_dbg_q_vector_init(ptr nocapture noundef %q_vector) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_vector, align 128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #7
  %dbg_intfc = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 63
  %2 = call ptr @memset(ptr %name, i32 255, i32 16)
  %3 = ptrtoint ptr %dbg_intfc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbg_intfc, align 16
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %v_idx = getelementptr inbounds %struct.fm10k_q_vector, ptr %q_vector, i32 0, i32 2
  %5 = ptrtoint ptr %v_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %v_idx, align 8
  %conv = zext i16 %6 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv)
  %7 = ptrtoint ptr %dbg_intfc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dbg_intfc, align 16
  %call4 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %8) #7
  %dbg_q_vector = getelementptr inbounds %struct.fm10k_q_vector, ptr %q_vector, i32 0, i32 8
  %9 = ptrtoint ptr %dbg_q_vector to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %dbg_q_vector, align 8
  %count = getelementptr inbounds %struct.fm10k_q_vector, ptr %q_vector, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp54.not = icmp eq i8 %11, 0
  br i1 %cmp54.not, label %if.end.for.cond15.preheader_crit_edge, label %for.body.lr.ph

if.end.for.cond15.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond15.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %tx = getelementptr inbounds %struct.fm10k_q_vector, ptr %q_vector, i32 0, i32 4
  br label %for.body

for.cond15.preheader:                             ; preds = %for.body.for.cond15.preheader_crit_edge, %if.end.for.cond15.preheader_crit_edge
  %count16 = getelementptr inbounds %struct.fm10k_q_vector, ptr %q_vector, i32 0, i32 3, i32 6
  %12 = ptrtoint ptr %count16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %count16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp1857.not = icmp eq i8 %13, 0
  br i1 %cmp1857.not, label %for.cond15.preheader.cleanup_crit_edge, label %for.body20.lr.ph

for.cond15.preheader.cleanup_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body20.lr.ph:                                 ; preds = %for.cond15.preheader
  %rx = getelementptr inbounds %struct.fm10k_q_vector, ptr %q_vector, i32 0, i32 3
  br label %for.body20

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx, align 32
  %arrayidx = getelementptr %struct.fm10k_ring, ptr %15, i32 %i.055
  %queue_index = getelementptr %struct.fm10k_ring, ptr %15, i32 %i.055, i32 10
  %16 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %queue_index, align 8
  %conv10 = zext i8 %17 to i32
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %conv10)
  %18 = ptrtoint ptr %dbg_q_vector to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dbg_q_vector, align 8
  %call14 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 384, ptr noundef %19, ptr noundef %arrayidx, ptr noundef nonnull @fm10k_dbg_desc_fops) #7
  %inc = add nuw nsw i32 %i.055, 1
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %count, align 1
  %conv5 = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc, %conv5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond15.preheader_crit_edge

for.body.for.cond15.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond15.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body20.lr.ph
  %i.158 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc33, %for.body20.for.body20_crit_edge ]
  %22 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx, align 4
  %arrayidx24 = getelementptr %struct.fm10k_ring, ptr %23, i32 %i.158
  %queue_index26 = getelementptr %struct.fm10k_ring, ptr %23, i32 %i.158, i32 10
  %24 = ptrtoint ptr %queue_index26 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %queue_index26, align 8
  %conv27 = zext i8 %25 to i32
  %call28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %conv27)
  %26 = ptrtoint ptr %dbg_q_vector to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dbg_q_vector, align 8
  %call31 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 384, ptr noundef %27, ptr noundef %arrayidx24, ptr noundef nonnull @fm10k_dbg_desc_fops) #7
  %inc33 = add nuw nsw i32 %i.158, 1
  %28 = ptrtoint ptr %count16 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %count16, align 1
  %conv17 = zext i8 %29 to i32
  %cmp18 = icmp ult i32 %inc33, %conv17
  br i1 %cmp18, label %for.body20.for.body20_crit_edge, label %for.body20.cleanup_crit_edge

for.body20.cleanup_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

cleanup:                                          ; preds = %for.body20.cleanup_crit_edge, %for.cond15.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_dbg_q_vector_exit(ptr nocapture noundef %q_vector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_vector, align 128
  %dbg_intfc = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %dbg_intfc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbg_intfc, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_q_vector = getelementptr inbounds %struct.fm10k_q_vector, ptr %q_vector, i32 0, i32 8
  %4 = ptrtoint ptr %dbg_q_vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg_q_vector, align 8
  tail call void @debugfs_remove(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dbg_q_vector2 = getelementptr inbounds %struct.fm10k_q_vector, ptr %q_vector, i32 0, i32 8
  %6 = ptrtoint ptr %dbg_q_vector2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dbg_q_vector2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_dbg_intfc_init(ptr nocapture noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %6 = load ptr, ptr @dbg_root, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %pci_name.exit.if.end_crit_edge, label %if.then

pci_name.exit.if.end_crit_edge:                   ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i, ptr noundef nonnull %6) #7
  %dbg_intfc = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 63
  %7 = ptrtoint ptr %dbg_intfc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %dbg_intfc, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %pci_name.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_dbg_intfc_exit(ptr nocapture noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dbg_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_intfc = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 63
  %1 = ptrtoint ptr %dbg_intfc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg_intfc, align 16
  tail call void @debugfs_remove(ptr noundef %2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dbg_intfc1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 63
  %3 = ptrtoint ptr %dbg_intfc1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dbg_intfc1, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_dbg_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @fm10k_driver_name, ptr noundef null) #7
  store ptr %call, ptr @dbg_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_dbg_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dbg_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #7
  store ptr null, ptr @dbg_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_dbg_desc_open(ptr nocapture noundef readonly %inode, ptr noundef %filep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %rx = getelementptr inbounds %struct.fm10k_q_vector, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx, align 4
  %cmp = icmp ult ptr %1, %5
  %fm10k_dbg_tx_desc_seq_ops.fm10k_dbg_rx_desc_seq_ops = select i1 %cmp, ptr @fm10k_dbg_tx_desc_seq_ops, ptr @fm10k_dbg_rx_desc_seq_ops
  %call = tail call i32 @seq_open(ptr noundef %filep, ptr noundef nonnull %fm10k_dbg_tx_desc_seq_ops.fm10k_dbg_rx_desc_seq_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %private, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @fm10k_dbg_desc_seq_start(ptr nocapture noundef readonly %s, ptr noundef readonly %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %count = getelementptr inbounds %struct.fm10k_ring, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 2
  %conv = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp = icmp slt i64 %3, %conv
  %spec.select = select i1 %cmp, ptr %pos, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fm10k_dbg_desc_seq_stop(ptr nocapture noundef %s, ptr nocapture noundef %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @fm10k_dbg_desc_seq_next(ptr nocapture noundef readonly %s, ptr nocapture noundef readnone %v, ptr noundef %pos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %count = getelementptr inbounds %struct.fm10k_ring, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 2
  %conv = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %conv)
  %cmp = icmp slt i64 %inc, %conv
  %spec.select = select i1 %cmp, ptr %pos, ptr null
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_dbg_tx_desc_seq_show(ptr noundef %s, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %v, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @fm10k_dbg_tx_desc_seq_show.tx_desc_hdr) #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then
  %i.addr.03.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 57, %if.then ]
  %dec.i = add nsw i32 %i.addr.03.i, -1
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 45) #7
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %fm10k_dbg_desc_break.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

fm10k_dbg_desc_break.exit:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #7
  br label %if.end

if.end:                                           ; preds = %fm10k_dbg_desc_break.exit, %entry.if.end_crit_edge
  %desc = getelementptr inbounds %struct.fm10k_ring, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 16
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv) #7
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.fm10k_tx_desc, ptr %5, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %buflen = getelementptr %struct.fm10k_tx_desc, ptr %5, i32 %conv, i32 1
  %8 = ptrtoint ptr %buflen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %buflen, align 8
  %conv4 = zext i16 %9 to i32
  %vlan = getelementptr %struct.fm10k_tx_desc, ptr %5, i32 %conv, i32 2
  %10 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan, align 2
  %conv5 = zext i16 %11 to i32
  %mss = getelementptr %struct.fm10k_tx_desc, ptr %5, i32 %conv, i32 3
  %12 = ptrtoint ptr %mss to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mss, align 4
  %conv6 = zext i16 %13 to i32
  %hdrlen = getelementptr %struct.fm10k_tx_desc, ptr %5, i32 %conv, i32 4
  %14 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdrlen, align 2
  %conv7 = zext i8 %15 to i32
  %flags = getelementptr %struct.fm10k_tx_desc, ptr %5, i32 %conv, i32 5
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 1
  %conv8 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.4, i32 noundef %conv, i64 noundef %7, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #7
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_dbg_rx_desc_seq_show(ptr noundef %s, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %v, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @fm10k_dbg_rx_desc_seq_show.rx_desc_hdr) #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then
  %i.addr.03.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 75, %if.then ]
  %dec.i = add nsw i32 %i.addr.03.i, -1
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 45) #7
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %fm10k_dbg_desc_break.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

fm10k_dbg_desc_break.exit:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #7
  br label %if.end

if.end:                                           ; preds = %fm10k_dbg_desc_break.exit, %entry.if.end_crit_edge
  %desc = getelementptr inbounds %struct.fm10k_ring, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 16
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv) #7
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %union.fm10k_rx_desc, ptr %5, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %rss = getelementptr inbounds %struct.anon.123, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rss, align 4
  %staterr = getelementptr inbounds %struct.anon.123, ptr %arrayidx, i32 0, i32 2
  %10 = ptrtoint ptr %staterr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %staterr, align 8
  %length = getelementptr inbounds %struct.anon.124, ptr %arrayidx, i32 0, i32 6
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length, align 4
  %conv4 = zext i16 %13 to i32
  %vlan = getelementptr inbounds %struct.anon.124, ptr %arrayidx, i32 0, i32 7
  %14 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vlan, align 2
  %conv5 = zext i16 %15 to i32
  %dglort = getelementptr inbounds %struct.anon.124, ptr %arrayidx, i32 0, i32 8
  %16 = ptrtoint ptr %dglort to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dglort, align 8
  %conv6 = zext i16 %17 to i32
  %sglort = getelementptr inbounds %struct.anon.124, ptr %arrayidx, i32 0, i32 9
  %18 = ptrtoint ptr %sglort to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sglort, align 2
  %conv7 = zext i16 %19 to i32
  %timestamp = getelementptr inbounds %struct.anon.122, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %timestamp, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i64 noundef %21) #7
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 160, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 168, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 179, i32 32}
!6 = !{ptr @dbg_root, !7, !"dbg_root", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 9, i32 23}
!8 = !{ptr @fm10k_dbg_desc_fops, !9, !"fm10k_dbg_desc_fops", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 134, i32 37}
!10 = !{ptr @fm10k_dbg_tx_desc_seq_ops, !11, !"fm10k_dbg_tx_desc_seq_ops", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 99, i32 36}
!12 = !{ptr @fm10k_dbg_tx_desc_seq_show.tx_desc_hdr, !13, !"tx_desc_hdr", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 47, i32 20}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 58, i32 17}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 62, i32 17}
!18 = !{ptr @fm10k_dbg_rx_desc_seq_ops, !19, !"fm10k_dbg_rx_desc_seq_ops", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 106, i32 36}
!20 = !{ptr @fm10k_dbg_rx_desc_seq_show.rx_desc_hdr, !21, !"rx_desc_hdr", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 74, i32 20}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c", i32 90, i32 7}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
