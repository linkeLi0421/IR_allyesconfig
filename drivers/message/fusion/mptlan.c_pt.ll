; ModuleID = '/llk/IR_all_yes/drivers/message/fusion/mptlan.c_pt.bc'
source_filename = "../drivers/message/fusion/mptlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mpt_pci_driver = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._MPT_ADAPTER = type { i32, i32, [32 x i8], ptr, [100 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i16, i32, i8, i16, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, %struct._SpiCfgData, %struct._RaidCfgData, %struct._SasCfgData, %struct._FcCfgData, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [32 x i32], [64 x i16], %struct._MSG_IOC_FACTS_REPLY, [2 x %struct._MSG_PORT_FACTS_REPLY], [2 x %struct._CONFIG_PAGE_FC_PORT_0], %struct._CONFIG_PAGE_LAN_0, %struct._CONFIG_PAGE_LAN_1, i8, i32, i32, i8, i8, i8, [4 x i8], i8, i8, i8, %struct.list_head, ptr, %struct.list_head, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], %struct.mutex, i8, i8, ptr, i64, i16, %struct.list_head, %struct.mutex, i8, i8, i32, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct.spinlock, i32, i8, i8, i8, i8, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.work_struct, [2 x i8], %struct.spinlock, %struct.work_struct, [20 x i8], ptr, i32, i32, i32, ptr, %struct.spinlock, i64, i32, [20 x i8], ptr, %struct.delayed_work, i8, i8, i8 }
%struct._SpiCfgData = type { i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct._RaidCfgData = type { ptr, ptr, %struct.mutex, %struct.list_head }
%struct._SasCfgData = type { i8 }
%struct._FcCfgData = type { [2 x %struct.anon.127] }
%struct.anon.127 = type { ptr, i32, i32 }
%struct._MSG_IOC_FACTS_REPLY = type { i16, i8, i8, i16, i8, i8, i32, i16, i16, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32, i16, i8, i8, i32, i16, i8, i8, i32, i32, %union._MPI_FW_VERSION, i16, i16, %struct._SGE_SIMPLE_UNION, i32 }
%union._MPI_FW_VERSION = type { i32 }
%struct._SGE_SIMPLE_UNION = type { i32, %union.anon.120 }
%union.anon.120 = type { %struct._U64 }
%struct._U64 = type { i32, i32 }
%struct._MSG_PORT_FACTS_REPLY = type { i16, i8, i8, i16, i8, i8, i32, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, i32 }
%struct._CONFIG_PAGE_FC_PORT_0 = type { %struct._CONFIG_PAGE_HEADER, i32, i8, i8, i8, i8, i32, %struct._U64, %struct._U64, i32, i32, i32, i32, %struct._U64, %struct._U64, i32, i32, i8, i8, i8, i8 }
%struct._CONFIG_PAGE_HEADER = type { i8, i8, i8, i8 }
%struct._CONFIG_PAGE_LAN_0 = type { %struct._CONFIG_PAGE_HEADER, i16, i16, i32 }
%struct._CONFIG_PAGE_LAN_1 = type { %struct._CONFIG_PAGE_HEADER, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct._MPT_MGMT = type { %struct.mutex, %struct.completion, [128 x i8], [64 x i8], i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.BufferControl = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct._MSG_REQUEST_HEADER = type { [2 x i8], i8, i8, [3 x i8], i8, i32 }
%struct._MSG_LAN_SEND_REPLY = type { i16, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i32 }
%struct._MSG_LAN_RECEIVE_POST_REPLY = type { i16, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i32, i32, i32, [1 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.mpt_lan_ohdr = type { i16, [6 x i8], i16, [6 x i8] }
%struct.fcllc = type { i8, i8, i8, [3 x i8], i16 }
%struct._MSG_LAN_RESET_REQUEST = type { i16, i8, i8, i16, i8, i8, i32 }
%struct.mpt_lan_priv = type { ptr, i8, %struct.atomic_t, i32, ptr, i32, %struct.spinlock, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, i32 }
%struct.anon.123 = type { [2 x i32], %union.anon.124 }
%union.anon.124 = type { i32 }
%struct._MSG_LAN_RECEIVE_POST_REQUEST = type { i16, i8, i8, i16, i8, i8, i32, i32, [1 x %struct._SGE_MPI_UNION] }
%struct._SGE_MPI_UNION = type { %union.anon.128 }
%union.anon.128 = type { %struct._SGE_TRANSACTION_UNION }
%struct._SGE_TRANSACTION_UNION = type { i8, i8, i8, i8, %union.anon.129, [1 x i32] }
%union.anon.129 = type { [4 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct._SGE_TRANSACTION32 = type { i8, i8, i8, i8, i32, [0 x i32] }
%struct._MSG_LAN_SEND_REQUEST = type { i16, i8, i8, i16, i8, i8, i32, [1 x %struct._SGE_MPI_UNION] }

@__UNIQUE_ID_file339 = internal constant [42 x i8] c"mptlan.file=drivers/message/fusion/mptlan\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [19 x i8] c"mptlan.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version341 = internal constant [23 x i8] c"mptlan.version=3.04.20\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mptlan\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3.04.20\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@LanCtx = internal global { i8, [31 x i8] } { i8 16, [31 x i8] zeroinitializer }, align 32
@__initcall__kmod_mptlan__342_1485_mpt_lan_init6 = internal global ptr @mpt_lan_init, section ".initcall6.init", align 4
@__exitcall_mpt_lan_exit = internal global ptr @mpt_lan_exit, section ".exitcall.exit", align 4
@mpt_lan_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpt_lan_init\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/message/fusion/mptlan.c\00", [32 x i8] zeroinitializer }, align 32
@mpt_lan_init._entry_ptr = internal global ptr @mpt_lan_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fusion MPT LAN driver\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lan_reply\00", [22 x i8] zeroinitializer }, align 32
@mpt_lan_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013mptlan: Failed to register with MPT base driver\0A\00", [45 x i8] zeroinitializer }, align 32
@mpt_lan_init._entry_ptr.10 = internal global ptr @mpt_lan_init._entry.8, section ".printk_index", align 4
@mpt_lan_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"\013mptlan: Eieee! unable to register a reset handler with mptbase! The world is at an end! Everything is fading to black! Goodbye.\0A\00", [61 x i8] zeroinitializer }, align 32
@mpt_lan_init._entry_ptr.13 = internal global ptr @mpt_lan_init._entry.11, section ".printk_index", align 4
@mptlan_driver = internal global { %struct.mpt_pci_driver, [24 x i8] } { %struct.mpt_pci_driver { ptr @mptlan_probe, ptr @mptlan_remove }, [24 x i8] zeroinitializer }, align 32
@lan_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.5, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013mptlan/lan_reply: Got a turbo reply that I don't know what to do with\0A\00", [55 x i8] zeroinitializer }, align 32
@lan_reply._entry_ptr = internal global ptr @lan_reply._entry, section ".printk_index", align 4
@lan_reply._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.5, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013mptlan/lan_reply: Got a non-turbo reply that I don't know what to do with\0A\00", [51 x i8] zeroinitializer }, align 32
@lan_reply._entry_ptr.17 = internal global ptr @lan_reply._entry.15, section ".printk_index", align 4
@mpt_lan_receive_post_turbo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013mptlan: %s/%s: ERROR - Can't allocate skb! (%s@%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mpt_lan_receive_post_turbo\00", [37 x i8] zeroinitializer }, align 32
@mpt_lan_receive_post_turbo._entry_ptr = internal global ptr @mpt_lan_receive_post_turbo._entry, section ".printk_index", align 4
@mpt_lan_type_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014mptlan: %s: WARNING - Broadcast swap F/W bug detected!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mpt_lan_type_trans\00", [45 x i8] zeroinitializer }, align 32
@mpt_lan_type_trans._entry_ptr = internal global ptr @mpt_lan_type_trans._entry, section ".printk_index", align 4
@mpt_lan_type_trans._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014mptlan: Please update sender @ MAC_addr = %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@mpt_lan_type_trans._entry_ptr.24 = internal global ptr @mpt_lan_type_trans._entry.22, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mpt_lan_send_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013mptlan: %s/%s: ERROR - Invalid SGL sent to IOC!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mpt_lan_send_reply\00", [45 x i8] zeroinitializer }, align 32
@mpt_lan_send_reply._entry_ptr = internal global ptr @mpt_lan_send_reply._entry, section ".printk_index", align 4
@mpt_lan_receive_post_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013mptlan: %s/%s: ERROR - Got a non-TURBO ReceivePostReply w/ PacketLength zero!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mpt_lan_receive_post_reply\00", [37 x i8] zeroinitializer }, align 32
@mpt_lan_receive_post_reply._entry_ptr = internal global ptr @mpt_lan_receive_post_reply._entry, section ".printk_index", align 4
@mpt_lan_receive_post_reply._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.5, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013mptlan: MsgFlags = %02x, IOCStatus = %04x\0A\00", [51 x i8] zeroinitializer }, align 32
@mpt_lan_receive_post_reply._entry_ptr.31 = internal global ptr @mpt_lan_receive_post_reply._entry.29, section ".printk_index", align 4
@mpt_lan_receive_post_reply._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.28, ptr @.str.5, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt_lan_receive_post_reply._entry_ptr.33 = internal global ptr @mpt_lan_receive_post_reply._entry.32, section ".printk_index", align 4
@mpt_lan_receive_post_reply._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.28, ptr @.str.5, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt_lan_receive_post_reply._entry_ptr.35 = internal global ptr @mpt_lan_receive_post_reply._entry.34, section ".printk_index", align 4
@mpt_lan_receive_post_reply._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.5, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013mptlan: %s/%s: Yoohoo! mpt_rxfidx_tail = %d, MPT_LAN_MAX_BUCKETS_OUT = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mpt_lan_receive_post_reply._entry_ptr.38 = internal global ptr @mpt_lan_receive_post_reply._entry.36, section ".printk_index", align 4
@mpt_lan_receive_post_reply._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.28, ptr @.str.5, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014mptlan: %s/%s: WARNING - IOC out of buckets! (priv->buckets_out = %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@mpt_lan_receive_post_reply._entry_ptr.41 = internal global ptr @mpt_lan_receive_post_reply._entry.39, section ".printk_index", align 4
@mpt_lan_receive_post_reply._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.28, ptr @.str.5, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016mptlan: %s/%s: IOC says %d buckets left. (priv->buckets_out = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@mpt_lan_receive_post_reply._entry_ptr.44 = internal global ptr @mpt_lan_receive_post_reply._entry.42, section ".printk_index", align 4
@mpt_lan_receive_post_reply._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.28, ptr @.str.5, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [243 x i8], [45 x i8] } { [243 x i8] c"\014mptlan Mismatch between driver's buckets_out count and fw's BucketsRemaining count has crossed the threshold, issuing a LanReset to clear the fw's hashtable. You may want to check your /var/log/messages for \22CRC error\22 event notifications.\0A\00", [45 x i8] zeroinitializer }, align 32
@mpt_lan_receive_post_reply._entry_ptr.47 = internal global ptr @mpt_lan_receive_post_reply._entry.45, section ".printk_index", align 4
@mpt_lan_post_receive_buckets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Unable to alloc request frame\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mpt_lan_post_receive_buckets\00", [35 x i8] zeroinitializer }, align 32
@mpt_lan_post_receive_buckets._entry_ptr = internal global ptr @mpt_lan_post_receive_buckets._entry, section ".printk_index", align 4
@mpt_lan_post_receive_buckets._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.5, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Can't alloc context\0A\00", [37 x i8] zeroinitializer }, align 32
@mpt_lan_post_receive_buckets._entry_ptr.52 = internal global ptr @mpt_lan_post_receive_buckets._entry.50, section ".printk_index", align 4
@mpt_lan_post_receive_buckets._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.5, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014mptlan/%s: Can't alloc skb\0A\00", [34 x i8] zeroinitializer }, align 32
@mpt_lan_post_receive_buckets._entry_ptr.55 = internal global ptr @mpt_lan_post_receive_buckets._entry.53, section ".printk_index", align 4
@mpt_lan_post_receive_buckets._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.5, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014mptlan/%s: No buckets posted\0A\00", [32 x i8] zeroinitializer }, align 32
@mpt_lan_post_receive_buckets._entry_ptr.58 = internal global ptr @mpt_lan_post_receive_buckets._entry.56, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mptlan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016mptlan: %s: PortNum=%x, ProtocolFlags=%02Xh (%c%c%c%c)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mptlan_probe\00", [19 x i8] zeroinitializer }, align 32
@mptlan_probe._entry_ptr = internal global ptr @mptlan_probe._entry, section ".printk_index", align 4
@mptlan_probe._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.5, i32 1404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016mptlan: %s: Hmmm... LAN protocol seems to be disabled on this adapter port!\0A\00", [49 x i8] zeroinitializer }, align 32
@mptlan_probe._entry_ptr.65 = internal global ptr @mptlan_probe._entry.63, section ".printk_index", align 4
@mptlan_probe._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.5, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013mptlan: %s: Unable to register port%d as a LAN device\0A\00", [39 x i8] zeroinitializer }, align 32
@mptlan_probe._entry_ptr.68 = internal global ptr @mptlan_probe._entry.66, section ".printk_index", align 4
@mptlan_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.5, i32 1417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016mptlan: %s: Fusion MPT LAN device registered as '%s'\0A\00", [40 x i8] zeroinitializer }, align 32
@mptlan_probe._entry_ptr.71 = internal global ptr @mptlan_probe._entry.69, section ".printk_index", align 4
@mptlan_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.5, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016mptlan: %s/%s: LanAddr = %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@mptlan_probe._entry_ptr.74 = internal global ptr @mptlan_probe._entry.72, section ".printk_index", align 4
@mpt_register_lan_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&priv->post_buckets_task)->work)\00", [43 x i8] zeroinitializer }, align 32
@mpt_register_lan_device.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&priv->post_buckets_task)->timer\00", [61 x i8] zeroinitializer }, align 32
@mpt_register_lan_device.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->txfidx_lock\00", [45 x i8] zeroinitializer }, align 32
@mpt_register_lan_device.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->rxfidx_lock\00", [45 x i8] zeroinitializer }, align 32
@mpt_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mpt_lan_open, ptr @mpt_lan_close, ptr @mpt_lan_sdu_send, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpt_lan_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mpt_lan_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.5, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014mptlan/lan_open: lan_reset failed.\00", [59 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpt_lan_open\00", [19 x i8] zeroinitializer }, align 32
@mpt_lan_open._entry_ptr = internal global ptr @mpt_lan_open._entry, section ".printk_index", align 4
@mpt_lan_open._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.5, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"The ioc is active. Perhaps it needs to be reset?\0A\00", [46 x i8] zeroinitializer }, align 32
@mpt_lan_open._entry_ptr.86 = internal global ptr @mpt_lan_open._entry.84, section ".printk_index", align 4
@mpt_lan_open._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.5, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"The ioc in inactive, most likely in the process of being reset. Please try again in a moment.\0A\00", [33 x i8] zeroinitializer }, align 32
@mpt_lan_open._entry_ptr.89 = internal global ptr @mpt_lan_open._entry.87, section ".printk_index", align 4
@mpt_lan_open._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.5, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016mptlan: %s/%s: interface up & active\0A\00", [56 x i8] zeroinitializer }, align 32
@mpt_lan_open._entry_ptr.92 = internal global ptr @mpt_lan_open._entry.90, section ".printk_index", align 4
@mpt_lan_open._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.5, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [160 x i8], [32 x i8] } { [160 x i8] c"\014mptlan/lo: Unable to register for Event Notifications. This is a bad thing! We're not going to go ahead, but I'd be leery of system stability at this point.\0A\00", [32 x i8] zeroinitializer }, align 32
@mpt_lan_open._entry_ptr.95 = internal global ptr @mpt_lan_open._entry.93, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mpt_lan_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016mptlan: %s/%s: interface down & inactive\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mpt_lan_close\00", [18 x i8] zeroinitializer }, align 32
@mpt_lan_close._entry_ptr = internal global ptr @mpt_lan_close._entry, section ".printk_index", align 4
@mpt_lan_sdu_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: no tx context available: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mpt_lan_sdu_send\00", [47 x i8] zeroinitializer }, align 32
@mpt_lan_sdu_send._entry_ptr = internal global ptr @mpt_lan_sdu_send._entry, section ".printk_index", align 4
@mpt_lan_sdu_send._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.99, ptr @.str.5, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt_lan_sdu_send._entry_ptr.101 = internal global ptr @mpt_lan_sdu_send._entry.100, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.102 = internal global [7 x i64] [i64 5, i64 8, i64 7, i64 8, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 131, i64 135]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 2054]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 66, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"LanCtx\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 149, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1450, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1453, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1455, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1462, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"mptlan_driver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1443, i32 30 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 223, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 283, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 866, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1506, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1508, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 628, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 983, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 986, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1016, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1058, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1099, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1109, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1114, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1123, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1169, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1196, i32 5 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1218, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1258, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 326, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1393, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1402, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1410, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1416, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1418, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1324, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1345, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1346, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [15 x i8] c"mpt_netdev_ops\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1297, i32 36 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 383, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 386, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 389, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 431, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 435, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 543, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 695, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.386 = private constant [35 x i8] c"../drivers/message/fusion/mptlan.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 705, i32 3 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_version341, ptr @__exitcall_mpt_lan_exit, ptr @__initcall__kmod_mptlan__342_1485_mpt_lan_init6, ptr @__modver_attr, ptr @lan_reply._entry, ptr @lan_reply._entry.15, ptr @lan_reply._entry_ptr, ptr @lan_reply._entry_ptr.17, ptr @mpt_lan_close._entry, ptr @mpt_lan_close._entry_ptr, ptr @mpt_lan_exit, ptr @mpt_lan_init._entry, ptr @mpt_lan_init._entry.11, ptr @mpt_lan_init._entry.8, ptr @mpt_lan_init._entry_ptr, ptr @mpt_lan_init._entry_ptr.10, ptr @mpt_lan_init._entry_ptr.13, ptr @mpt_lan_open._entry, ptr @mpt_lan_open._entry.84, ptr @mpt_lan_open._entry.87, ptr @mpt_lan_open._entry.90, ptr @mpt_lan_open._entry.93, ptr @mpt_lan_open._entry_ptr, ptr @mpt_lan_open._entry_ptr.86, ptr @mpt_lan_open._entry_ptr.89, ptr @mpt_lan_open._entry_ptr.92, ptr @mpt_lan_open._entry_ptr.95, ptr @mpt_lan_post_receive_buckets._entry, ptr @mpt_lan_post_receive_buckets._entry.50, ptr @mpt_lan_post_receive_buckets._entry.53, ptr @mpt_lan_post_receive_buckets._entry.56, ptr @mpt_lan_post_receive_buckets._entry_ptr, ptr @mpt_lan_post_receive_buckets._entry_ptr.52, ptr @mpt_lan_post_receive_buckets._entry_ptr.55, ptr @mpt_lan_post_receive_buckets._entry_ptr.58, ptr @mpt_lan_receive_post_reply._entry, ptr @mpt_lan_receive_post_reply._entry.29, ptr @mpt_lan_receive_post_reply._entry.32, ptr @mpt_lan_receive_post_reply._entry.34, ptr @mpt_lan_receive_post_reply._entry.36, ptr @mpt_lan_receive_post_reply._entry.39, ptr @mpt_lan_receive_post_reply._entry.42, ptr @mpt_lan_receive_post_reply._entry.45, ptr @mpt_lan_receive_post_reply._entry_ptr, ptr @mpt_lan_receive_post_reply._entry_ptr.31, ptr @mpt_lan_receive_post_reply._entry_ptr.33, ptr @mpt_lan_receive_post_reply._entry_ptr.35, ptr @mpt_lan_receive_post_reply._entry_ptr.38, ptr @mpt_lan_receive_post_reply._entry_ptr.41, ptr @mpt_lan_receive_post_reply._entry_ptr.44, ptr @mpt_lan_receive_post_reply._entry_ptr.47, ptr @mpt_lan_receive_post_turbo._entry, ptr @mpt_lan_receive_post_turbo._entry_ptr, ptr @mpt_lan_sdu_send._entry, ptr @mpt_lan_sdu_send._entry.100, ptr @mpt_lan_sdu_send._entry_ptr, ptr @mpt_lan_sdu_send._entry_ptr.101, ptr @mpt_lan_send_reply._entry, ptr @mpt_lan_send_reply._entry_ptr, ptr @mpt_lan_type_trans._entry, ptr @mpt_lan_type_trans._entry.22, ptr @mpt_lan_type_trans._entry_ptr, ptr @mpt_lan_type_trans._entry_ptr.24, ptr @mptlan_probe._entry, ptr @mptlan_probe._entry.63, ptr @mptlan_probe._entry.66, ptr @mptlan_probe._entry.69, ptr @mptlan_probe._entry.72, ptr @mptlan_probe._entry_ptr, ptr @mptlan_probe._entry_ptr.65, ptr @mptlan_probe._entry_ptr.68, ptr @mptlan_probe._entry_ptr.71, ptr @mptlan_probe._entry_ptr.74, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @LanCtx, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @mptlan_driver, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @mpt_register_lan_device.__key, ptr @.str.75, ptr @mpt_register_lan_device.__key.76, ptr @.str.77, ptr @mpt_register_lan_device.__key.78, ptr @.str.79, ptr @mpt_register_lan_device.__key.80, ptr @.str.81, ptr @mpt_netdev_ops, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LanCtx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptlan_driver to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan_reply._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_receive_post_turbo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_type_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_type_trans._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_send_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_receive_post_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_receive_post_reply._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_receive_post_reply._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_receive_post_reply._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_receive_post_reply._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_receive_post_reply._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_receive_post_reply._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_receive_post_reply._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 243, i32 288, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_post_receive_buckets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_post_receive_buckets._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_post_receive_buckets._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_post_receive_buckets._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptlan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptlan_probe._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptlan_probe._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptlan_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptlan_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_register_lan_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_register_lan_device.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_register_lan_device.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_register_lan_device.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_open._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_open._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_open._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_open._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_sdu_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_lan_sdu_send._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mpt_lan_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mpt_device_driver_deregister(i8 noundef zeroext 5) #10
  %0 = load i8, ptr @LanCtx, align 1
  tail call void @mpt_reset_deregister(i8 noundef zeroext %0) #10
  %1 = load i8, ptr @LanCtx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mpt_deregister(i8 noundef zeroext %1) #10
  store i8 16, ptr @LanCtx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_device_driver_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_reset_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mpt_lan_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #13
  %call1 = tail call zeroext i8 @mpt_register(ptr noundef nonnull @lan_reply, i32 noundef 5, ptr noundef nonnull @.str.7) #10
  store i8 %call1, ptr @LanCtx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1)
  %cmp = icmp eq i8 %call1, 0
  br i1 %cmp, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %return

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @mpt_reset_register(i8 noundef zeroext %call1, ptr noundef nonnull @mpt_lan_ioc_reset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %return

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 @mpt_device_driver_register(ptr noundef nonnull @mptlan_driver, i8 noundef zeroext 5) #10
  br label %return

return:                                           ; preds = %if.end14, %do.end11, %do.end4
  %retval.0 = phi i32 [ -16, %do.end4 ], [ -16, %do.end11 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mpt_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan_reply(ptr nocapture noundef readonly %ioc, ptr noundef readnone %mf, ptr noundef %reply) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 93
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %cmp = icmp eq ptr %mf, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %reply to i32
  %and = lshr i32 %2, 27
  %shr = and i32 %and, 3
  %3 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %do.end [
    i32 2, label %sw.bb
    i32 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  %and.i = and i32 %2, 134217727
  %SendCtl.i = getelementptr i8, ptr %1, i32 2428
  %6 = ptrtoint ptr %SendCtl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %SendCtl.i, align 4
  %arrayidx.i = getelementptr %struct.BufferControl, ptr %7, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %10 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %14 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %15, %13
  store i32 %add.i, ptr %tx_bytes.i, align 4
  store ptr null, ptr %arrayidx.i, align 4
  %pcidev.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %5, i32 0, i32 54
  %16 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev.i, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = load ptr, ptr %SendCtl.i, align 4
  %dma.i = getelementptr %struct.BufferControl, ptr %18, i32 %and.i, i32 1
  %19 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma.i, align 4
  %len11.i = getelementptr %struct.BufferControl, ptr %18, i32 %and.i, i32 2
  %21 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len11.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev6.i, i32 noundef %20, i32 noundef %22, i32 noundef 1, i32 noundef 0) #10
  tail call void @__dev_kfree_skb_irq(ptr noundef %9, i32 noundef 1) #10
  %txfidx_lock.i = getelementptr i8, ptr %1, i32 2328
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txfidx_lock.i) #10
  %mpt_txfidx.i = getelementptr i8, ptr %1, i32 2320
  %23 = ptrtoint ptr %mpt_txfidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mpt_txfidx.i, align 4
  %mpt_txfidx_tail.i = getelementptr i8, ptr %1, i32 2324
  %25 = ptrtoint ptr %mpt_txfidx_tail.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mpt_txfidx_tail.i, align 4
  %inc18.i = add i32 %26, 1
  store i32 %inc18.i, ptr %mpt_txfidx_tail.i, align 4
  %arrayidx19.i = getelementptr i32, ptr %24, i32 %inc18.i
  %27 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i, ptr %arrayidx19.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txfidx_lock.i, i32 noundef %call15.i) #10
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %29) #10
  br label %cleanup

sw.bb2:                                           ; preds = %if.then
  %add.ptr.i.i39 = getelementptr i8, ptr %1, i32 2304
  %30 = ptrtoint ptr %add.ptr.i.i39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i.i39, align 4
  %and.i40 = lshr i32 %2, 16
  %shr.i = and i32 %and.i40, 2047
  %RcvCtl.i = getelementptr i8, ptr %1, i32 2424
  %32 = ptrtoint ptr %RcvCtl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %RcvCtl.i, align 4
  %arrayidx.i41 = getelementptr %struct.BufferControl, ptr %33, i32 %shr.i
  %34 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i41, align 4
  %and3.i = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %and3.i)
  %cmp.i = icmp ult i32 %and3.i, 200
  br i1 %cmp.i, label %if.then.i, label %if.end27.i

if.then.i:                                        ; preds = %sw.bb2
  %call.i.i1.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %and3.i, i32 noundef 2592) #10
  %tobool.not.i = icmp eq ptr %call.i.i1.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %add.ptr.i.i39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i.i39, align 4
  %name.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %37, i32 0, i32 2
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i, ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 868) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pcidev.i42 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %31, i32 0, i32 54
  %38 = ptrtoint ptr %pcidev.i42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcidev.i42, align 8
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %RcvCtl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %RcvCtl.i, align 4
  %dma.i43 = getelementptr %struct.BufferControl, ptr %41, i32 %shr.i, i32 1
  %42 = ptrtoint ptr %dma.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma.i43, align 4
  %len17.i = getelementptr %struct.BufferControl, ptr %41, i32 %shr.i, i32 2
  %44 = ptrtoint ptr %len17.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len17.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev12.i, i32 noundef %43, i32 noundef %45, i32 noundef 2) #10
  %call18.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i1.i, i32 noundef %and3.i) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 19
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i, align 4
  %48 = call ptr @memcpy(ptr %call18.i, ptr %47, i32 %and3.i)
  %49 = ptrtoint ptr %pcidev.i42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcidev.i42, align 8
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %RcvCtl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %RcvCtl.i, align 4
  %dma23.i = getelementptr %struct.BufferControl, ptr %52, i32 %shr.i, i32 1
  %53 = ptrtoint ptr %dma23.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma23.i, align 4
  %len26.i = getelementptr %struct.BufferControl, ptr %52, i32 %shr.i, i32 2
  %55 = ptrtoint ptr %len26.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len26.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev20.i, i32 noundef %54, i32 noundef %56, i32 noundef 2) #10
  br label %do.body41.i

if.end27.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %call28.i = tail call ptr @skb_put(ptr noundef %35, i32 noundef %and3.i) #10
  %57 = ptrtoint ptr %RcvCtl.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %RcvCtl.i, align 4
  %arrayidx30.i = getelementptr %struct.BufferControl, ptr %58, i32 %shr.i
  %59 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx30.i, align 4
  %pcidev32.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %31, i32 0, i32 54
  %60 = ptrtoint ptr %pcidev32.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcidev32.i, align 8
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %62 = load ptr, ptr %RcvCtl.i, align 4
  %dma36.i = getelementptr %struct.BufferControl, ptr %62, i32 %shr.i, i32 1
  %63 = ptrtoint ptr %dma36.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma36.i, align 4
  %len39.i = getelementptr %struct.BufferControl, ptr %62, i32 %shr.i, i32 2
  %65 = ptrtoint ptr %len39.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len39.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev33.i, i32 noundef %64, i32 noundef %66, i32 noundef 2, i32 noundef 0) #10
  br label %do.body41.i

do.body41.i:                                      ; preds = %if.end27.i, %if.end.i
  %skb.0.i = phi ptr [ %call.i.i1.i, %if.end.i ], [ %35, %if.end27.i ]
  %rxfidx_lock.i = getelementptr i8, ptr %1, i32 2380
  %call45.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxfidx_lock.i) #10
  %mpt_rxfidx.i = getelementptr i8, ptr %1, i32 2372
  %67 = ptrtoint ptr %mpt_rxfidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mpt_rxfidx.i, align 4
  %mpt_rxfidx_tail.i = getelementptr i8, ptr %1, i32 2376
  %69 = ptrtoint ptr %mpt_rxfidx_tail.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mpt_rxfidx_tail.i, align 4
  %inc.i44 = add i32 %70, 1
  store i32 %inc.i44, ptr %mpt_rxfidx_tail.i, align 4
  %arrayidx50.i = getelementptr i32, ptr %68, i32 %inc.i44
  %71 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shr.i, ptr %arrayidx50.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxfidx_lock.i, i32 noundef %call45.i) #10
  %buckets_out.i = getelementptr i8, ptr %1, i32 2312
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buckets_out.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buckets_out.i, i32 1, i32 3, i32 1) #10
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buckets_out.i, ptr %buckets_out.i, i32 1, ptr elementtype(i32) %buckets_out.i) #10, !srcloc !194
  %total_received.i = getelementptr i8, ptr %1, i32 2444
  %73 = ptrtoint ptr %total_received.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %total_received.i, align 4
  %inc52.i = add i32 %74, 1
  store i32 %inc52.i, ptr %total_received.i, align 4
  tail call fastcc void @mpt_lan_receive_skb(ptr noundef %1, ptr noundef %skb.0.i) #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %Function = getelementptr inbounds %struct._MSG_REQUEST_HEADER, ptr %reply, i32 0, i32 2
  %75 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %Function, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %76, label %do.end23 [
    i8 32, label %sw.bb6
    i8 33, label %sw.bb8
    i8 34, label %if.end.cleanup_crit_edge
    i8 7, label %if.end.cleanup_crit_edge85
    i8 8, label %if.end.cleanup_crit_edge86
  ]

if.end.cleanup_crit_edge86:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge85:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %add.ptr.i.i45 = getelementptr i8, ptr %1, i32 2304
  %78 = ptrtoint ptr %add.ptr.i.i45 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i.i45, align 4
  %NumberOfContexts.i = getelementptr inbounds %struct._MSG_LAN_SEND_REPLY, ptr %reply, i32 0, i32 4
  %80 = ptrtoint ptr %NumberOfContexts.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %NumberOfContexts.i, align 1
  %IOCStatus.i = getelementptr inbounds %struct._MSG_LAN_SEND_REPLY, ptr %reply, i32 0, i32 9
  %82 = ptrtoint ptr %IOCStatus.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %IOCStatus.i, align 2
  %84 = and i16 %83, -129
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #10
  %and.i46 = zext i16 %85 to i32
  %86 = zext i32 %and.i46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %and.i46, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 135, label %sw.bb6.sw.epilog.i_crit_edge
    i32 131, label %sw.bb6.sw.epilog.i_crit_edge87
    i32 3, label %sw.bb4.i
  ]

sw.bb6.sw.epilog.i_crit_edge87:                   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb6.sw.epilog.i_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %tx_packets.i47 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  br label %sw.epilog.sink.split.i

sw.bb4.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %conv5.i = zext i8 %81 to i32
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %87 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_errors.i, align 4
  %add7.i = add i32 %88, %conv5.i
  store i32 %add7.i, ptr %tx_errors.i, align 4
  %name.i48 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %79, i32 0, i32 2
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name.i48, ptr noundef %1) #13
  br label %mpt_lan_send_reply.exit

sw.default.i:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %tx_errors16.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.default.i, %sw.bb.i
  %tx_errors16.sink80.i = phi ptr [ %tx_errors16.i, %sw.default.i ], [ %tx_packets.i47, %sw.bb.i ]
  %conv14.sink.i = zext i8 %81 to i32
  %89 = ptrtoint ptr %tx_errors16.sink80.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tx_errors16.sink80.i, align 4
  %add17.i = add i32 %90, %conv14.sink.i
  store i32 %add17.i, ptr %tx_errors16.sink80.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb6.sw.epilog.i_crit_edge, %sw.bb6.sw.epilog.i_crit_edge87
  %txfidx_lock.i49 = getelementptr i8, ptr %1, i32 2328
  %call23.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txfidx_lock.i49) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp29.not77.i = icmp eq i8 %81, 0
  br i1 %cmp29.not77.i, label %sw.epilog.i.while.end.i_crit_edge, label %while.body.lr.ph.i

sw.epilog.i.while.end.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %sw.epilog.i
  %BufferContext.i = getelementptr inbounds %struct._MSG_LAN_SEND_REPLY, ptr %reply, i32 0, i32 11
  %SendCtl.i50 = getelementptr i8, ptr %1, i32 2428
  %tx_bytes.i51 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %pcidev.i52 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %79, i32 0, i32 54
  %mpt_txfidx.i53 = getelementptr i8, ptr %1, i32 2320
  %mpt_txfidx_tail.i54 = getelementptr i8, ptr %1, i32 2324
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.079.i = phi i8 [ %81, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %pContext.078.i = phi ptr [ %BufferContext.i, %while.body.lr.ph.i ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %91 = ptrtoint ptr %pContext.078.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pContext.078.i, align 4
  %93 = and i32 %92, -249
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #10
  %95 = ptrtoint ptr %SendCtl.i50 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %SendCtl.i50, align 4
  %arrayidx.i55 = getelementptr %struct.BufferControl, ptr %96, i32 %94
  %97 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i55, align 4
  %len.i56 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %len.i56 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i56, align 4
  %101 = ptrtoint ptr %tx_bytes.i51 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tx_bytes.i51, align 4
  %add33.i = add i32 %102, %100
  store i32 %add33.i, ptr %tx_bytes.i51, align 4
  store ptr null, ptr %arrayidx.i55, align 4
  %103 = ptrtoint ptr %pcidev.i52 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pcidev.i52, align 8
  %dev38.i = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  %105 = load ptr, ptr %SendCtl.i50, align 4
  %dma.i57 = getelementptr %struct.BufferControl, ptr %105, i32 %94, i32 1
  %106 = ptrtoint ptr %dma.i57 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma.i57, align 4
  %len43.i = getelementptr %struct.BufferControl, ptr %105, i32 %94, i32 2
  %108 = ptrtoint ptr %len43.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len43.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev38.i, i32 noundef %107, i32 noundef %109, i32 noundef 1, i32 noundef 0) #10
  tail call void @__dev_kfree_skb_irq(ptr noundef %98, i32 noundef 1) #10
  %110 = ptrtoint ptr %mpt_txfidx.i53 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mpt_txfidx.i53, align 4
  %112 = ptrtoint ptr %mpt_txfidx_tail.i54 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mpt_txfidx_tail.i54, align 4
  %inc.i58 = add i32 %113, 1
  store i32 %inc.i58, ptr %mpt_txfidx_tail.i54, align 4
  %arrayidx44.i = getelementptr i32, ptr %111, i32 %inc.i58
  %114 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %94, ptr %arrayidx44.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %pContext.078.i, i32 1
  %dec.i = add i8 %count.079.i, -1
  %cmp29.not.i = icmp eq i8 %dec.i, 0
  br i1 %cmp29.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %sw.epilog.i.while.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txfidx_lock.i49, i32 noundef %call23.i) #10
  br label %mpt_lan_send_reply.exit

mpt_lan_send_reply.exit:                          ; preds = %while.end.i, %sw.bb4.i
  %MsgFlags.i = getelementptr inbounds %struct._MSG_LAN_SEND_REPLY, ptr %reply, i32 0, i32 6
  %115 = ptrtoint ptr %MsgFlags.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %MsgFlags.i, align 1
  %117 = xor i8 %116, -1
  %118 = lshr i8 %117, 7
  %_tx.i.i.i59 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %119 = ptrtoint ptr %_tx.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %_tx.i.i.i59, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %120) #10
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %NumberOfContexts = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REPLY, ptr %reply, i32 0, i32 4
  %121 = ptrtoint ptr %NumberOfContexts to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %NumberOfContexts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not = icmp eq i8 %122, 0
  br i1 %tobool.not, label %sw.bb8.cleanup_crit_edge, label %if.then9

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %sw.bb8
  %add.ptr.i.i60 = getelementptr i8, ptr %1, i32 2304
  %123 = ptrtoint ptr %add.ptr.i.i60 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i.i60, align 4
  %BucketsRemaining.i = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REPLY, ptr %reply, i32 0, i32 11
  %125 = ptrtoint ptr %BucketsRemaining.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %BucketsRemaining.i, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #10
  %IOCStatus.i61 = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REPLY, ptr %reply, i32 0, i32 9
  %128 = ptrtoint ptr %IOCStatus.i61 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %IOCStatus.i61, align 2
  %130 = and i16 %129, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30976, i16 %130)
  %cmp.i62 = icmp eq i16 %130, -30976
  br i1 %cmp.i62, label %for.body.lr.ph.i.i, label %if.end.i64

for.body.lr.ph.i.i:                               ; preds = %if.then9
  %conv.i.i = zext i8 %122 to i32
  %rxfidx_lock.i.i = getelementptr i8, ptr %1, i32 2380
  %call6.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxfidx_lock.i.i) #10
  %RcvCtl.i.i = getelementptr i8, ptr %1, i32 2424
  %pcidev.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %124, i32 0, i32 54
  %mpt_rxfidx.i.i = getelementptr i8, ptr %1, i32 2372
  %mpt_rxfidx_tail.i.i = getelementptr i8, ptr %1, i32 2376
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc22.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct._MSG_LAN_RECEIVE_POST_REPLY, ptr %reply, i32 0, i32 14, i32 %i.02.i.i
  %131 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i.i, align 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #10
  %134 = ptrtoint ptr %RcvCtl.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %RcvCtl.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.BufferControl, ptr %135, i32 %133
  %136 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx11.i.i, align 4
  store ptr null, ptr %arrayidx11.i.i, align 4
  %138 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pcidev.i.i, align 8
  %dev16.i.i = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  %140 = load ptr, ptr %RcvCtl.i.i, align 4
  %dma.i.i = getelementptr %struct.BufferControl, ptr %140, i32 %133, i32 1
  %141 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dma.i.i, align 4
  %len.i.i = getelementptr %struct.BufferControl, ptr %140, i32 %133, i32 2
  %143 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev16.i.i, i32 noundef %142, i32 noundef %144, i32 noundef 2, i32 noundef 0) #10
  tail call void @__dev_kfree_skb_any(ptr noundef %137, i32 noundef 1) #10
  %145 = ptrtoint ptr %mpt_rxfidx.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mpt_rxfidx.i.i, align 4
  %147 = ptrtoint ptr %mpt_rxfidx_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mpt_rxfidx_tail.i.i, align 4
  %inc.i.i = add i32 %148, 1
  store i32 %inc.i.i, ptr %mpt_rxfidx_tail.i.i, align 4
  %arrayidx21.i.i = getelementptr i32, ptr %146, i32 %inc.i.i
  %149 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %133, ptr %arrayidx21.i.i, align 4
  %inc22.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc22.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %mpt_lan_receive_post_free.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

mpt_lan_receive_post_free.exit.i:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxfidx_lock.i.i, i32 noundef %call6.i.i) #10
  %buckets_out.i.i = getelementptr i8, ptr %1, i32 2312
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buckets_out.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buckets_out.i.i, i32 1, i32 3, i32 1) #10
  %150 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buckets_out.i.i, ptr %buckets_out.i.i, i32 %conv.i.i, ptr elementtype(i32) %buckets_out.i.i) #10, !srcloc !194
  br label %mpt_lan_receive_post_reply.exit

if.end.i64:                                       ; preds = %if.then9
  %PacketLength.i = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REPLY, ptr %reply, i32 0, i32 13
  %151 = ptrtoint ptr %PacketLength.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %PacketLength.i, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp5.i = icmp eq i32 %152, 0
  br i1 %cmp5.i, label %do.end.i68, label %if.end22.i

do.end.i68:                                       ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  %name.i65 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %124, i32 0, i32 2
  %call13.i66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name.i65, ptr noundef %1) #13
  %MsgFlags.i67 = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REPLY, ptr %reply, i32 0, i32 6
  %154 = ptrtoint ptr %MsgFlags.i67 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %MsgFlags.i67, align 1
  %conv18.i = zext i8 %155 to i32
  %156 = ptrtoint ptr %IOCStatus.i61 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %IOCStatus.i61, align 2
  %158 = tail call i16 @llvm.bswap.i16(i16 %157) #10
  %conv20.i = zext i16 %158 to i32
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv18.i, i32 noundef %conv20.i) #13
  br label %mpt_lan_receive_post_reply.exit

if.end22.i:                                       ; preds = %if.end.i64
  %BucketContext.i = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REPLY, ptr %reply, i32 0, i32 14
  %159 = ptrtoint ptr %BucketContext.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %BucketContext.i, align 4
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #10
  %conv23.i = zext i8 %122 to i32
  %RcvCtl.i70 = getelementptr i8, ptr %1, i32 2424
  %162 = ptrtoint ptr %RcvCtl.i70 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %RcvCtl.i70, align 4
  %arrayidx24.i = getelementptr %struct.BufferControl, ptr %163, i32 %161
  %164 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %122)
  %cmp27.i = icmp ugt i8 %122, 1
  br i1 %cmp27.i, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %if.end22.i
  %call.i.i5.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %153, i32 noundef 2592) #10
  %tobool.not.i71 = icmp eq ptr %call.i.i5.i, null
  br i1 %tobool.not.i71, label %do.end34.i, label %for.body.lr.ph.i

do.end34.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %add.ptr.i.i60 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %add.ptr.i.i60, align 4
  %name38.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %167, i32 0, i32 2
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name38.i, ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 1018) #13
  br label %mpt_lan_receive_post_reply.exit

for.body.lr.ph.i:                                 ; preds = %if.then29.i
  %rxfidx_lock.i72 = getelementptr i8, ptr %1, i32 2380
  %call50.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxfidx_lock.i72) #10
  %pcidev.i73 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %124, i32 0, i32 54
  %mpt_rxfidx.i74 = getelementptr i8, ptr %1, i32 2372
  %mpt_rxfidx_tail.i75 = getelementptr i8, ptr %1, i32 2376
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %szrem.015.i = phi i32 [ %153, %for.body.lr.ph.i ], [ %sub.i, %for.body.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc85.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx58.i = getelementptr %struct._MSG_LAN_RECEIVE_POST_REPLY, ptr %reply, i32 0, i32 14, i32 %i.014.i
  %168 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx58.i, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #10
  %171 = ptrtoint ptr %RcvCtl.i70 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %RcvCtl.i70, align 4
  %arrayidx60.i = getelementptr %struct.BufferControl, ptr %172, i32 %170
  %173 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx60.i, align 4
  %len64.i = getelementptr %struct.BufferControl, ptr %172, i32 %170, i32 2
  %175 = ptrtoint ptr %len64.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %len64.i, align 4
  %177 = tail call i32 @llvm.smin.i32(i32 %szrem.015.i, i32 %176) #10
  %178 = ptrtoint ptr %pcidev.i73 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pcidev.i73, align 8
  %dev69.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 44
  %dma.i76 = getelementptr %struct.BufferControl, ptr %172, i32 %170, i32 1
  %180 = ptrtoint ptr %dma.i76 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dma.i76, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev69.i, i32 noundef %181, i32 noundef %176, i32 noundef 2) #10
  %call75.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i5.i, i32 noundef %177) #10
  %data.i.i77 = getelementptr inbounds %struct.sk_buff, ptr %174, i32 0, i32 19
  %182 = ptrtoint ptr %data.i.i77 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %data.i.i77, align 4
  %184 = call ptr @memcpy(ptr %call75.i, ptr %183, i32 %177)
  %185 = ptrtoint ptr %pcidev.i73 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pcidev.i73, align 8
  %dev77.i = getelementptr inbounds %struct.pci_dev, ptr %186, i32 0, i32 44
  %187 = ptrtoint ptr %RcvCtl.i70 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %RcvCtl.i70, align 4
  %dma80.i = getelementptr %struct.BufferControl, ptr %188, i32 %170, i32 1
  %189 = ptrtoint ptr %dma80.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %dma80.i, align 4
  %len83.i = getelementptr %struct.BufferControl, ptr %188, i32 %170, i32 2
  %191 = ptrtoint ptr %len83.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len83.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev77.i, i32 noundef %190, i32 noundef %192, i32 noundef 2) #10
  %193 = ptrtoint ptr %mpt_rxfidx.i74 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mpt_rxfidx.i74, align 4
  %195 = ptrtoint ptr %mpt_rxfidx_tail.i75 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %mpt_rxfidx_tail.i75, align 4
  %inc.i78 = add i32 %196, 1
  store i32 %inc.i78, ptr %mpt_rxfidx_tail.i75, align 4
  %arrayidx84.i = getelementptr i32, ptr %194, i32 %inc.i78
  %197 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %170, ptr %arrayidx84.i, align 4
  %sub.i = sub i32 %szrem.015.i, %177
  %inc85.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc85.i, %conv23.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxfidx_lock.i72, i32 noundef %call50.i) #10
  br label %if.end177.i

if.else.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %153)
  %cmp87.i = icmp ult i32 %153, 200
  br i1 %cmp87.i, label %if.then89.i, label %do.body143.i

if.then89.i:                                      ; preds = %if.else.i
  %call.i.i7.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %153, i32 noundef 2592) #10
  %tobool91.not.i = icmp eq ptr %call.i.i7.i, null
  br i1 %tobool91.not.i, label %do.end95.i, label %if.end104.i

do.end95.i:                                       ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  %198 = ptrtoint ptr %add.ptr.i.i60 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %add.ptr.i.i60, align 4
  %name99.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %199, i32 0, i32 2
  %call103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name99.i, ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 1060) #13
  br label %mpt_lan_receive_post_reply.exit

if.end104.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  %pcidev105.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %124, i32 0, i32 54
  %200 = ptrtoint ptr %pcidev105.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pcidev105.i, align 8
  %dev106.i = getelementptr inbounds %struct.pci_dev, ptr %201, i32 0, i32 44
  %202 = ptrtoint ptr %RcvCtl.i70 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %RcvCtl.i70, align 4
  %dma109.i = getelementptr %struct.BufferControl, ptr %203, i32 %161, i32 1
  %204 = ptrtoint ptr %dma109.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %dma109.i, align 4
  %len112.i = getelementptr %struct.BufferControl, ptr %203, i32 %161, i32 2
  %206 = ptrtoint ptr %len112.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %len112.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev106.i, i32 noundef %205, i32 noundef %207, i32 noundef 2) #10
  %call113.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i7.i, i32 noundef %153) #10
  %data.i9.i = getelementptr inbounds %struct.sk_buff, ptr %165, i32 0, i32 19
  %208 = ptrtoint ptr %data.i9.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data.i9.i, align 4
  %210 = call ptr @memcpy(ptr %call113.i, ptr %209, i32 %153)
  %211 = ptrtoint ptr %pcidev105.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pcidev105.i, align 8
  %dev115.i = getelementptr inbounds %struct.pci_dev, ptr %212, i32 0, i32 44
  %213 = ptrtoint ptr %RcvCtl.i70 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %RcvCtl.i70, align 4
  %dma118.i = getelementptr %struct.BufferControl, ptr %214, i32 %161, i32 1
  %215 = ptrtoint ptr %dma118.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %dma118.i, align 4
  %len121.i = getelementptr %struct.BufferControl, ptr %214, i32 %161, i32 2
  %217 = ptrtoint ptr %len121.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %len121.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev115.i, i32 noundef %216, i32 noundef %218, i32 noundef 2) #10
  %rxfidx_lock129.i = getelementptr i8, ptr %1, i32 2380
  %call131.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxfidx_lock129.i) #10
  %mpt_rxfidx136.i = getelementptr i8, ptr %1, i32 2372
  %219 = ptrtoint ptr %mpt_rxfidx136.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %mpt_rxfidx136.i, align 4
  %mpt_rxfidx_tail137.i = getelementptr i8, ptr %1, i32 2376
  %221 = ptrtoint ptr %mpt_rxfidx_tail137.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %mpt_rxfidx_tail137.i, align 4
  %inc138.i = add i32 %222, 1
  store i32 %inc138.i, ptr %mpt_rxfidx_tail137.i, align 4
  %arrayidx139.i = getelementptr i32, ptr %220, i32 %inc138.i
  %223 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %161, ptr %arrayidx139.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxfidx_lock129.i, i32 noundef %call131.i) #10
  br label %if.end177.i

do.body143.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxfidx_lock149.i = getelementptr i8, ptr %1, i32 2380
  %call151.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxfidx_lock149.i) #10
  %224 = ptrtoint ptr %RcvCtl.i70 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %RcvCtl.i70, align 4
  %arrayidx157.i = getelementptr %struct.BufferControl, ptr %225, i32 %161
  %226 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr null, ptr %arrayidx157.i, align 4
  %pcidev159.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %124, i32 0, i32 54
  %227 = ptrtoint ptr %pcidev159.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %pcidev159.i, align 8
  %dev160.i = getelementptr inbounds %struct.pci_dev, ptr %228, i32 0, i32 44
  %229 = load ptr, ptr %RcvCtl.i70, align 4
  %dma163.i = getelementptr %struct.BufferControl, ptr %229, i32 %161, i32 1
  %230 = ptrtoint ptr %dma163.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %dma163.i, align 4
  %len166.i = getelementptr %struct.BufferControl, ptr %229, i32 %161, i32 2
  %232 = ptrtoint ptr %len166.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %len166.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev160.i, i32 noundef %231, i32 noundef %233, i32 noundef 2, i32 noundef 0) #10
  %234 = ptrtoint ptr %RcvCtl.i70 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %RcvCtl.i70, align 4
  %dma169.i = getelementptr %struct.BufferControl, ptr %235, i32 %161, i32 1
  %236 = ptrtoint ptr %dma169.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %dma169.i, align 4
  %mpt_rxfidx170.i = getelementptr i8, ptr %1, i32 2372
  %237 = ptrtoint ptr %mpt_rxfidx170.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mpt_rxfidx170.i, align 4
  %mpt_rxfidx_tail171.i = getelementptr i8, ptr %1, i32 2376
  %239 = ptrtoint ptr %mpt_rxfidx_tail171.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %mpt_rxfidx_tail171.i, align 4
  %inc172.i = add i32 %240, 1
  store i32 %inc172.i, ptr %mpt_rxfidx_tail171.i, align 4
  %arrayidx173.i = getelementptr i32, ptr %238, i32 %inc172.i
  %241 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %161, ptr %arrayidx173.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxfidx_lock149.i, i32 noundef %call151.i) #10
  %call175.i = tail call ptr @skb_put(ptr noundef %165, i32 noundef %153) #10
  br label %if.end177.i

if.end177.i:                                      ; preds = %do.body143.i, %if.end104.i, %for.end.i
  %skb.0.i79 = phi ptr [ %call.i.i5.i, %for.end.i ], [ %call.i.i7.i, %if.end104.i ], [ %165, %do.body143.i ]
  %buckets_out.i80 = getelementptr i8, ptr %1, i32 2312
  %call.i.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buckets_out.i80, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buckets_out.i80, i32 1, i32 3, i32 1) #10
  %242 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buckets_out.i80, ptr %buckets_out.i80, i32 %conv23.i, ptr elementtype(i32) %buckets_out.i80) #10, !srcloc !194
  %total_received.i82 = getelementptr i8, ptr %1, i32 2444
  %243 = ptrtoint ptr %total_received.i82 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %total_received.i82, align 4
  %add.i83 = add i32 %244, %conv23.i
  store i32 %add.i83, ptr %total_received.i82, align 4
  %mpt_rxfidx_tail178.i = getelementptr i8, ptr %1, i32 2376
  %245 = ptrtoint ptr %mpt_rxfidx_tail178.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %mpt_rxfidx_tail178.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %246)
  %cmp179.i = icmp sgt i32 %246, 255
  br i1 %cmp179.i, label %do.end184.i, label %if.end194.i

do.end184.i:                                      ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #12
  %247 = ptrtoint ptr %add.ptr.i.i60 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %add.ptr.i.i60, align 4
  %name188.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %248, i32 0, i32 2
  %call193.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name188.i, ptr noundef %1, i32 noundef %246, i32 noundef 256) #13
  br label %mpt_lan_receive_post_reply.exit

if.end194.i:                                      ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp195.i = icmp eq i32 %126, 0
  br i1 %cmp195.i, label %do.end200.i, label %if.else211.i

do.end200.i:                                      ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #12
  %249 = ptrtoint ptr %add.ptr.i.i60 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %add.ptr.i.i60, align 4
  %name204.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %250, i32 0, i32 2
  %call.i.i1.i84 = tail call zeroext i1 @__kasan_check_read(ptr noundef %buckets_out.i80, i32 noundef 4) #10
  %251 = ptrtoint ptr %buckets_out.i80 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile i32, ptr %buckets_out.i80, align 4
  %call210.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name204.i, ptr noundef %1, i32 noundef %252) #13
  br label %if.end229.i

if.else211.i:                                     ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %127)
  %cmp212.i = icmp ult i32 %127, 10
  br i1 %cmp212.i, label %do.end217.i, label %if.else211.i.if.end229.i_crit_edge

if.else211.i.if.end229.i_crit_edge:               ; preds = %if.else211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end229.i

do.end217.i:                                      ; preds = %if.else211.i
  call void @__sanitizer_cov_trace_pc() #12
  %253 = ptrtoint ptr %add.ptr.i.i60 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %add.ptr.i.i60, align 4
  %name221.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %254, i32 0, i32 2
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buckets_out.i80, i32 noundef 4) #10
  %255 = ptrtoint ptr %buckets_out.i80 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile i32, ptr %buckets_out.i80, align 4
  %call227.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name221.i, ptr noundef %1, i32 noundef %127, i32 noundef %256) #13
  br label %if.end229.i

if.end229.i:                                      ; preds = %do.end217.i, %if.else211.i.if.end229.i_crit_edge, %do.end200.i
  %bucketthresh.i = getelementptr i8, ptr %1, i32 2316
  %257 = ptrtoint ptr %bucketthresh.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %bucketthresh.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %258)
  %cmp230.i = icmp ult i32 %127, %258
  br i1 %cmp230.i, label %land.lhs.true.i, label %if.end229.i.if.end244.i_crit_edge

if.end229.i.if.end244.i_crit_edge:                ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end244.i

land.lhs.true.i:                                  ; preds = %if.end229.i
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buckets_out.i80, i32 noundef 4) #10
  %259 = ptrtoint ptr %buckets_out.i80 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load volatile i32, ptr %buckets_out.i80, align 4
  %sub234.i = sub i32 %260, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub234.i)
  %cmp235.i = icmp ugt i32 %sub234.i, 10
  br i1 %cmp235.i, label %do.end240.i, label %land.lhs.true.i.if.end244.i_crit_edge

land.lhs.true.i.if.end244.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end244.i

do.end240.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call242.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  %call243.i = tail call fastcc i32 @mpt_lan_reset(ptr noundef %1) #10
  tail call fastcc void @mpt_lan_wake_post_buckets_task(ptr noundef %1, i32 noundef 0) #10
  br label %if.end244.i

if.end244.i:                                      ; preds = %do.end240.i, %land.lhs.true.i.if.end244.i_crit_edge, %if.end229.i.if.end244.i_crit_edge
  tail call fastcc void @mpt_lan_receive_skb(ptr noundef %1, ptr noundef %skb.0.i79) #10
  br label %mpt_lan_receive_post_reply.exit

mpt_lan_receive_post_reply.exit:                  ; preds = %if.end244.i, %do.end184.i, %do.end95.i, %do.end34.i, %do.end.i68, %mpt_lan_receive_post_free.exit.i
  %MsgFlags = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REPLY, ptr %reply, i32 0, i32 6
  %261 = ptrtoint ptr %MsgFlags to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %MsgFlags, align 1
  %263 = xor i8 %262, -1
  %264 = lshr i8 %263, 7
  br label %cleanup

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %mpt_lan_receive_post_reply.exit, %sw.bb8.cleanup_crit_edge, %mpt_lan_send_reply.exit, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge85, %if.end.cleanup_crit_edge86, %do.end, %do.body41.i, %do.end.i, %sw.bb
  %retval.0.shrunk = phi i8 [ 0, %do.end ], [ 0, %sw.bb ], [ 1, %do.end23 ], [ %118, %mpt_lan_send_reply.exit ], [ %264, %mpt_lan_receive_post_reply.exit ], [ 0, %sw.bb8.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge85 ], [ 1, %if.end.cleanup_crit_edge86 ], [ 0, %do.end.i ], [ 0, %do.body41.i ]
  %retval.0 = zext i8 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_reset_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpt_lan_ioc_reset(ptr nocapture noundef readonly %ioc, i32 noundef %reset_phase) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 93
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %mpt_rxfidx = getelementptr i8, ptr %1, i32 2372
  %2 = ptrtoint ptr %mpt_rxfidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mpt_rxfidx, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.else.cleanup_crit_edge, label %if.end3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %4 = zext i32 %reset_phase to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %reset_phase, label %if.else23 [
    i32 2, label %if.end3.cleanup_crit_edge
    i32 0, label %if.then8
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %buckets_out = getelementptr i8, ptr %1, i32 2312
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buckets_out, i32 noundef 4) #10
  %7 = ptrtoint ptr %buckets_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %buckets_out, align 4
  %rxfidx_lock = getelementptr i8, ptr %1, i32 2380
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxfidx_lock) #10
  %mpt_rxfidx_tail = getelementptr i8, ptr %1, i32 2376
  %8 = ptrtoint ptr %mpt_rxfidx_tail to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mpt_rxfidx_tail, align 4
  %max_buckets_out = getelementptr i8, ptr %1, i32 2432
  %9 = ptrtoint ptr %max_buckets_out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_buckets_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1742 = icmp sgt i32 %10, 0
  br i1 %cmp1742, label %if.then8.for.body_crit_edge, label %if.then8.for.end_crit_edge

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then8.for.body_crit_edge:                      ; preds = %if.then8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then8.for.body_crit_edge
  %i.043 = phi i32 [ %inc21, %for.body.for.body_crit_edge ], [ 0, %if.then8.for.body_crit_edge ]
  %11 = ptrtoint ptr %mpt_rxfidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mpt_rxfidx, align 4
  %13 = ptrtoint ptr %mpt_rxfidx_tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mpt_rxfidx_tail, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %mpt_rxfidx_tail, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 %inc
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.043, ptr %arrayidx, align 4
  %inc21 = add nuw nsw i32 %i.043, 1
  %16 = ptrtoint ptr %max_buckets_out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_buckets_out, align 4
  %cmp17 = icmp slt i32 %inc21, %17
  br i1 %cmp17, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then8.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxfidx_lock, i32 noundef %call14) #10
  br label %cleanup

if.else23:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mpt_lan_post_receive_buckets(ptr noundef %add.ptr.i)
  %_tx.i.i41 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i41, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %19) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else23, %for.end, %if.end3.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_device_driver_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpt_lan_receive_skb(ptr noundef %dev, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %call.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp.i = icmp eq i16 %6, -1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %add.ptr2.i = getelementptr i32, ptr %1, i32 1
  %11 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr2.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr2.i, align 4
  %add.ptr3.i = getelementptr i32, ptr %1, i32 2
  %15 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr3.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr3.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %1, i32 3
  %19 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr4.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  %22 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr4.i, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %name.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %24, i32 0, i32 2
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name.i) #13
  %saddr.i = getelementptr inbounds %struct.mpt_lan_ohdr, ptr %1, i32 0, i32 3
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %saddr.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %daddr.i = getelementptr inbounds %struct.mpt_lan_ohdr, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %daddr.i, align 2
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.else27.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %bcmp81.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %daddr.i, ptr noundef dereferenceable(6) %broadcast.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp81.i)
  %tobool20.not.i = icmp eq i32 %bcmp81.i, 0
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %28 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  br i1 %tobool20.not.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set.i = or i16 %bf.clear.i, 8192
  %29 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  br label %if.end43.i

if.else.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set25.i = or i16 %bf.clear.i, 16384
  %30 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %bf.set25.i, ptr %pkt_type.i, align 8
  br label %if.end43.i

if.else27.i:                                      ; preds = %if.end.i
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %31 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr.i, align 64
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %daddr.i, ptr noundef dereferenceable(6) %32, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool31.not.i = icmp eq i32 %bcmp.i, 0
  %pkt_type38.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %33 = ptrtoint ptr %pkt_type38.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load39.i = load i16, ptr %pkt_type38.i, align 8
  %bf.clear40.i = and i16 %bf.load39.i, 8191
  br i1 %tobool31.not.i, label %if.else37.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set36.i = or i16 %bf.clear40.i, 24576
  %34 = ptrtoint ptr %pkt_type38.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %bf.set36.i, ptr %pkt_type38.i, align 8
  br label %if.end43.i

if.else37.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %pkt_type38.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %bf.clear40.i, ptr %pkt_type38.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else37.i, %if.then32.i, %if.else.i, %if.then21.i
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %39)
  %cmp46.i = icmp eq i8 %39, -86
  br i1 %cmp46.i, label %land.lhs.true.i, label %if.end43.i.mpt_lan_type_trans.exit_crit_edge

if.end43.i.mpt_lan_type_trans.exit_crit_edge:     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mpt_lan_type_trans.exit

land.lhs.true.i:                                  ; preds = %if.end43.i
  %ethertype.i = getelementptr inbounds %struct.fcllc, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ethertype.i, align 2
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %41, label %land.lhs.true.i.mpt_lan_type_trans.exit_crit_edge [
    i16 2048, label %land.lhs.true.i.if.then55.i_crit_edge
    i16 2054, label %land.lhs.true.i.if.then55.i_crit_edge3
  ]

land.lhs.true.i.if.then55.i_crit_edge3:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55.i

land.lhs.true.i.if.then55.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55.i

land.lhs.true.i.mpt_lan_type_trans.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mpt_lan_type_trans.exit

if.then55.i:                                      ; preds = %land.lhs.true.i.if.then55.i_crit_edge, %land.lhs.true.i.if.then55.i_crit_edge3
  %call56.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #10
  %43 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ethertype.i, align 2
  br label %mpt_lan_type_trans.exit

mpt_lan_type_trans.exit:                          ; preds = %if.then55.i, %land.lhs.true.i.mpt_lan_type_trans.exit_crit_edge, %if.end43.i.mpt_lan_type_trans.exit_crit_edge
  %retval.0.i = phi i16 [ %44, %if.then55.i ], [ 4, %land.lhs.true.i.mpt_lan_type_trans.exit_crit_edge ], [ 4, %if.end43.i.mpt_lan_type_trans.exit_crit_edge ]
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %45 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %retval.0.i, ptr %protocol, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %48 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %49, %47
  store i32 %add, ptr %rx_bytes, align 8
  %50 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stats, align 8
  %inc = add i32 %51, 1
  store i32 %inc, ptr %stats, align 8
  %52 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %52, align 8
  %call3 = tail call i32 @netif_rx(ptr noundef %skb) #10
  %buckets_out = getelementptr i8, ptr %dev, i32 2312
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buckets_out, i32 noundef 4) #10
  %54 = ptrtoint ptr %buckets_out to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %buckets_out, align 4
  %bucketthresh = getelementptr i8, ptr %dev, i32 2316
  %56 = ptrtoint ptr %bucketthresh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bucketthresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp = icmp slt i32 %55, %57
  br i1 %cmp, label %if.then, label %mpt_lan_type_trans.exit.if.end_crit_edge

mpt_lan_type_trans.exit.if.end_crit_edge:         ; preds = %mpt_lan_type_trans.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %mpt_lan_type_trans.exit
  %post_buckets_active.i = getelementptr i8, ptr %dev, i32 2552
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %post_buckets_active.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i1 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i1, label %if.then.i2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i2:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %post_buckets_task4.i = getelementptr i8, ptr %dev, i32 2448
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %58 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %post_buckets_task4.i, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i2, %if.then.if.end_crit_edge, %mpt_lan_type_trans.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpt_lan_wake_post_buckets_task(ptr noundef %dev, i32 noundef %priority) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %post_buckets_active = getelementptr i8, ptr %dev, i32 2552
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %post_buckets_active) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %priority)
  %tobool.not = icmp eq i32 %priority, 0
  %post_buckets_task4 = getelementptr i8, ptr %dev, i32 2448
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %. = zext i1 %tobool.not to i32
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %post_buckets_task4, i32 noundef %.) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpt_lan_reset(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = load i8, ptr @LanCtx, align 1
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call ptr @mpt_get_msg_frame(i8 noundef zeroext %0, ptr noundef %2) #10
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %Function = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1, i32 0, i32 2
  %3 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 34, ptr %Function, align 1
  %ChainOffset = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %ChainOffset to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ChainOffset, align 2
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %call1, align 4
  %pnum = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %pnum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pnum, align 4
  %PortNumber = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1, i32 0, i32 4
  %8 = ptrtoint ptr %PortNumber to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %PortNumber, align 2
  %MsgFlags = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1, i32 0, i32 5
  %9 = ptrtoint ptr %MsgFlags to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %MsgFlags, align 1
  %Reserved2 = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1, i32 0, i32 3
  %10 = ptrtoint ptr %Reserved2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %Reserved2, align 4
  %11 = load i8, ptr @LanCtx, align 1
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void @mpt_put_msg_frame(i8 noundef zeroext %11, ptr noundef %13, ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt_get_msg_frame(i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_put_msg_frame(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpt_lan_post_receive_buckets(ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mpt_lan_priv, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %7 to i32
  %add = add i32 %5, 4
  %add3 = add i32 %add, %conv
  %buckets_out = getelementptr inbounds %struct.mpt_lan_priv, ptr %priv, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buckets_out, i32 noundef 4) #10
  %8 = ptrtoint ptr %buckets_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %buckets_out, align 4
  %max_buckets_out = getelementptr inbounds %struct.mpt_lan_priv, ptr %priv, i32 0, i32 12
  %10 = ptrtoint ptr %max_buckets_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_buckets_out, align 4
  %sub = sub i32 %11, %9
  %req_sz = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 45
  %12 = ptrtoint ptr %req_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req_sz, align 8
  %sub4 = add i32 %13, -16
  %div = udiv i32 %sub4, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not224 = icmp eq i32 %sub, 0
  br i1 %tobool.not224, label %entry.out_crit_edge, label %while.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %RequestNB = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 35
  %pnum = getelementptr inbounds %struct.mpt_lan_priv, ptr %priv, i32 0, i32 1
  %rxfidx_lock = getelementptr inbounds %struct.mpt_lan_priv, ptr %priv, i32 0, i32 9
  %mpt_rxfidx_tail = getelementptr inbounds %struct.mpt_lan_priv, ptr %priv, i32 0, i32 8
  %mpt_rxfidx = getelementptr inbounds %struct.mpt_lan_priv, ptr %priv, i32 0, i32 7
  %RcvCtl = getelementptr inbounds %struct.mpt_lan_priv, ptr %priv, i32 0, i32 10
  %pcidev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 54
  %or = or i32 %add3, 1375731712
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %total_posted = getelementptr inbounds %struct.mpt_lan_priv, ptr %priv, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %if.end108.while.body_crit_edge, %while.body.lr.ph
  %buckets.0225 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub112, %if.end108.while.body_crit_edge ]
  %15 = load i8, ptr @LanCtx, align 1
  %call5 = tail call ptr @mpt_get_msg_frame(i8 noundef zeroext %15, ptr noundef %3) #10
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #13
  br label %out

if.end:                                           ; preds = %while.body
  %msgctxu = getelementptr inbounds %struct.anon.123, ptr %call5, i32 0, i32 1
  %16 = ptrtoint ptr %msgctxu to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %msgctxu, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv10 = zext i16 %18 to i32
  %19 = ptrtoint ptr %RequestNB to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %RequestNB, align 4
  %arrayidx = getelementptr i32, ptr %20, i32 %conv10
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %buckets.0225, i32 %div)
  %Function = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REQUEST, ptr %call5, i32 0, i32 2
  %23 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 33, ptr %Function, align 1
  %ChainOffset = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REQUEST, ptr %call5, i32 0, i32 1
  %24 = ptrtoint ptr %ChainOffset to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ChainOffset, align 2
  %MsgFlags = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REQUEST, ptr %call5, i32 0, i32 5
  %25 = ptrtoint ptr %MsgFlags to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %MsgFlags, align 1
  %26 = ptrtoint ptr %pnum to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pnum, align 4
  %PortNumber = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REQUEST, ptr %call5, i32 0, i32 4
  %28 = ptrtoint ptr %PortNumber to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %PortNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp15218.not = icmp eq i32 %22, 0
  br i1 %cmp15218.not, label %if.end.do.end105_crit_edge, label %for.body.preheader

if.end.do.end105_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end105

for.body.preheader:                               ; preds = %if.end
  %SG_List = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REQUEST, ptr %call5, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %pTrans.0222 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %SG_List, %for.body.preheader ]
  %pSimple.0221 = phi ptr [ %TransactionDetails, %for.inc.for.body_crit_edge ], [ null, %for.body.preheader ]
  %i.0219 = phi i32 [ %inc99, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxfidx_lock) #10
  %29 = ptrtoint ptr %mpt_rxfidx_tail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mpt_rxfidx_tail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp28 = icmp slt i32 %30, 0
  br i1 %cmp28, label %do.end33, label %if.end37

do.end33:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49) #13
  br label %for.end.sink.split

if.end37:                                         ; preds = %for.body
  %31 = ptrtoint ptr %mpt_rxfidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mpt_rxfidx, align 4
  %dec = add nsw i32 %30, -1
  %33 = ptrtoint ptr %mpt_rxfidx_tail to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dec, ptr %mpt_rxfidx_tail, align 4
  %arrayidx39 = getelementptr i32, ptr %32, i32 %30
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx39, align 4
  %36 = ptrtoint ptr %RcvCtl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %RcvCtl, align 4
  %arrayidx40 = getelementptr %struct.BufferControl, ptr %37, i32 %35
  %38 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx40, align 4
  %tobool42.not = icmp eq ptr %39, null
  br i1 %tobool42.not, label %if.end37.if.then65_crit_edge, label %land.lhs.true

if.end37.if.then65_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

land.lhs.true:                                    ; preds = %if.end37
  %len45 = getelementptr %struct.BufferControl, ptr %37, i32 %35, i32 2
  %40 = ptrtoint ptr %len45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add3)
  %cmp46.not = icmp eq i32 %41, %add3
  br i1 %cmp46.not, label %land.lhs.true.for.inc_crit_edge, label %if.then48

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcidev, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %dma52 = getelementptr %struct.BufferControl, ptr %37, i32 %35, i32 1
  %44 = ptrtoint ptr %dma52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma52, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev49, i32 noundef %45, i32 noundef %41, i32 noundef 2, i32 noundef 0) #10
  %46 = ptrtoint ptr %RcvCtl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %RcvCtl, align 4
  %arrayidx57 = getelementptr %struct.BufferControl, ptr %47, i32 %35
  %48 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx57, align 4
  tail call void @consume_skb(ptr noundef %49) #10
  %50 = ptrtoint ptr %RcvCtl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %RcvCtl, align 4
  %arrayidx60 = getelementptr %struct.BufferControl, ptr %51, i32 %35
  %52 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx60, align 4
  br label %if.then65

if.then65:                                        ; preds = %if.then48, %if.end37.if.then65_crit_edge
  %call.i.i201 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add3, i32 noundef 2592) #10
  %cmp67 = icmp eq ptr %call.i.i201, null
  br i1 %cmp67, label %do.end72, label %if.end79

do.end72:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.49) #13
  %53 = ptrtoint ptr %mpt_rxfidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mpt_rxfidx, align 4
  %55 = ptrtoint ptr %mpt_rxfidx_tail to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mpt_rxfidx_tail, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %mpt_rxfidx_tail, align 4
  %arrayidx77 = getelementptr i32, ptr %54, i32 %inc
  %57 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %35, ptr %arrayidx77, align 4
  br label %for.end.sink.split

if.end79:                                         ; preds = %if.then65
  %58 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcidev, align 8
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i201, i32 0, i32 19
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %61) #10
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end79
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !195

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev81) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44, i32 3
  %62 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev81, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %65, %if.end.i.i ], [ %63, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev81, ptr noundef %61, i32 noundef %add3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %66 = load ptr, ptr @mem_map, align 4
  %67 = ptrtoint ptr %61 to i32
  %sub.i = add i32 %67, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %66, i32 %shr.i
  %and.i = and i32 %67, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev81, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %add3, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %68 = ptrtoint ptr %RcvCtl to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %RcvCtl, align 4
  %arrayidx84 = getelementptr %struct.BufferControl, ptr %69, i32 %35
  %70 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i201, ptr %arrayidx84, align 4
  %71 = load ptr, ptr %RcvCtl, align 4
  %dma88 = getelementptr %struct.BufferControl, ptr %71, i32 %35, i32 1
  %72 = ptrtoint ptr %dma88 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i, ptr %dma88, align 4
  %73 = load ptr, ptr %RcvCtl, align 4
  %len91 = getelementptr %struct.BufferControl, ptr %73, i32 %35, i32 2
  %74 = ptrtoint ptr %len91 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add3, ptr %len91, align 4
  br label %for.inc

for.inc:                                          ; preds = %dma_map_single_attrs.exit, %land.lhs.true.for.inc_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxfidx_lock, i32 noundef %call23) #10
  %ContextSize = getelementptr inbounds %struct._SGE_TRANSACTION32, ptr %pTrans.0222, i32 0, i32 1
  %75 = ptrtoint ptr %ContextSize to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %ContextSize, align 1
  %DetailsLength = getelementptr inbounds %struct._SGE_TRANSACTION32, ptr %pTrans.0222, i32 0, i32 2
  %76 = ptrtoint ptr %DetailsLength to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %DetailsLength, align 2
  %Flags = getelementptr inbounds %struct._SGE_TRANSACTION32, ptr %pTrans.0222, i32 0, i32 3
  %77 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %Flags, align 1
  %78 = tail call i32 @llvm.bswap.i32(i32 %35)
  %TransactionContext = getelementptr inbounds %struct._SGE_TRANSACTION32, ptr %pTrans.0222, i32 0, i32 4
  %79 = ptrtoint ptr %TransactionContext to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %TransactionContext, align 4
  %TransactionDetails = getelementptr inbounds %struct._SGE_TRANSACTION32, ptr %pTrans.0222, i32 0, i32 5
  %80 = ptrtoint ptr %TransactionDetails to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %14, ptr %TransactionDetails, align 4
  %81 = ptrtoint ptr %RcvCtl to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %RcvCtl, align 4
  %dma97 = getelementptr %struct.BufferControl, ptr %82, i32 %35, i32 1
  %83 = ptrtoint ptr %dma97 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma97, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %Address = getelementptr inbounds %struct._SGE_TRANSACTION32, ptr %pTrans.0222, i32 1, i32 4
  %86 = ptrtoint ptr %Address to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %Address, align 4
  %High = getelementptr inbounds %struct._SGE_TRANSACTION32, ptr %pTrans.0222, i32 2
  %87 = ptrtoint ptr %High to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %High, align 4
  %add.ptr = getelementptr %struct._SGE_TRANSACTION32, ptr %pTrans.0222, i32 2, i32 4
  %inc99 = add nuw nsw i32 %i.0219, 1
  %exitcond.not = icmp eq i32 %inc99, %22
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end.sink.split:                               ; preds = %do.end72, %do.end33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxfidx_lock, i32 noundef %call23) #10
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.inc.for.end_crit_edge
  %i.0213 = phi i32 [ %i.0219, %for.end.sink.split ], [ %22, %for.inc.for.end_crit_edge ]
  %pSimple.0210 = phi ptr [ %pSimple.0221, %for.end.sink.split ], [ %TransactionDetails, %for.inc.for.end_crit_edge ]
  %cmp100 = icmp eq ptr %pSimple.0210, null
  br i1 %cmp100, label %for.end.do.end105_crit_edge, label %if.end108

for.end.do.end105_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end105

do.end105:                                        ; preds = %for.end.do.end105_crit_edge, %if.end.do.end105_crit_edge
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.49) #13
  tail call void @mpt_free_msg_frame(ptr noundef %3, ptr noundef nonnull %call5) #10
  br label %out

if.end108:                                        ; preds = %for.end
  %88 = ptrtoint ptr %pSimple.0210 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pSimple.0210, align 4
  %or110 = or i32 %89, 1
  store i32 %or110, ptr %pSimple.0210, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %i.0213)
  %BucketCount = getelementptr inbounds %struct._MSG_LAN_RECEIVE_POST_REQUEST, ptr %call5, i32 0, i32 7
  %91 = ptrtoint ptr %BucketCount to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %BucketCount, align 4
  %92 = load i8, ptr @LanCtx, align 1
  tail call void @mpt_put_msg_frame(i8 noundef zeroext %92, ptr noundef %3, ptr noundef nonnull %call5) #10
  %93 = ptrtoint ptr %total_posted to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %total_posted, align 4
  %add111 = add i32 %94, %i.0213
  store i32 %add111, ptr %total_posted, align 4
  %sub112 = sub i32 %buckets.0225, %i.0213
  %call.i.i200 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buckets_out, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buckets_out, i32 1, i32 3, i32 1) #10
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buckets_out, ptr %buckets_out, i32 %i.0213, ptr elementtype(i32) %buckets_out) #10, !srcloc !196
  %tobool.not = icmp eq i32 %sub112, 0
  br i1 %tobool.not, label %if.end108.out_crit_edge, label %if.end108.while.body_crit_edge

if.end108.while.body_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end108.out_crit_edge:                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end108.out_crit_edge, %do.end105, %do.end, %entry.out_crit_edge
  %post_buckets_active = getelementptr inbounds %struct.mpt_lan_priv, ptr %priv, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %post_buckets_active) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_free_msg_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptlan_probe(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  %HWaddr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %NumberOfPorts = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 77, i32 20
  %2 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %NumberOfPorts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp113.not = icmp eq i8 %3, 0
  br i1 %cmp113.not, label %entry.cleanup_crit_edge, label %do.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.lr.ph:                                     ; preds = %entry
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %HWaddr.i, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %HWaddr.i, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %HWaddr.i, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %HWaddr.i, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %HWaddr.i, i32 0, i32 5
  %MaxLanBuckets.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 78, i32 0, i32 17
  %HardwareAddressLow.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 81, i32 6
  %arrayidx40.i = getelementptr i8, ptr %HardwareAddressLow.i, i32 5
  %arrayidx42.i = getelementptr %struct._MPT_ADAPTER, ptr %1, i32 0, i32 81, i32 7
  %arrayidx44.i = getelementptr i8, ptr %HardwareAddressLow.i, i32 3
  %arrayidx46.i = getelementptr i8, ptr %HardwareAddressLow.i, i32 2
  %arrayidx48.i = getelementptr i8, ptr %HardwareAddressLow.i, i32 1
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.end.lr.ph
  %i.0114 = phi i32 [ 0, %do.end.lr.ph ], [ %inc, %for.inc.do.end_crit_edge ]
  %PortNumber = getelementptr %struct._MPT_ADAPTER, ptr %1, i32 0, i32 78, i32 %i.0114, i32 4
  %9 = ptrtoint ptr %PortNumber to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %PortNumber, align 2
  %conv2 = zext i8 %10 to i32
  %ProtocolFlags = getelementptr %struct._MPT_ADAPTER, ptr %1, i32 0, i32 78, i32 %i.0114, i32 14
  %11 = ptrtoint ptr %ProtocolFlags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ProtocolFlags, align 2
  %conv5 = zext i16 %12 to i32
  %and = and i32 %conv5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 105, i32 73
  %and14 = and i32 %conv5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond16 = select i1 %tobool15.not, i32 116, i32 84
  %and21 = and i32 %conv5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, i32 108, i32 76
  %and28 = and i32 %conv5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %cond30 = select i1 %tobool29.not, i32 98, i32 66
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %conv2, i32 noundef %conv5, i32 noundef %cond, i32 noundef %cond16, i32 noundef %cond23, i32 noundef %cond30) #13
  %13 = ptrtoint ptr %ProtocolFlags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ProtocolFlags, align 2
  %15 = and i16 %14, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool37.not = icmp eq i16 %15, 0
  br i1 %tobool37.not, label %do.end40, label %if.end

do.end40:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name) #13
  br label %for.inc

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %HWaddr.i) #10
  %16 = call ptr @memset(ptr %HWaddr.i, i32 255, i32 6)
  %call.i = call ptr @alloc_fcdev(i32 noundef 252) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.do.end50_crit_edge, label %if.end.i

if.end.do.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

if.end.i:                                         ; preds = %if.end
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 20
  %17 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 13312, ptr %mtu.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 2304
  %dev2.i = getelementptr i8, ptr %call.i, i32 2548
  %18 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %dev2.i, align 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %add.ptr.i.i, align 4
  %conv.i = trunc i32 %i.0114 to i8
  %pnum4.i = getelementptr i8, ptr %call.i, i32 2308
  %20 = ptrtoint ptr %pnum4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %pnum4.i, align 4
  %post_buckets_task.i = getelementptr i8, ptr %call.i, i32 2448
  call void @__init_work(ptr noundef %post_buckets_task.i, i32 noundef 0) #10
  %21 = ptrtoint ptr %post_buckets_task.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %post_buckets_task.i, align 4
  %lockdep_map.i = getelementptr i8, ptr %call.i, i32 2464
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @mpt_register_lan_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry12.i = getelementptr i8, ptr %call.i, i32 2452
  %22 = ptrtoint ptr %entry12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry12.i, ptr %entry12.i, align 4
  %prev.i.i = getelementptr i8, ptr %call.i, i32 2456
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry12.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %call.i, i32 2460
  %24 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mpt_lan_post_receive_buckets_work, ptr %func.i, align 4
  %timer.i = getelementptr i8, ptr %call.i, i32 2492
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.77, ptr noundef nonnull @mpt_register_lan_device.__key.76) #10
  %post_buckets_active.i = getelementptr i8, ptr %call.i, i32 2552
  %25 = ptrtoint ptr %post_buckets_active.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %post_buckets_active.i, align 4
  %buckets_out.i = getelementptr i8, ptr %call.i, i32 2312
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %buckets_out.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %buckets_out.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %buckets_out.i, align 4
  %total_posted.i = getelementptr i8, ptr %call.i, i32 2440
  %27 = ptrtoint ptr %total_posted.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %total_posted.i, align 4
  %total_received.i = getelementptr i8, ptr %call.i, i32 2444
  %28 = ptrtoint ptr %total_received.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %total_received.i, align 4
  %max_buckets_out.i = getelementptr i8, ptr %call.i, i32 2432
  %29 = ptrtoint ptr %max_buckets_out.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 127, ptr %max_buckets_out.i, align 4
  %30 = ptrtoint ptr %MaxLanBuckets.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %MaxLanBuckets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %31)
  %cmp.i = icmp ult i16 %31, 127
  br i1 %cmp.i, label %if.then23.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv21.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %max_buckets_out.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv21.i, ptr %max_buckets_out.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %if.end.i.if.end29.i_crit_edge
  %33 = ptrtoint ptr %max_buckets_out.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_buckets_out.i, align 4
  %mul.i = shl i32 %34, 1
  %div.i = sdiv i32 %mul.i, 3
  %bucketthresh.i = getelementptr i8, ptr %call.i, i32 2316
  %35 = ptrtoint ptr %bucketthresh.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div.i, ptr %bucketthresh.i, align 4
  %txfidx_lock.i = getelementptr i8, ptr %call.i, i32 2328
  call void @__raw_spin_lock_init(ptr noundef %txfidx_lock.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @mpt_register_lan_device.__key.78, i16 noundef signext 3) #10
  %rxfidx_lock.i = getelementptr i8, ptr %call.i, i32 2380
  call void @__raw_spin_lock_init(ptr noundef %rxfidx_lock.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @mpt_register_lan_device.__key.80, i16 noundef signext 3) #10
  %36 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx40.i, align 1
  %38 = ptrtoint ptr %HWaddr.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %HWaddr.i, align 1
  %39 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx42.i, align 1
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %4, align 1
  %42 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx44.i, align 1
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %5, align 1
  %45 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx46.i, align 1
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %6, align 1
  %48 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx48.i, align 1
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %7, align 1
  %51 = ptrtoint ptr %HardwareAddressLow.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %HardwareAddressLow.i, align 1
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %8, align 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 56
  %54 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 6, ptr %addr_len.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %HWaddr.i, i32 noundef 6) #10
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 99
  %55 = call ptr @memset(ptr %broadcast.i, i32 255, i32 6)
  %tx_max_out.i = getelementptr i8, ptr %call.i, i32 2436
  %56 = ptrtoint ptr %tx_max_out.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 111, ptr %tx_max_out.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 16
  %57 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @mpt_netdev_ops, ptr %netdev_ops.i, align 8
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 115
  %58 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 100, ptr %watchdog_timeo.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 30
  %59 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 96, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 31
  %60 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 65280, ptr %max_mtu.i, align 4
  %call56.i = call i32 @register_netdev(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.not.i = icmp eq i32 %call56.i, 0
  br i1 %cmp57.not.i, label %do.end62, label %if.then59.i

if.then59.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @free_netdev(ptr noundef nonnull %call.i) #10
  br label %do.end50

do.end50:                                         ; preds = %if.then59.i, %if.end.do.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %HWaddr.i) #10
  %61 = ptrtoint ptr %PortNumber to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %PortNumber, align 2
  %conv57 = zext i8 %62 to i32
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name, i32 noundef %conv57) #13
  br label %for.inc

do.end62:                                         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.le = getelementptr i8, ptr %call.i, i32 2304
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %HWaddr.i) #10
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name, ptr noundef nonnull %call.i) #13
  %63 = ptrtoint ptr %add.ptr.i.i.le to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i.i.le, align 4
  %name74 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %64, i32 0, i32 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 86
  %65 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_addr, align 64
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name74, ptr noundef nonnull %call.i, ptr noundef %66) #13
  %netdev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 93
  %67 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i, ptr %netdev, align 4
  br label %cleanup

for.inc:                                          ; preds = %do.end50, %do.end40
  %inc = add nuw nsw i32 %i.0114, 1
  %68 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %NumberOfPorts, align 2
  %conv = zext i8 %69 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.do.end_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end62, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end62 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptlan_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 93
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_netdev(ptr noundef nonnull %3) #10
  tail call void @free_netdev(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_fcdev(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpt_lan_post_receive_buckets_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -144
  tail call fastcc void @mpt_lan_post_receive_buckets(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpt_lan_open(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = load i8, ptr @LanCtx, align 1
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %call1.i = tail call ptr @mpt_get_msg_frame(i8 noundef zeroext %0, ptr noundef %2) #10
  %cmp.i = icmp eq ptr %call1.i, null
  br i1 %cmp.i, label %if.then, label %mpt_lan_reset.exit.thread

mpt_lan_reset.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %Function.i = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1.i, i32 0, i32 2
  %3 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 34, ptr %Function.i, align 1
  %ChainOffset.i = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1.i, i32 0, i32 1
  %4 = ptrtoint ptr %ChainOffset.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ChainOffset.i, align 2
  %5 = ptrtoint ptr %call1.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %call1.i, align 4
  %pnum.i = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pnum.i, align 4
  %PortNumber.i = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1.i, i32 0, i32 4
  %8 = ptrtoint ptr %PortNumber.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %PortNumber.i, align 2
  %MsgFlags.i = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1.i, i32 0, i32 5
  %9 = ptrtoint ptr %MsgFlags.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %MsgFlags.i, align 1
  %Reserved2.i = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1.i, i32 0, i32 3
  %10 = ptrtoint ptr %Reserved2.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %Reserved2.i, align 4
  %11 = load i8, ptr @LanCtx, align 1
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void @mpt_put_msg_frame(i8 noundef zeroext %11, ptr noundef %13, ptr noundef nonnull %call1.i) #10
  br label %if.end15

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #13
  %active = getelementptr inbounds %struct._MPT_ADAPTER, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.end12, label %do.end7

do.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #13
  br label %if.end15

do.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %do.end7, %mpt_lan_reset.exit.thread
  %tx_max_out = getelementptr i8, ptr %dev, i32 2436
  %18 = ptrtoint ptr %tx_max_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_max_out, align 4
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #10
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !197

kmalloc_array.exit.thread:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %mpt_txfidx207 = getelementptr i8, ptr %dev, i32 2320
  %22 = ptrtoint ptr %mpt_txfidx207 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %mpt_txfidx207, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %if.end15
  %23 = extractvalue { i32, i1 } %20, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #15
  %mpt_txfidx = getelementptr i8, ptr %dev, i32 2320
  %24 = ptrtoint ptr %mpt_txfidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i, ptr %mpt_txfidx, align 4
  %cmp18 = icmp eq ptr %call8.i, null
  br i1 %cmp18, label %if.end7.i.cleanup_crit_edge, label %if.end20

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end7.i
  %mpt_txfidx_tail = getelementptr i8, ptr %dev, i32 2324
  %25 = ptrtoint ptr %mpt_txfidx_tail to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %mpt_txfidx_tail, align 4
  %26 = ptrtoint ptr %tx_max_out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_max_out, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 12) #10
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !197

kcalloc.exit.thread:                              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %SendCtl215 = getelementptr i8, ptr %dev, i32 2428
  br label %out_mpt_txfidx.sink.split

if.end7.i.i:                                      ; preds = %if.end20
  %30 = extractvalue { i32, i1 } %28, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #15
  %SendCtl = getelementptr i8, ptr %dev, i32 2428
  %31 = ptrtoint ptr %SendCtl to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i, ptr %SendCtl, align 4
  %cmp24 = icmp eq ptr %call8.i.i, null
  br i1 %cmp24, label %if.end7.i.i.out_mpt_txfidx_crit_edge, label %for.cond.preheader

if.end7.i.i.out_mpt_txfidx_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mpt_txfidx

for.cond.preheader:                               ; preds = %if.end7.i.i
  %32 = ptrtoint ptr %tx_max_out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_max_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp28228 = icmp sgt i32 %33, 0
  br i1 %cmp28228, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0229 = phi i32 [ %inc31, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %34 = ptrtoint ptr %mpt_txfidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mpt_txfidx, align 4
  %36 = ptrtoint ptr %mpt_txfidx_tail to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mpt_txfidx_tail, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %mpt_txfidx_tail, align 4
  %arrayidx = getelementptr i32, ptr %35, i32 %inc
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.0229, ptr %arrayidx, align 4
  %inc31 = add nuw nsw i32 %i.0229, 1
  %39 = ptrtoint ptr %tx_max_out to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_max_out, align 4
  %cmp28 = icmp slt i32 %inc31, %40
  br i1 %cmp28, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %max_buckets_out = getelementptr i8, ptr %dev, i32 2432
  %41 = ptrtoint ptr %max_buckets_out to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_buckets_out, align 4
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 4) #10
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %kmalloc_array.exit169.thread, label %if.end7.i167, !prof !197

kmalloc_array.exit169.thread:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %mpt_rxfidx218 = getelementptr i8, ptr %dev, i32 2372
  br label %out_SendCtl.sink.split

if.end7.i167:                                     ; preds = %for.end
  %45 = extractvalue { i32, i1 } %43, 0
  %call8.i166 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3264) #15
  %mpt_rxfidx = getelementptr i8, ptr %dev, i32 2372
  %46 = ptrtoint ptr %mpt_rxfidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i166, ptr %mpt_rxfidx, align 4
  %cmp35 = icmp eq ptr %call8.i166, null
  br i1 %cmp35, label %if.end7.i167.out_SendCtl_crit_edge, label %if.end37

if.end7.i167.out_SendCtl_crit_edge:               ; preds = %if.end7.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_SendCtl

if.end37:                                         ; preds = %if.end7.i167
  %mpt_rxfidx_tail = getelementptr i8, ptr %dev, i32 2376
  %47 = ptrtoint ptr %mpt_rxfidx_tail to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %mpt_rxfidx_tail, align 4
  %48 = ptrtoint ptr %max_buckets_out to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_buckets_out, align 4
  %50 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 12) #10
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %kcalloc.exit202.thread, label %if.end7.i.i200, !prof !197

kcalloc.exit202.thread:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %RcvCtl226 = getelementptr i8, ptr %dev, i32 2424
  %52 = ptrtoint ptr %RcvCtl226 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %RcvCtl226, align 4
  br label %out_mpt_rxfidx

if.end7.i.i200:                                   ; preds = %if.end37
  %53 = extractvalue { i32, i1 } %50, 0
  %call8.i.i199 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %53, i32 noundef 3520) #15
  %RcvCtl = getelementptr i8, ptr %dev, i32 2424
  %54 = ptrtoint ptr %RcvCtl to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call8.i.i199, ptr %RcvCtl, align 4
  %cmp41 = icmp eq ptr %call8.i.i199, null
  br i1 %cmp41, label %if.end7.i.i200.out_mpt_rxfidx_crit_edge, label %for.cond44.preheader

if.end7.i.i200.out_mpt_rxfidx_crit_edge:          ; preds = %if.end7.i.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mpt_rxfidx

for.cond44.preheader:                             ; preds = %if.end7.i.i200
  %55 = ptrtoint ptr %max_buckets_out to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_buckets_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp46230 = icmp sgt i32 %56, 0
  br i1 %cmp46230, label %for.cond44.preheader.for.body47_crit_edge, label %for.cond44.preheader.for.cond56.preheader_crit_edge

for.cond44.preheader.for.cond56.preheader_crit_edge: ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond56.preheader

for.cond44.preheader.for.body47_crit_edge:        ; preds = %for.cond44.preheader
  br label %for.body47

for.cond56.preheader:                             ; preds = %for.body47.for.cond56.preheader_crit_edge, %for.cond44.preheader.for.cond56.preheader_crit_edge
  tail call fastcc void @mpt_lan_post_receive_buckets(ptr noundef %add.ptr.i)
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %58, i32 0, i32 2
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name, ptr noundef %dev) #13
  %59 = load i8, ptr @LanCtx, align 1
  %call75 = tail call i32 @mpt_event_register(i8 noundef zeroext %59, ptr noundef nonnull @mpt_lan_event_process) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76.not = icmp eq i32 %call75, 0
  br i1 %cmp76.not, label %for.cond56.preheader.if.end83_crit_edge, label %do.end80

for.cond56.preheader.if.end83_crit_edge:          ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.cond44.preheader.for.body47_crit_edge
  %i.1231 = phi i32 [ %inc53, %for.body47.for.body47_crit_edge ], [ 0, %for.cond44.preheader.for.body47_crit_edge ]
  %60 = ptrtoint ptr %mpt_rxfidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mpt_rxfidx, align 4
  %62 = ptrtoint ptr %mpt_rxfidx_tail to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mpt_rxfidx_tail, align 4
  %inc50 = add i32 %63, 1
  store i32 %inc50, ptr %mpt_rxfidx_tail, align 4
  %arrayidx51 = getelementptr i32, ptr %61, i32 %inc50
  %64 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.1231, ptr %arrayidx51, align 4
  %inc53 = add nuw nsw i32 %i.1231, 1
  %65 = ptrtoint ptr %max_buckets_out to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_buckets_out, align 4
  %cmp46 = icmp slt i32 %inc53, %66
  br i1 %cmp46, label %for.body47.for.body47_crit_edge, label %for.body47.for.cond56.preheader_crit_edge

for.body47.for.cond56.preheader_crit_edge:        ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond56.preheader

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body47

do.end80:                                         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #13
  br label %if.end83

if.end83:                                         ; preds = %do.end80, %for.cond56.preheader.if.end83_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %67 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %68, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

out_mpt_rxfidx:                                   ; preds = %if.end7.i.i200.out_mpt_rxfidx_crit_edge, %kcalloc.exit202.thread
  %69 = ptrtoint ptr %mpt_rxfidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mpt_rxfidx, align 4
  tail call void @kfree(ptr noundef %70) #10
  br label %out_SendCtl.sink.split

out_SendCtl.sink.split:                           ; preds = %out_mpt_rxfidx, %kmalloc_array.exit169.thread
  %mpt_rxfidx218.sink = phi ptr [ %mpt_rxfidx218, %kmalloc_array.exit169.thread ], [ %mpt_rxfidx, %out_mpt_rxfidx ]
  %71 = ptrtoint ptr %mpt_rxfidx218.sink to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %mpt_rxfidx218.sink, align 4
  br label %out_SendCtl

out_SendCtl:                                      ; preds = %out_SendCtl.sink.split, %if.end7.i167.out_SendCtl_crit_edge
  %72 = ptrtoint ptr %SendCtl to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %SendCtl, align 4
  tail call void @kfree(ptr noundef %73) #10
  br label %out_mpt_txfidx.sink.split

out_mpt_txfidx.sink.split:                        ; preds = %out_SendCtl, %kcalloc.exit.thread
  %SendCtl215.sink = phi ptr [ %SendCtl215, %kcalloc.exit.thread ], [ %SendCtl, %out_SendCtl ]
  %74 = ptrtoint ptr %SendCtl215.sink to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %SendCtl215.sink, align 4
  br label %out_mpt_txfidx

out_mpt_txfidx:                                   ; preds = %out_mpt_txfidx.sink.split, %if.end7.i.i.out_mpt_txfidx_crit_edge
  %75 = ptrtoint ptr %mpt_txfidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mpt_txfidx, align 4
  tail call void @kfree(ptr noundef %76) #10
  %77 = ptrtoint ptr %mpt_txfidx to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %mpt_txfidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_mpt_txfidx, %if.end83, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ 0, %if.end83 ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %out_mpt_txfidx ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpt_lan_close(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = load i8, ptr @LanCtx, align 1
  tail call void @mpt_event_deregister(i8 noundef zeroext %2) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %5 = load i8, ptr @LanCtx, align 1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %call1.i = tail call ptr @mpt_get_msg_frame(i8 noundef zeroext %5, ptr noundef %7) #10
  %cmp.i = icmp eq ptr %call1.i, null
  br i1 %cmp.i, label %entry.mpt_lan_reset.exit_crit_edge, label %if.end.i

entry.mpt_lan_reset.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mpt_lan_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %Function.i = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1.i, i32 0, i32 2
  %8 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 34, ptr %Function.i, align 1
  %ChainOffset.i = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1.i, i32 0, i32 1
  %9 = ptrtoint ptr %ChainOffset.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ChainOffset.i, align 2
  %10 = ptrtoint ptr %call1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %call1.i, align 4
  %pnum.i = getelementptr i8, ptr %dev, i32 2308
  %11 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pnum.i, align 4
  %PortNumber.i = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1.i, i32 0, i32 4
  %13 = ptrtoint ptr %PortNumber.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %PortNumber.i, align 2
  %MsgFlags.i = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1.i, i32 0, i32 5
  %14 = ptrtoint ptr %MsgFlags.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %MsgFlags.i, align 1
  %Reserved2.i = getelementptr inbounds %struct._MSG_LAN_RESET_REQUEST, ptr %call1.i, i32 0, i32 3
  %15 = ptrtoint ptr %Reserved2.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %Reserved2.i, align 4
  %16 = load i8, ptr @LanCtx, align 1
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  tail call void @mpt_put_msg_frame(i8 noundef zeroext %16, ptr noundef %18, ptr noundef nonnull %call1.i) #10
  br label %mpt_lan_reset.exit

mpt_lan_reset.exit:                               ; preds = %if.end.i, %entry.mpt_lan_reset.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %buckets_out = getelementptr i8, ptr %dev, i32 2312
  %call.i.i82 = tail call zeroext i1 @__kasan_check_read(ptr noundef %buckets_out, i32 noundef 4) #10
  %20 = ptrtoint ptr %buckets_out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %buckets_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not83 = icmp eq i32 %21, 0
  br i1 %tobool.not83, label %mpt_lan_reset.exit.while.end_crit_edge, label %land.rhs.lr.ph

mpt_lan_reset.exit.while.end_crit_edge:           ; preds = %mpt_lan_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %mpt_lan_reset.exit
  %add.neg = sub i32 -200, %19
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call5 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buckets_out, i32 noundef 4) #10
  %23 = ptrtoint ptr %buckets_out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %buckets_out, align 4
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %mpt_lan_reset.exit.while.end_crit_edge
  %max_buckets_out = getelementptr i8, ptr %dev, i32 2432
  %25 = ptrtoint ptr %max_buckets_out to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_buckets_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp685 = icmp sgt i32 %26, 0
  br i1 %cmp685, label %for.body.lr.ph, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %RcvCtl = getelementptr i8, ptr %dev, i32 2424
  %pcidev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 54
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %RcvCtl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %RcvCtl, align 4
  %arrayidx = getelementptr %struct.BufferControl, ptr %28, i32 %i.086
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %cmp7.not = icmp eq ptr %30, null
  br i1 %cmp7.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcidev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %dma = getelementptr %struct.BufferControl, ptr %28, i32 %i.086, i32 1
  %33 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma, align 4
  %len = getelementptr %struct.BufferControl, ptr %28, i32 %i.086, i32 2
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev9, i32 noundef %34, i32 noundef %36, i32 noundef 2, i32 noundef 0) #10
  %37 = ptrtoint ptr %RcvCtl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %RcvCtl, align 4
  %arrayidx15 = getelementptr %struct.BufferControl, ptr %38, i32 %i.086
  %39 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx15, align 4
  tail call void @consume_skb(ptr noundef %40) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.086, 1
  %41 = ptrtoint ptr %max_buckets_out to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_buckets_out, align 4
  %cmp6 = icmp slt i32 %inc, %42
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end.for.end_crit_edge
  %RcvCtl17 = getelementptr i8, ptr %dev, i32 2424
  %43 = ptrtoint ptr %RcvCtl17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %RcvCtl17, align 4
  tail call void @kfree(ptr noundef %44) #10
  %mpt_rxfidx = getelementptr i8, ptr %dev, i32 2372
  %45 = ptrtoint ptr %mpt_rxfidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mpt_rxfidx, align 4
  tail call void @kfree(ptr noundef %46) #10
  %tx_max_out = getelementptr i8, ptr %dev, i32 2436
  %47 = ptrtoint ptr %tx_max_out to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_max_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp1988 = icmp sgt i32 %48, 0
  br i1 %cmp1988, label %for.body20.lr.ph, label %for.end.for.end39_crit_edge

for.end.for.end39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end39

for.body20.lr.ph:                                 ; preds = %for.end
  %SendCtl = getelementptr i8, ptr %dev, i32 2428
  %pcidev25 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 54
  br label %for.body20

for.body20:                                       ; preds = %for.inc37.for.body20_crit_edge, %for.body20.lr.ph
  %i.189 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc38, %for.inc37.for.body20_crit_edge ]
  %49 = ptrtoint ptr %SendCtl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %SendCtl, align 4
  %arrayidx21 = getelementptr %struct.BufferControl, ptr %50, i32 %i.189
  %51 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx21, align 4
  %cmp23.not = icmp eq ptr %52, null
  br i1 %cmp23.not, label %for.body20.for.inc37_crit_edge, label %if.then24

for.body20.for.inc37_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc37

if.then24:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %pcidev25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcidev25, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %dma29 = getelementptr %struct.BufferControl, ptr %50, i32 %i.189, i32 1
  %55 = ptrtoint ptr %dma29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma29, align 4
  %len32 = getelementptr %struct.BufferControl, ptr %50, i32 %i.189, i32 2
  %57 = ptrtoint ptr %len32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len32, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev26, i32 noundef %56, i32 noundef %58, i32 noundef 1, i32 noundef 0) #10
  %59 = ptrtoint ptr %SendCtl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %SendCtl, align 4
  %arrayidx34 = getelementptr %struct.BufferControl, ptr %60, i32 %i.189
  %61 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx34, align 4
  tail call void @consume_skb(ptr noundef %62) #10
  br label %for.inc37

for.inc37:                                        ; preds = %if.then24, %for.body20.for.inc37_crit_edge
  %inc38 = add nuw nsw i32 %i.189, 1
  %63 = ptrtoint ptr %tx_max_out to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_max_out, align 4
  %cmp19 = icmp slt i32 %inc38, %64
  br i1 %cmp19, label %for.inc37.for.body20_crit_edge, label %for.inc37.for.end39_crit_edge

for.inc37.for.end39_crit_edge:                    ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end39

for.inc37.for.body20_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

for.end39:                                        ; preds = %for.inc37.for.end39_crit_edge, %for.end.for.end39_crit_edge
  %SendCtl40 = getelementptr i8, ptr %dev, i32 2428
  %65 = ptrtoint ptr %SendCtl40 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %SendCtl40, align 4
  tail call void @kfree(ptr noundef %66) #10
  %mpt_txfidx = getelementptr i8, ptr %dev, i32 2320
  %67 = ptrtoint ptr %mpt_txfidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mpt_txfidx, align 4
  tail call void @kfree(ptr noundef %68) #10
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buckets_out, i32 noundef 4) #10
  %69 = ptrtoint ptr %buckets_out to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 0, ptr %buckets_out, align 4
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %71, i32 0, i32 2
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef %dev) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpt_lan_sdu_send(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %txfidx_lock = getelementptr i8, ptr %dev, i32 2328
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txfidx_lock) #10
  %mpt_txfidx_tail = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %mpt_txfidx_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mpt_txfidx_tail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp slt i32 %3, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txfidx_lock, i32 noundef %call5) #10
  %6 = ptrtoint ptr %mpt_txfidx_tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpt_txfidx_tail, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %7) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i8, ptr @LanCtx, align 1
  %call17 = tail call ptr @mpt_get_msg_frame(i8 noundef zeroext %8, ptr noundef %1) #10
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i136 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i136 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i136, align 128
  %state.i.i137 = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i137) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txfidx_lock, i32 noundef %call5) #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.99) #13
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %mpt_txfidx = getelementptr i8, ptr %dev, i32 2320
  %11 = ptrtoint ptr %mpt_txfidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mpt_txfidx, align 4
  %13 = ptrtoint ptr %mpt_txfidx_tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mpt_txfidx_tail, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %mpt_txfidx_tail, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txfidx_lock, i32 noundef %call5) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %21 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %call30 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 12) #10
  %pcidev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 54
  %22 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcidev, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %25) #10
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end27
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !195

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev31) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev31, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i ], [ %29, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev31, ptr noundef %25, i32 noundef %27) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %25 to i32
  %sub.i = add i32 %33, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i138 = getelementptr %struct.page, ptr %32, i32 %shr.i
  %and.i = and i32 %33, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev31, ptr noundef %add.ptr.i138, i32 noundef %and.i, i32 noundef %27, i32 noundef 1, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %SendCtl = getelementptr i8, ptr %dev, i32 2428
  %34 = ptrtoint ptr %SendCtl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %SendCtl, align 4
  %arrayidx33 = getelementptr %struct.BufferControl, ptr %35, i32 %16
  %36 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %skb, ptr %arrayidx33, align 4
  %37 = load ptr, ptr %SendCtl, align 4
  %dma37 = getelementptr %struct.BufferControl, ptr %37, i32 %16, i32 1
  %38 = ptrtoint ptr %dma37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i, ptr %dma37, align 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %41 = load ptr, ptr %SendCtl, align 4
  %len41 = getelementptr %struct.BufferControl, ptr %41, i32 %16, i32 2
  %42 = ptrtoint ptr %len41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %len41, align 4
  %43 = ptrtoint ptr %call17 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %call17, align 4
  %Function = getelementptr inbounds %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 2
  %44 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 32, ptr %Function, align 1
  %ChainOffset = getelementptr inbounds %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 1
  %45 = ptrtoint ptr %ChainOffset to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %ChainOffset, align 2
  %Reserved2 = getelementptr inbounds %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 3
  %46 = ptrtoint ptr %Reserved2 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %Reserved2, align 4
  %MsgFlags = getelementptr inbounds %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 5
  %47 = ptrtoint ptr %MsgFlags to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %MsgFlags, align 1
  %pnum = getelementptr i8, ptr %dev, i32 2308
  %48 = ptrtoint ptr %pnum to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pnum, align 4
  %PortNumber = getelementptr inbounds %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 4
  %50 = ptrtoint ptr %PortNumber to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %PortNumber, align 2
  %ContextSize = getelementptr inbounds %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %ContextSize to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 4, ptr %ContextSize, align 1
  %DetailsLength = getelementptr inbounds %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 7, i32 0, i32 0, i32 0, i32 2
  %52 = ptrtoint ptr %DetailsLength to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 8, ptr %DetailsLength, align 2
  %Flags = getelementptr inbounds %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 7, i32 0, i32 0, i32 0, i32 3
  %53 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %Flags, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %16)
  %TransactionContext = getelementptr inbounds %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 7, i32 0, i32 0, i32 0, i32 4
  %55 = ptrtoint ptr %TransactionContext to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %TransactionContext, align 4
  %56 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i, align 8
  %58 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mac_header.i, align 2
  %conv.i141 = zext i16 %59 to i32
  %add.ptr.i142 = getelementptr i8, ptr %57, i32 %conv.i141
  %60 = ptrtoint ptr %add.ptr.i142 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i142, align 1
  %conv45 = zext i8 %61 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %arrayidx47 = getelementptr i8, ptr %add.ptr.i142, i32 1
  %62 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %63 to i32
  %or = or i32 %shl46, %conv48
  %or50 = or i32 %or, 268435456
  %64 = tail call i32 @llvm.bswap.i32(i32 %or50)
  %TransactionDetails = getelementptr inbounds %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 7, i32 0, i32 0, i32 0, i32 4, i32 0, i32 1
  %65 = ptrtoint ptr %TransactionDetails to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %TransactionDetails, align 4
  %arrayidx52 = getelementptr i8, ptr %add.ptr.i142, i32 2
  %66 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %67 to i32
  %shl54 = shl nuw i32 %conv53, 24
  %arrayidx55 = getelementptr i8, ptr %add.ptr.i142, i32 3
  %68 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %69 to i32
  %shl57 = shl nuw nsw i32 %conv56, 16
  %or58 = or i32 %shl57, %shl54
  %arrayidx59 = getelementptr i8, ptr %add.ptr.i142, i32 4
  %70 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %71 to i32
  %shl61 = shl nuw nsw i32 %conv60, 8
  %or62 = or i32 %or58, %shl61
  %arrayidx63 = getelementptr i8, ptr %add.ptr.i142, i32 5
  %72 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %73 to i32
  %or66 = or i32 %or62, %conv64
  %74 = tail call i32 @llvm.bswap.i32(i32 %or66)
  %arrayidx68 = getelementptr %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 7, i32 0, i32 0, i32 0, i32 4, i32 0, i32 2
  %75 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx68, align 4
  %arrayidx70 = getelementptr %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 7, i32 0, i32 0, i32 0, i32 4, i32 0, i32 3
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  %or72 = or i32 %77, -687865856
  %78 = tail call i32 @llvm.bswap.i32(i32 %or72)
  %79 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx70, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %Address = getelementptr %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 0, i32 7, i32 0, i32 0, i32 0, i32 5
  %81 = ptrtoint ptr %Address to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %Address, align 4
  %High = getelementptr %struct._MSG_LAN_SEND_REQUEST, ptr %call17, i32 1
  %82 = ptrtoint ptr %High to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %High, align 4
  %83 = load i8, ptr @LanCtx, align 1
  tail call void @mpt_put_msg_frame(i8 noundef zeroext %83, ptr noundef %1, ptr noundef nonnull %call17) #10
  %_tx.i.i143 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %84 = ptrtoint ptr %_tx.i.i143 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %_tx.i.i143, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 12
  %87 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %86)
  %cmp.not.i.i = icmp eq i32 %88, %86
  br i1 %cmp.not.i.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %do.body5.i.i

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body5.i.i:                                     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 %86, ptr %trans_start.i.i, align 16
  br label %cleanup

cleanup:                                          ; preds = %do.body5.i.i, %dma_map_single_attrs.exit.cleanup_crit_edge, %if.then20, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 16, %if.then20 ], [ 0, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ 0, %do.body5.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpt_lan_tx_timeout(ptr nocapture noundef readonly %dev, i32 noundef %txqueue) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %active = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_event_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mpt_lan_event_process(ptr nocapture noundef readnone %ioc, ptr nocapture noundef readnone %pEvReply) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_event_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !144, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__UNIQUE_ID_file339, !1, !"__UNIQUE_ID_file339", i1 false, i1 false}
!1 = !{!"../drivers/message/fusion/mptlan.c", i32 65, i32 1}
!2 = !{ptr @__UNIQUE_ID_license340, !1, !"__UNIQUE_ID_license340", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_version341, !4, !"__UNIQUE_ID_version341", i1 false, i1 false}
!4 = !{!"../drivers/message/fusion/mptlan.c", i32 66, i32 1}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__modver_attr, !4, !"__modver_attr", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_mptlan__342_1485_mpt_lan_init6, !10, !"__initcall__kmod_mptlan__342_1485_mpt_lan_init6", i1 false, i1 false}
!10 = !{!"../drivers/message/fusion/mptlan.c", i32 1485, i32 1}
!11 = !{ptr @__exitcall_mpt_lan_exit, !12, !"__exitcall_mpt_lan_exit", i1 false, i1 false}
!12 = !{!"../drivers/message/fusion/mptlan.c", i32 1486, i32 1}
!13 = !{ptr @LanCtx, !14, !"LanCtx", i1 false, i1 false}
!14 = !{!"../drivers/message/fusion/mptlan.c", i32 149, i32 11}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/message/fusion/mptlan.c", i32 1450, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mpt_lan_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @mpt_lan_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/message/fusion/mptlan.c", i32 1453, i32 5}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/message/fusion/mptlan.c", i32 1455, i32 3}
!26 = !{ptr @mpt_lan_init._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mpt_lan_init._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/message/fusion/mptlan.c", i32 1462, i32 3}
!30 = !{ptr @mpt_lan_init._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mpt_lan_init._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/message/fusion/mptlan.c", i32 223, i32 4}
!34 = !{ptr @lan_reply._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lan_reply._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/message/fusion/mptlan.c", i32 283, i32 3}
!38 = !{ptr @lan_reply._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @lan_reply._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/message/fusion/mptlan.c", i32 866, i32 4}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mpt_lan_receive_post_turbo._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mpt_lan_receive_post_turbo._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/message/fusion/mptlan.c", i32 1506, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mpt_lan_type_trans._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @mpt_lan_type_trans._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/message/fusion/mptlan.c", i32 1508, i32 3}
!52 = !{ptr @mpt_lan_type_trans._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mpt_lan_type_trans._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/message/fusion/mptlan.c", i32 628, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mpt_lan_send_reply._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mpt_lan_send_reply._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/message/fusion/mptlan.c", i32 983, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mpt_lan_receive_post_reply._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mpt_lan_receive_post_reply._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/message/fusion/mptlan.c", i32 986, i32 3}
!66 = !{ptr @mpt_lan_receive_post_reply._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mpt_lan_receive_post_reply._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @mpt_lan_receive_post_reply._entry.32, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/message/fusion/mptlan.c", i32 1016, i32 4}
!70 = !{ptr @mpt_lan_receive_post_reply._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @mpt_lan_receive_post_reply._entry.34, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/message/fusion/mptlan.c", i32 1058, i32 4}
!73 = !{ptr @mpt_lan_receive_post_reply._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/message/fusion/mptlan.c", i32 1099, i32 3}
!76 = !{ptr @mpt_lan_receive_post_reply._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mpt_lan_receive_post_reply._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/message/fusion/mptlan.c", i32 1109, i32 3}
!80 = !{ptr @mpt_lan_receive_post_reply._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mpt_lan_receive_post_reply._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/message/fusion/mptlan.c", i32 1114, i32 3}
!84 = !{ptr @mpt_lan_receive_post_reply._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mpt_lan_receive_post_reply._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/message/fusion/mptlan.c", i32 1123, i32 3}
!88 = !{ptr @mpt_lan_receive_post_reply._entry.45, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mpt_lan_receive_post_reply._entry_ptr.47, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/message/fusion/mptlan.c", i32 1169, i32 4}
!92 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mpt_lan_post_receive_buckets._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @mpt_lan_post_receive_buckets._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/message/fusion/mptlan.c", i32 1196, i32 5}
!97 = !{ptr @mpt_lan_post_receive_buckets._entry.50, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @mpt_lan_post_receive_buckets._entry_ptr.52, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/message/fusion/mptlan.c", i32 1218, i32 6}
!101 = !{ptr @mpt_lan_post_receive_buckets._entry.53, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mpt_lan_post_receive_buckets._entry_ptr.55, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/message/fusion/mptlan.c", i32 1258, i32 8}
!105 = !{ptr @mpt_lan_post_receive_buckets._entry.56, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @mpt_lan_post_receive_buckets._entry_ptr.58, !104, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!109 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @mptlan_driver, !112, !"mptlan_driver", i1 false, i1 false}
!112 = !{!"../drivers/message/fusion/mptlan.c", i32 1443, i32 30}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/message/fusion/mptlan.c", i32 1393, i32 3}
!115 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @mptlan_probe._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @mptlan_probe._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/message/fusion/mptlan.c", i32 1402, i32 4}
!120 = !{ptr @mptlan_probe._entry.63, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mptlan_probe._entry_ptr.65, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/message/fusion/mptlan.c", i32 1410, i32 4}
!124 = !{ptr @mptlan_probe._entry.66, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mptlan_probe._entry_ptr.68, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/message/fusion/mptlan.c", i32 1416, i32 3}
!128 = !{ptr @mptlan_probe._entry.69, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mptlan_probe._entry_ptr.71, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/message/fusion/mptlan.c", i32 1418, i32 3}
!132 = !{ptr @mptlan_probe._entry.72, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @mptlan_probe._entry_ptr.74, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @mpt_register_lan_device.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../drivers/message/fusion/mptlan.c", i32 1324, i32 2}
!136 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @mpt_register_lan_device.__key.76, !135, !"__key", i1 false, i1 false}
!138 = !{ptr @.str.77, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @mpt_register_lan_device.__key.78, !140, !"__key", i1 false, i1 false}
!140 = !{!"../drivers/message/fusion/mptlan.c", i32 1345, i32 2}
!141 = !{ptr @.str.79, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @mpt_register_lan_device.__key.80, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/message/fusion/mptlan.c", i32 1346, i32 2}
!144 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!145 = distinct !{null, !146, !"max_buckets_out", i1 false, i1 false}
!146 = !{!"../drivers/message/fusion/mptlan.c", i32 151, i32 12}
!147 = distinct !{null, !148, !"tx_max_out_p", i1 false, i1 false}
!148 = !{!"../drivers/message/fusion/mptlan.c", i32 152, i32 12}
!149 = !{ptr @mpt_netdev_ops, !150, !"mpt_netdev_ops", i1 false, i1 false}
!150 = !{!"../drivers/message/fusion/mptlan.c", i32 1297, i32 36}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/message/fusion/mptlan.c", i32 383, i32 3}
!153 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @mpt_lan_open._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @mpt_lan_open._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.85, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/message/fusion/mptlan.c", i32 386, i32 4}
!158 = !{ptr @mpt_lan_open._entry.84, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mpt_lan_open._entry_ptr.86, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.88, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/message/fusion/mptlan.c", i32 389, i32 4}
!162 = !{ptr @mpt_lan_open._entry.87, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @mpt_lan_open._entry_ptr.89, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.91, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/message/fusion/mptlan.c", i32 431, i32 2}
!166 = !{ptr @mpt_lan_open._entry.90, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @mpt_lan_open._entry_ptr.92, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.94, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/message/fusion/mptlan.c", i32 435, i32 3}
!170 = !{ptr @mpt_lan_open._entry.93, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @mpt_lan_open._entry_ptr.95, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.96, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/message/fusion/mptlan.c", i32 543, i32 2}
!174 = !{ptr @.str.97, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @mpt_lan_close._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @mpt_lan_close._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.98, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/message/fusion/mptlan.c", i32 695, i32 3}
!179 = !{ptr @.str.99, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @mpt_lan_sdu_send._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @mpt_lan_sdu_send._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @mpt_lan_sdu_send._entry.100, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/message/fusion/mptlan.c", i32 705, i32 3}
!184 = !{ptr @mpt_lan_sdu_send._entry_ptr.101, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i64 2148388960, i64 2148388986, i64 2148389015, i64 2148389049, i64 2148389080, i64 2148389103}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{i64 2148386495, i64 2148386521, i64 2148386550, i64 2148386584, i64 2148386615, i64 2148386638}
!197 = !{!"branch_weights", i32 1, i32 2000}
