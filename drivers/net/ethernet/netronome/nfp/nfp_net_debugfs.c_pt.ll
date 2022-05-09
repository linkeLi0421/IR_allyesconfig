; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.125, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.114, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.114 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.msix_entry = type { i32, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.anon.125 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.127, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.128, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.129, ptr, %struct.address_space, %struct.list_head, %union.anon.130, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.127 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.128 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.129 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.130 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.nfp_net_rx_ring = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, [92 x i8], %struct.xdp_rxq_info, i32, i32, [120 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.nfp_net_rx_desc = type { %union.anon.117 }
%union.anon.117 = type { [2 x i32] }
%struct.nfp_net_rx_buf = type { ptr, i32 }
%struct.nfp_net_tx_ring = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i8, [75 x i8] }
%struct.nfp_net_tx_desc = type { %union.anon.121 }
%union.anon.121 = type { [2 x i64] }
%struct.nfp_net_tx_buf = type { %union.anon.120, i32, i16, i16, i32 }
%union.anon.120 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@nfp_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vnic%d\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ctrl-vnic\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"queue\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xdp\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@nfp_rx_q_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nfp_rx_q_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nfp_xdp_q_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nfp_xdp_q_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nfp_tx_q_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nfp_tx_q_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfp_net\00", [24 x i8] zeroinitializer }, align 32
@nfp_net_is_data_vnic.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_net.h\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"RX[%02d,%02d]: cnt=%u dma=%pad host=%p   H_RD=%u H_WR=%u FL_RD=%u FL_WR=%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%04d: 0x%08x 0x%08x\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" frag=%p\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" dma_addr=%pad\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" H_RD \00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" H_WR \00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" FL_RD\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" FL_WR\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"TX[%02d,%02d%s]: cnt=%u dma=%pad host=%p   H_RD=%u H_WR=%u D_RD=%u D_WR=%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%04d: 0x%08x 0x%08x 0x%08x 0x%08x\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" skb->head=%p skb->data=%p\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" H_RD\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" H_WR\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" D_RD\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" D_WR\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [8 x i8] c"nfp_dir\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 9, i32 23 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 158, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 160, i32 16 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 164, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 166, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 167, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 168, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 171, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"nfp_rx_q_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 68, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"nfp_xdp_q_fops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 146, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"nfp_tx_q_fops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 71, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 198, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant [48 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_net.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 880, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 35, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 42, i32 20 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 47, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 50, i32 21 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 54, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 56, i32 19 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 58, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 60, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 99, i32 19 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 101, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 107, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 115, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 127, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 129, i32 19 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 131, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [56 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 133, i32 19 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @nfp_dir, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nfp_rx_q_fops, ptr @nfp_xdp_q_fops, ptr @nfp_tx_q_fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_rx_q_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_xdp_q_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tx_q_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_net_debugfs_vnic_add(ptr noundef %nn, ptr noundef %ddir) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #5
  %0 = call ptr @memset(ptr %name, i32 255, i32 20)
  %1 = load ptr, ptr @nfp_dir, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 4
  %tobool.not.i75 = icmp eq ptr %3, null
  br i1 %tobool.not.i75, label %land.rhs.i, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

land.rhs.i:                                       ; preds = %if.end
  %port.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 57
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge, label %land.rhs4.i

land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_net_is_data_vnic.exit

land.rhs4.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @nfp_net_is_data_vnic.__already_done, align 1
  br i1 %.b50.i, label %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, label %if.then.i, !prof !68

land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge:  ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_net_is_data_vnic.exit

if.then.i:                                        ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nfp_net_is_data_vnic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 880, i32 noundef 9, ptr noundef null) #5
  br label %nfp_net_is_data_vnic.exit

nfp_net_is_data_vnic.exit:                        ; preds = %if.then.i, %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge
  %6 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %netdev.i, align 4
  %tobool41.i.not = icmp eq ptr %.pr, null
  br i1 %tobool41.i.not, label %if.else, label %nfp_net_is_data_vnic.exit.if.then2_crit_edge

nfp_net_is_data_vnic.exit.if.then2_crit_edge:     ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.then2:                                         ; preds = %nfp_net_is_data_vnic.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %id = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 2
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %8)
  br label %if.end6

if.else:                                          ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 10)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %call8 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %ddir) #5
  %debugfs_dir = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 52
  %10 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %debugfs_dir, align 4
  %call10 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef %call8) #5
  %call11 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef %call10) #5
  %call12 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef %call10) #5
  %call13 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.5, ptr noundef %call10) #5
  %max_rx_rings = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 12
  %max_r_vecs = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 15
  %11 = ptrtoint ptr %max_rx_rings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_rx_rings, align 8
  %13 = ptrtoint ptr %max_r_vecs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_r_vecs, align 4
  %15 = call i32 @llvm.umin.i32(i32 %12, i32 %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1477.not = icmp eq i32 %15, 0
  br i1 %cmp1477.not, label %if.end6.for.cond23.preheader_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.cond23.preheader_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.body.for.cond23.preheader_crit_edge, %if.end6.for.cond23.preheader_crit_edge
  %max_tx_rings = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 11
  %16 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_tx_rings, align 4
  %18 = ptrtoint ptr %max_r_vecs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_r_vecs, align 4
  %20 = call i32 @llvm.umin.i32(i32 %17, i32 %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3179.not = icmp eq i32 %20, 0
  br i1 %cmp3179.not, label %for.cond23.preheader.cleanup_crit_edge, label %for.cond23.preheader.for.body32_crit_edge

for.cond23.preheader.for.body32_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body32

for.cond23.preheader.cleanup_crit_edge:           ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.6, i32 noundef %i.078)
  %arrayidx = getelementptr %struct.nfp_net, ptr %nn, i32 0, i32 17, i32 %i.078
  %call18 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 256, ptr noundef %call11, ptr noundef %arrayidx, ptr noundef nonnull @nfp_rx_q_fops) #5
  %call22 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 256, ptr noundef %call13, ptr noundef %arrayidx, ptr noundef nonnull @nfp_xdp_q_fops) #5
  %inc = add nuw i32 %i.078, 1
  %21 = ptrtoint ptr %max_rx_rings to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_rx_rings, align 8
  %23 = ptrtoint ptr %max_r_vecs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_r_vecs, align 4
  %25 = call i32 @llvm.umin.i32(i32 %22, i32 %24)
  %cmp14 = icmp ult i32 %inc, %25
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.for.cond23.preheader_crit_edge

for.body.for.cond23.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond23.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.cond23.preheader.for.body32_crit_edge
  %i.180 = phi i32 [ %inc40, %for.body32.for.body32_crit_edge ], [ 0, %for.cond23.preheader.for.body32_crit_edge ]
  %call34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.6, i32 noundef %i.180)
  %arrayidx37 = getelementptr %struct.nfp_net, ptr %nn, i32 0, i32 17, i32 %i.180
  %call38 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 256, ptr noundef %call12, ptr noundef %arrayidx37, ptr noundef nonnull @nfp_tx_q_fops) #5
  %inc40 = add nuw i32 %i.180, 1
  %26 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_tx_rings, align 4
  %28 = ptrtoint ptr %max_r_vecs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_r_vecs, align 4
  %30 = call i32 @llvm.umin.i32(i32 %27, i32 %29)
  %cmp31 = icmp ult i32 %inc40, %30
  br i1 %cmp31, label %for.body32.for.body32_crit_edge, label %for.body32.cleanup_crit_edge

for.body32.cleanup_crit_edge:                     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body32

cleanup:                                          ; preds = %for.body32.cleanup_crit_edge, %for.cond23.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_net_debugfs_device_add(ptr nocapture noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %entry.pci_name.exit_crit_edge ]
  %4 = load ptr, ptr @nfp_dir, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i, ptr noundef %4) #5
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_net_debugfs_dir_clean(ptr nocapture noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #5
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dir, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_net_debugfs_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.7, ptr noundef null) #5
  store ptr %call, ptr @nfp_dir, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_net_debugfs_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nfp_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #5
  store ptr null, ptr @nfp_dir, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_rx_q_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @nfp_rx_q_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_rx_q_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @rtnl_lock() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %rx_ring1 = getelementptr inbounds %struct.nfp_net_r_vector, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %ctrl.i = getelementptr inbounds %struct.nfp_net_dp, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl.i, align 16
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %if.end
  %cnt = getelementptr inbounds %struct.nfp_net_rx_ring, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt, align 4
  %qcp_fl = getelementptr inbounds %struct.nfp_net_rx_ring, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %qcp_fl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qcp_fl, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %13 = and i32 %12, -64768
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %15 = ptrtoint ptr %qcp_fl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qcp_fl, align 8
  %add.ptr.i.i92 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %18 = and i32 %17, -64768
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %idx = getelementptr inbounds %struct.nfp_net_rx_ring, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 16
  %fl_qcidx = getelementptr inbounds %struct.nfp_net_rx_ring, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %fl_qcidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fl_qcidx, align 4
  %24 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cnt, align 4
  %dma = getelementptr inbounds %struct.nfp_net_rx_ring, ptr %5, i32 0, i32 11
  %rxds = getelementptr inbounds %struct.nfp_net_rx_ring, ptr %5, i32 0, i32 8
  %26 = ptrtoint ptr %rxds to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxds, align 32
  %rd_p = getelementptr inbounds %struct.nfp_net_rx_ring, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %rd_p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rd_p, align 4
  %wr_p = getelementptr inbounds %struct.nfp_net_rx_ring, ptr %5, i32 0, i32 2
  %30 = ptrtoint ptr %wr_p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wr_p, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.9, i32 noundef %21, i32 noundef %23, i32 noundef %25, ptr noundef %dma, ptr noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %14, i32 noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp93 = icmp sgt i32 %9, 0
  br i1 %cmp93, label %for.body.lr.ph, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body.lr.ph:                                   ; preds = %if.end6
  %rxbufs = getelementptr inbounds %struct.nfp_net_rx_ring, ptr %5, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end43.for.body_crit_edge ]
  %32 = ptrtoint ptr %rxds to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rxds, align 32
  %arrayidx = getelementptr %struct.nfp_net_rx_desc, ptr %33, i32 %i.094
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.10, i32 noundef %i.094, i32 noundef %35, i32 noundef %37) #5
  %38 = ptrtoint ptr %rxbufs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rxbufs, align 4
  %arrayidx14 = getelementptr %struct.nfp_net_rx_buf, ptr %39, i32 %i.094
  %40 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %arrayidx14, align 4
  %tobool16.not = icmp eq ptr %41, null
  br i1 %tobool16.not, label %for.body.if.end18_crit_edge, label %if.then17

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.11, ptr noundef nonnull %41) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.body.if.end18_crit_edge
  %42 = ptrtoint ptr %rxbufs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rxbufs, align 4
  %dma_addr = getelementptr %struct.nfp_net_rx_buf, ptr %43, i32 %i.094, i32 1
  %44 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool21.not = icmp eq i32 %45, 0
  br i1 %tobool21.not, label %if.end18.if.end26_crit_edge, label %if.then22

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.12, ptr noundef %dma_addr) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end18.if.end26_crit_edge
  %46 = ptrtoint ptr %rd_p to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rd_p, align 4
  %rem = urem i32 %47, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.094, i32 %rem)
  %cmp28 = icmp eq i32 %i.094, %rem
  br i1 %cmp28, label %if.then29, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.13) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %48 = ptrtoint ptr %wr_p to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wr_p, align 8
  %rem32 = urem i32 %49, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.094, i32 %rem32)
  %cmp33 = icmp eq i32 %i.094, %rem32
  br i1 %cmp33, label %if.then34, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.14) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  %rem36 = srem i32 %14, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.094, i32 %rem36)
  %cmp37 = icmp eq i32 %i.094, %rem36
  br i1 %cmp37, label %if.then38, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.15) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %rem40 = srem i32 %19, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.094, i32 %rem40)
  %cmp41 = icmp eq i32 %i.094, %rem40
  br i1 %cmp41, label %if.then42, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.16) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  tail call void @seq_putc(ptr noundef %file, i8 noundef zeroext 10) #5
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %if.end43.out_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %if.end43.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @rtnl_unlock() #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_xdp_q_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @nfp_xdp_q_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_xdp_q_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfp_tx_q_show(ptr noundef %file, ptr noundef %data)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_tx_q_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @rtnl_lock() #5
  %file1 = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 10
  %2 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file1, align 4
  %call = tail call ptr @debugfs_real_fops(ptr noundef %3) #5
  %cmp = icmp eq ptr %call, @nfp_tx_q_fops
  %tx_ring2 = getelementptr inbounds %struct.nfp_net_r_vector, ptr %1, i32 0, i32 2
  %xdp_ring = getelementptr inbounds %struct.nfp_net_r_vector, ptr %1, i32 0, i32 18
  %tx_ring.0.in = select i1 %cmp, ptr %tx_ring2, ptr %xdp_ring
  %4 = ptrtoint ptr %tx_ring.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %tx_ring.0 = load ptr, ptr %tx_ring.0.in, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %tobool.not = icmp eq ptr %6, null
  %tobool3.not = icmp eq ptr %tx_ring.0, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end5

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %entry
  %ctrl.i = getelementptr inbounds %struct.nfp_net_dp, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl.i, align 16
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end9:                                          ; preds = %if.end5
  %cnt = getelementptr inbounds %struct.nfp_net_tx_ring, ptr %tx_ring.0, i32 0, i32 4
  %9 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cnt, align 16
  %qcp_q = getelementptr inbounds %struct.nfp_net_tx_ring, ptr %tx_ring.0, i32 0, i32 3
  %11 = ptrtoint ptr %qcp_q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qcp_q, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %14 = and i32 %13, -64768
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %16 = ptrtoint ptr %qcp_q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qcp_q, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %19 = and i32 %18, -64768
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %idx = getelementptr inbounds %struct.nfp_net_tx_ring, ptr %tx_ring.0, i32 0, i32 1
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx, align 4
  %qcidx = getelementptr inbounds %struct.nfp_net_tx_ring, ptr %tx_ring.0, i32 0, i32 2
  %23 = ptrtoint ptr %qcidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qcidx, align 8
  %25 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ring2, align 8
  %cmp14 = icmp eq ptr %tx_ring.0, %26
  %cond = select i1 %cmp14, ptr @.str.18, ptr @.str.5
  %27 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cnt, align 16
  %dma = getelementptr inbounds %struct.nfp_net_tx_ring, ptr %tx_ring.0, i32 0, i32 11
  %txds = getelementptr inbounds %struct.nfp_net_tx_ring, ptr %tx_ring.0, i32 0, i32 10
  %29 = ptrtoint ptr %txds to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %txds, align 8
  %rd_p = getelementptr inbounds %struct.nfp_net_tx_ring, ptr %tx_ring.0, i32 0, i32 6
  %31 = ptrtoint ptr %rd_p to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rd_p, align 8
  %wr_p = getelementptr inbounds %struct.nfp_net_tx_ring, ptr %tx_ring.0, i32 0, i32 5
  %33 = ptrtoint ptr %wr_p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wr_p, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.17, i32 noundef %22, i32 noundef %24, ptr noundef nonnull %cond, i32 noundef %28, ptr noundef %dma, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %15, i32 noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16123 = icmp sgt i32 %10, 0
  br i1 %cmp16123, label %for.body.lr.ph, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body.lr.ph:                                   ; preds = %if.end9
  %txbufs35 = getelementptr inbounds %struct.nfp_net_tx_ring, ptr %tx_ring.0, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %for.body.lr.ph
  %i.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end62.for.body_crit_edge ]
  %35 = ptrtoint ptr %txds to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txds, align 8
  %arrayidx = getelementptr %struct.nfp_net_tx_desc, ptr %36, i32 %i.0124
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 8
  %arrayidx19 = getelementptr [4 x i32], ptr %arrayidx, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr [4 x i32], ptr %arrayidx, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx20, align 8
  %arrayidx21 = getelementptr [4 x i32], ptr %arrayidx, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.19, i32 noundef %i.0124, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44) #5
  %45 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_ring2, align 8
  %cmp23 = icmp eq ptr %tx_ring.0, %46
  %47 = ptrtoint ptr %txbufs35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %txbufs35, align 4
  %arrayidx25 = getelementptr %struct.nfp_net_tx_buf, ptr %48, i32 %i.0124
  %49 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %arrayidx25, align 4
  br i1 %cmp23, label %if.then24, label %if.else30

if.then24:                                        ; preds = %for.body
  %tobool26.not = icmp eq ptr %50, null
  br i1 %tobool26.not, label %if.then24.if.end37_crit_edge, label %if.then27

if.then24.if.end37_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %head = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 18
  %51 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head, align 8
  %data28 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 19
  %53 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data28, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.20, ptr noundef %52, ptr noundef %54) #5
  br label %if.end37

if.else30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.11, ptr noundef %50) #5
  br label %if.end37

if.end37:                                         ; preds = %if.else30, %if.then27, %if.then24.if.end37_crit_edge
  %55 = ptrtoint ptr %txbufs35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %txbufs35, align 4
  %dma_addr = getelementptr %struct.nfp_net_tx_buf, ptr %56, i32 %i.0124, i32 1
  %57 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool40.not = icmp eq i32 %58, 0
  br i1 %tobool40.not, label %if.end37.if.end45_crit_edge, label %if.then41

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.12, ptr noundef %dma_addr) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end37.if.end45_crit_edge
  %59 = ptrtoint ptr %rd_p to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rd_p, align 8
  %rem = urem i32 %60, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0124, i32 %rem)
  %cmp47 = icmp eq i32 %i.0124, %rem
  br i1 %cmp47, label %if.then48, label %if.end45.if.end49_crit_edge

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.21) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45.if.end49_crit_edge
  %61 = ptrtoint ptr %wr_p to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wr_p, align 4
  %rem51 = urem i32 %62, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0124, i32 %rem51)
  %cmp52 = icmp eq i32 %i.0124, %rem51
  br i1 %cmp52, label %if.then53, label %if.end49.if.end54_crit_edge

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.22) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49.if.end54_crit_edge
  %rem55 = srem i32 %15, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0124, i32 %rem55)
  %cmp56 = icmp eq i32 %i.0124, %rem55
  br i1 %cmp56, label %if.then57, label %if.end54.if.end58_crit_edge

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.23) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %rem59 = srem i32 %20, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0124, i32 %rem59)
  %cmp60 = icmp eq i32 %i.0124, %rem59
  br i1 %cmp60, label %if.then61, label %if.end58.if.end62_crit_edge

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.24) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end58.if.end62_crit_edge
  tail call void @seq_putc(ptr noundef %file, i8 noundef zeroext 10) #5
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %if.end62.out_crit_edge, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %if.end62.out_crit_edge, %if.end9.out_crit_edge, %if.end5.out_crit_edge, %entry.out_crit_edge
  tail call void @rtnl_unlock() #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_real_fops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_tx_q_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @nfp_tx_q_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 158, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 160, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 164, i32 30}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 166, i32 26}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 167, i32 26}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 168, i32 27}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 171, i32 17}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 198, i32 31}
!16 = !{ptr @nfp_dir, !17, !"nfp_dir", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 9, i32 23}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net.h", i32 880, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nfp_rx_q_fops, !22, !"nfp_rx_q_fops", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 68, i32 1}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 35, i32 19}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 42, i32 20}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 47, i32 21}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 50, i32 21}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 54, i32 19}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 56, i32 19}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 58, i32 19}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 60, i32 19}
!39 = !{ptr @nfp_xdp_q_fops, !40, !"nfp_xdp_q_fops", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 146, i32 1}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 99, i32 19}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 101, i32 34}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 107, i32 20}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 115, i32 22}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 127, i32 19}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 129, i32 19}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 131, i32 19}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 133, i32 19}
!57 = !{ptr @nfp_tx_q_fops, !58, !"nfp_tx_q_fops", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugfs.c", i32 71, i32 1}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 6751831}
!70 = !{i64 2156348006}
