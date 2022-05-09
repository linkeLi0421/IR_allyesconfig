; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/qca_debug.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/qca_debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.qcaspi = type { ptr, ptr, ptr, %struct.tx_ring, %struct.qcaspi_stats, ptr, i32, i8, %struct.qcafrm_handle, ptr, i32, i32, i16, ptr, i32, i8, i16 }
%struct.tx_ring = type { [10 x ptr], i16, i16, i16, i16 }
%struct.qcaspi_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qcafrm_handle = type { i32, i32, i16, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.117, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.118, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.119, ptr, %struct.address_space, %struct.list_head, %union.anon.120, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.117 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.118 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.119 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.120 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@qcaspi_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qcaspi_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@qcaspi_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @qcaspi_get_drvinfo, ptr @qcaspi_get_regs_len, ptr @qcaspi_get_regs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcaspi_get_ringparam, ptr @qcaspi_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @qcaspi_get_strings, ptr null, ptr @qcaspi_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @qcaspi_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcaspi_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX buffer size   : %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TX ring state    : \00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"empty\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in use\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX ring size     : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Sync state       : %u (\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"QCASPI_SYNC_UNKNOWN\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QCASPI_SYNC_RESET\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QCASPI_SYNC_READY\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c")\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ              : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INTR REQ         : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INTR SVC         : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SPI max speed    : %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SPI mode         : %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SPI chip select  : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SPI legacy mode  : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SPI burst length : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qcaspi\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.2.7-i\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QCA7000\00", [24 x i8] zeroinitializer }, align 32
@qcaspi_gstrings_stats = internal constant { [14 x [32 x i8]], [96 x i8] } { [14 x [32 x i8]] [[32 x i8] c"Triggered resets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Device resets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Reset timeouts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Read errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Write errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Read buffer errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Write buffer errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Out of memory\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Write buffer misses\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Transmit ring full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SPI errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Write verify errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Buffer available errors\00\00\00\00\00\00\00\00\00", [32 x i8] c"Bad signature\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [96 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/qualcomm/qca_debug.c\00", [54 x i8] zeroinitializer }, align 32
@switch.table.qcaspi_info_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 138, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"qcaspi_info_fops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 130, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"qcaspi_ethtool_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 286, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 75, i32 16 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 78, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 81, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 83, i32 15 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 85, i32 15 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 89, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 92, i32 16 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 96, i32 15 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 99, i32 15 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 102, i32 15 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 105, i32 15 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 108, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 110, i32 16 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 112, i32 16 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 114, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 117, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 119, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 121, i32 16 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 123, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 125, i32 16 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 167, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 168, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 169, i32 25 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"qcaspi_gstrings_stats\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 51, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [45 x i8] c"../drivers/net/ethernet/qualcomm/qca_debug.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 207, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [30 x i8] c"switch.table.qcaspi_info_show\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @qcaspi_info_fops, ptr @qcaspi_ethtool_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @qcaspi_gstrings_stats, ptr @.str.25, ptr @switch.table.qcaspi_info_show], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcaspi_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcaspi_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcaspi_gstrings_stats to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qcaspi_info_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qcaspi_init_device_debugfs(ptr noundef %qca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qca, align 8
  %init_name.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef null) #10
  %device_root = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 13
  %6 = ptrtoint ptr %device_root to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %device_root, align 8
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext -32476, ptr noundef %call1, ptr noundef %qca, ptr noundef nonnull @qcaspi_info_fops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qcaspi_remove_device_debugfs(ptr nocapture noundef readonly %qca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device_root = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 13
  %0 = ptrtoint ptr %device_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_root, align 8
  tail call void @debugfs_remove(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qcaspi_set_ethtool_ops(ptr nocapture noundef writeonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @qcaspi_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcaspi_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qcaspi_info_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcaspi_info_show(ptr noundef %s, ptr nocapture noundef readnone %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %buffer_size = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef %3) #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.2) #10
  %txr = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 3
  %head = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %head, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tail = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tail, align 2
  %idxprom5 = zext i16 %9 to i32
  %arrayidx6 = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom5
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %11, null
  %.str.5..str.4 = select i1 %tobool.not, ptr @.str.5, ptr @.str.4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %entry.if.end9_crit_edge
  %.str.4.sink = phi ptr [ @.str.3, %entry.if.end9_crit_edge ], [ %.str.5..str.4, %if.else ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.4.sink) #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.6) #10
  %size = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size, align 4
  %conv = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.7, i32 noundef %conv) #10
  %sync = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sync, align 8
  %conv11 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, i32 noundef %conv11) #10
  %16 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sync, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %18 = icmp ult i8 %17, 3
  br i1 %18, label %switch.lookup, label %if.end9.sw.epilog_crit_edge

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %19 = sext i8 %17 to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.qcaspi_info_show, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end9.sw.epilog_crit_edge
  %.str.12.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.12, %if.end9.sw.epilog_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.12.sink) #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.13) #10
  %spi_dev = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %spi_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spi_dev, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %24) #10
  %intr_req = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %intr_req to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intr_req, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %26) #10
  %intr_svc = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %intr_svc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %intr_svc, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %28) #10
  %29 = ptrtoint ptr %spi_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spi_dev, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_speed_hz, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %32) #10
  %33 = ptrtoint ptr %spi_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spi_dev, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %36) #10
  %37 = ptrtoint ptr %spi_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi_dev, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %chip_select, align 4
  %conv19 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %conv19) #10
  %legacy_mode = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 15
  %41 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %legacy_mode, align 8
  %conv20 = zext i8 %42 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %conv20) #10
  %burst_len = getelementptr inbounds %struct.qcaspi, ptr %1, i32 0, i32 16
  %43 = ptrtoint ptr %burst_len to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %burst_len, align 2
  %conv21 = zext i16 %44 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, i32 noundef %conv21) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcaspi_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %p, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.22, i32 noundef 32) #10
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %p, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.23, i32 noundef 32) #10
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %p, i32 0, i32 3
  %call5 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str.24, i32 noundef 32) #10
  %spi_dev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %spi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi_dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %p, i32 0, i32 4
  %call9 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcaspi_get_regs_len(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcaspi_get_regs(ptr noundef %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  %value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %version, align 4
  %1 = call ptr @memset(ptr %p, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 256, ptr noundef nonnull %value) #10
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %value, align 2
  %conv4 = zext i16 %4 to i32
  %arrayidx5 = getelementptr i32, ptr %p, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv4, ptr %arrayidx5, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1.1 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 512, ptr noundef nonnull %value) #10
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %value, align 2
  %conv4.1 = zext i16 %8 to i32
  %arrayidx5.1 = getelementptr i32, ptr %p, i32 2
  %9 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4.1, ptr %arrayidx5.1, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1.2 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 768, ptr noundef nonnull %value) #10
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %value, align 2
  %conv4.2 = zext i16 %12 to i32
  %arrayidx5.2 = getelementptr i32, ptr %p, i32 3
  %13 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv4.2, ptr %arrayidx5.2, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1.3 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 1024, ptr noundef nonnull %value) #10
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %value, align 2
  %conv4.3 = zext i16 %16 to i32
  %arrayidx5.3 = getelementptr i32, ptr %p, i32 4
  %17 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv4.3, ptr %arrayidx5.3, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1.4 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 1280, ptr noundef nonnull %value) #10
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %value, align 2
  %conv4.4 = zext i16 %20 to i32
  %arrayidx5.4 = getelementptr i32, ptr %p, i32 5
  %21 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv4.4, ptr %arrayidx5.4, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1.5 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 3072, ptr noundef nonnull %value) #10
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %value, align 2
  %conv4.5 = zext i16 %24 to i32
  %arrayidx5.5 = getelementptr i32, ptr %p, i32 12
  %25 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv4.5, ptr %arrayidx5.5, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %26 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1.6 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 3328, ptr noundef nonnull %value) #10
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %value, align 2
  %conv4.6 = zext i16 %28 to i32
  %arrayidx5.6 = getelementptr i32, ptr %p, i32 13
  %29 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv4.6, ptr %arrayidx5.6, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %30 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1.7 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 4608, ptr noundef nonnull %value) #10
  %31 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %value, align 2
  %conv4.7 = zext i16 %32 to i32
  %arrayidx5.7 = getelementptr i32, ptr %p, i32 18
  %33 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv4.7, ptr %arrayidx5.7, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1.8 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 4864, ptr noundef nonnull %value) #10
  %35 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %value, align 2
  %conv4.8 = zext i16 %36 to i32
  %arrayidx5.8 = getelementptr i32, ptr %p, i32 19
  %37 = ptrtoint ptr %arrayidx5.8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv4.8, ptr %arrayidx5.8, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %38 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1.9 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 6656, ptr noundef nonnull %value) #10
  %39 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %value, align 2
  %conv4.9 = zext i16 %40 to i32
  %arrayidx5.9 = getelementptr i32, ptr %p, i32 26
  %41 = ptrtoint ptr %arrayidx5.9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv4.9, ptr %arrayidx5.9, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #10
  %42 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %value, align 2, !annotation !69
  %call1.10 = call i32 @qcaspi_read_register(ptr noundef %add.ptr.i, i16 noundef zeroext 6912, ptr noundef nonnull %value) #10
  %43 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %value, align 2
  %conv4.10 = zext i16 %44 to i32
  %arrayidx5.10 = getelementptr i32, ptr %p, i32 27
  %45 = ptrtoint ptr %arrayidx5.10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv4.10, ptr %arrayidx5.10, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qcaspi_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %tx_max_pending, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %rx_pending, align 4
  %count = getelementptr i8, ptr %dev, i32 2362
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count, align 2
  %conv = zext i16 %4 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %5 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcaspi_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %4 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ndo_stop = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %ndo_stop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndo_stop, align 4
  %call6 = tail call i32 %11(ptr noundef %dev) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %12 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_pending, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 2)
  %15 = trunc i32 %14 to i16
  %count = getelementptr i8, ptr %dev, i32 2362
  %16 = tail call i16 @llvm.umin.i16(i16 %15, i16 10)
  %17 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %count, align 2
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i.i46 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i46)
  %tobool.i47.not = icmp eq i32 %and1.i.i46, 0
  br i1 %tobool.i47.not, label %if.end7.cleanup_crit_edge, label %if.then25

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %ndo_open = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %ndo_open to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndo_open, align 4
  %call26 = tail call i32 %21(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end7.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcaspi_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = call ptr @memcpy(ptr %buf, ptr @qcaspi_gstrings_stats, i32 448)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 207, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qcaspi_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %estats, ptr nocapture noundef writeonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr i8, ptr %dev, i32 2368
  %0 = call ptr @memcpy(ptr %data, ptr %stats, i32 112)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcaspi_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 14, i32 -22
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcaspi_get_link_ksettings(ptr nocapture noundef readnone %dev, ptr nocapture noundef %cmd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %link_modes, align 4
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %port, align 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %autoneg, align 1
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcaspi_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 138, i32 22}
!2 = !{ptr @qcaspi_info_fops, !3, !"qcaspi_info_fops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 130, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 75, i32 16}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 78, i32 14}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 81, i32 15}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 83, i32 15}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 85, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 87, i32 14}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 89, i32 16}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 92, i32 16}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 96, i32 15}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 99, i32 15}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 102, i32 15}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 105, i32 15}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 108, i32 14}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 110, i32 16}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 112, i32 16}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 114, i32 16}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 117, i32 16}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 119, i32 16}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 121, i32 16}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 123, i32 16}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 125, i32 16}
!46 = !{ptr @qcaspi_ethtool_ops, !47, !"qcaspi_ethtool_ops", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 286, i32 33}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 167, i32 21}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 168, i32 22}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 169, i32 25}
!54 = distinct !{null, !55, !"qcaspi_spi_regs", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 33, i32 18}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 207, i32 3}
!58 = !{ptr @qcaspi_gstrings_stats, !59, !"qcaspi_gstrings_stats", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qualcomm/qca_debug.c", i32 51, i32 19}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
