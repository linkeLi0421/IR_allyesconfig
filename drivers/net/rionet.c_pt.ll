; ModuleID = '/llk/IR_all_yes/drivers/net/rionet.c_pt.bc'
source_filename = "../drivers/net/rionet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.subsys_interface = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rionet_net = type { ptr, %struct.list_head, %struct.spinlock, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rionet_peer = type { %struct.list_head, ptr, ptr }
%struct.rio_dev = type { %struct.list_head, %struct.list_head, ptr, i8, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.device, [16 x %struct.resource], ptr, i16, i8, ptr, %struct.atomic_t, [0 x %struct.rio_switch] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rio_switch = type { %struct.list_head, ptr, i32, ptr, %struct.spinlock, [0 x ptr] }
%struct.rio_net = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i8, %struct.device, ptr, ptr }
%struct.rio_mport = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, %struct.resource, [16 x %struct.resource], [4 x %struct.rio_msg], [4 x %struct.rio_msg], i32, ptr, i8, i8, i32, i32, i32, [40 x i8], %struct.device, ptr, %struct.dma_device, ptr, %struct.atomic_t, i32 }
%struct.rio_msg = type { ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rionet_private = type { ptr, [128 x ptr], [128 x ptr], i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i8 }
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
%struct.rio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author339 = internal constant [56 x i8] c"rionet.author=Matt Porter <mporter@kernel.crashing.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [41 x i8] c"rionet.description=Ethernet over RapidIO\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [31 x i8] c"rionet.file=drivers/net/rionet\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [19 x i8] c"rionet.license=GPL\00", section ".modinfo", align 1
@rionet_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @rionet_shutdown, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rionet_interface = internal global { %struct.subsys_interface, [40 x i8] } { %struct.subsys_interface { ptr @.str, ptr @rio_bus_type, %struct.list_head zeroinitializer, ptr @rionet_add_dev, ptr @rionet_remove_dev }, [40 x i8] zeroinitializer }, align 32
@rio_mport_interface = internal global %struct.class_interface { %struct.list_head zeroinitializer, ptr @rio_mport_class, ptr null, ptr @rionet_remove_mport }, section ".ref.data", align 4
@__initcall__kmod_rionet__346_748_rionet_init7 = internal global ptr @rionet_init, section ".initcall7.init", align 4
@__exitcall_rionet_exit = internal global ptr @rionet_exit, section ".exitcall.exit", align 4
@rionet_shutdown.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rionet\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rionet_shutdown\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/net/rionet.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@nets = internal global { [8 x %struct.rionet_net], [128 x i8] } zeroinitializer, align 32
@rio_bus_type = external dso_local global %struct.bus_type, align 4
@rionet_add_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: local device %s is not network capable\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rionet_add_dev\00", [17 x i8] zeroinitializer }, align 32
@rionet_add_dev._entry_ptr = internal global ptr @rionet_add_dev._entry, section ".printk_index", align 4
@rionet_add_dev._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: failed to setup netdev (rc=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@rionet_add_dev._entry_ptr.8 = internal global ptr @rionet_add_dev._entry.6, section ".printk_index", align 4
@rionet_add_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&nets[netid].lock\00", [46 x i8] zeroinitializer }, align 32
@rionet_add_dev._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: error requesting doorbells\0A\00", [62 x i8] zeroinitializer }, align 32
@rionet_add_dev._entry_ptr.12 = internal global ptr @rionet_add_dev._entry.10, section ".printk_index", align 4
@rionet_add_dev.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.13, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: %s add peer %s\0A\00", [44 x i8] zeroinitializer }, align 32
@rionet_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @rionet_open, ptr @rionet_close, ptr @rionet_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@rionet_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @rionet_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @rionet_get_msglevel, ptr @rionet_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@rionet_setup_netdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&rnet->lock\00", [20 x i8] zeroinitializer }, align 32
@rionet_setup_netdev.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rnet->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@rionet_setup_netdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: %s %s Version %s, MAC %pM, %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rionet_setup_netdev\00", [44 x i8] zeroinitializer }, align 32
@rionet_setup_netdev._entry_ptr = internal global ptr @rionet_setup_netdev._entry, section ".printk_index", align 4
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ethernet over RapidIO\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.3\00", [28 x i8] zeroinitializer }, align 32
@rionet_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016%s: open\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rionet_open\00", [20 x i8] zeroinitializer }, align 32
@rionet_open._entry_ptr = internal global ptr @rionet_open._entry, section ".printk_index", align 4
@rionet_dbell_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: doorbell sid %4.4x tid %4.4x info %4.4x\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rionet_dbell_event\00", [45 x i8] zeroinitializer }, align 32
@rionet_dbell_event._entry_ptr = internal global ptr @rionet_dbell_event._entry, section ".printk_index", align 4
@rionet_dbell_event._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: unhandled doorbell\0A\00", [38 x i8] zeroinitializer }, align 32
@rionet_dbell_event._entry_ptr.27 = internal global ptr @rionet_dbell_event._entry.25, section ".printk_index", align 4
@rionet_inb_msg_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: inbound message event, mbox %d slot %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rionet_inb_msg_event\00", [43 x i8] zeroinitializer }, align 32
@rionet_inb_msg_event._entry_ptr = internal global ptr @rionet_inb_msg_event._entry, section ".printk_index", align 4
@rionet_outb_msg_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: outbound message event, mbox %d slot %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rionet_outb_msg_event\00", [42 x i8] zeroinitializer }, align 32
@rionet_outb_msg_event._entry_ptr = internal global ptr @rionet_outb_msg_event._entry, section ".printk_index", align 4
@rionet_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: close %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rionet_close\00", [19 x i8] zeroinitializer }, align 32
@rionet_close._entry_ptr = internal global ptr @rionet_close._entry, section ".printk_index", align 4
@rionet_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: BUG! Tx Ring full when queue awake!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rionet_start_xmit\00", [46 x i8] zeroinitializer }, align 32
@rionet_start_xmit._entry_ptr = internal global ptr @rionet_start_xmit._entry, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\00\01\00", [27 x i8] zeroinitializer }, align 32
@rionet_queue_tx_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: queued skb len %8.8x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rionet_queue_tx_msg\00", [44 x i8] zeroinitializer }, align 32
@rionet_queue_tx_msg._entry_ptr = internal global ptr @rionet_queue_tx_msg._entry, section ".printk_index", align 4
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"n/a\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rio_mport_class = external dso_local global %struct.class, align 4
@rionet_remove_mport.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rionet_remove_mport\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s called when connected to %d peers\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s called for mport without NDEV\0A\00", [62 x i8] zeroinitializer }, align 32
@rionet_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: failed to register reboot notifier (err=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rionet_init\00", [20 x i8] zeroinitializer }, align 32
@rionet_init._entry_ptr = internal global ptr @rionet_init._entry, section ".printk_index", align 4
@rionet_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: class_interface_register error: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rionet_init._entry_ptr.48 = internal global ptr @rionet_init._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 4097]
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"rionet_notifier\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 709, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"rionet_interface\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 702, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 645, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [5 x i8] c"nets\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 79, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 569, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 584, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 591, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 616, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 625, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"rionet_netdev_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 473, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"rionet_ethtool_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 466, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 522, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 523, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 534, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 318, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 236, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 261, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 273, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 290, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 375, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 187, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 204, i32 13 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 163, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 448, i32 28 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 672, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 674, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 676, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 726, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private constant [24 x i8] c"../drivers/net/rionet.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 733, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_rionet_exit, ptr @__initcall__kmod_rionet__346_748_rionet_init7, ptr @rionet_add_dev._entry, ptr @rionet_add_dev._entry.10, ptr @rionet_add_dev._entry.6, ptr @rionet_add_dev._entry_ptr, ptr @rionet_add_dev._entry_ptr.12, ptr @rionet_add_dev._entry_ptr.8, ptr @rionet_close._entry, ptr @rionet_close._entry_ptr, ptr @rionet_dbell_event._entry, ptr @rionet_dbell_event._entry.25, ptr @rionet_dbell_event._entry_ptr, ptr @rionet_dbell_event._entry_ptr.27, ptr @rionet_exit, ptr @rionet_inb_msg_event._entry, ptr @rionet_inb_msg_event._entry_ptr, ptr @rionet_init._entry, ptr @rionet_init._entry.46, ptr @rionet_init._entry_ptr, ptr @rionet_init._entry_ptr.48, ptr @rionet_open._entry, ptr @rionet_open._entry_ptr, ptr @rionet_outb_msg_event._entry, ptr @rionet_outb_msg_event._entry_ptr, ptr @rionet_queue_tx_msg._entry, ptr @rionet_queue_tx_msg._entry_ptr, ptr @rionet_setup_netdev._entry, ptr @rionet_setup_netdev._entry_ptr, ptr @rionet_start_xmit._entry, ptr @rionet_start_xmit._entry_ptr, ptr @rionet_notifier, ptr @rionet_interface, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @nets, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @rionet_add_dev.__key, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @rionet_netdev_ops, ptr @rionet_ethtool_ops, ptr @rionet_setup_netdev.__key, ptr @.str.14, ptr @rionet_setup_netdev.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_interface to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nets to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_add_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_add_dev._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_add_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_add_dev._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_setup_netdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_setup_netdev.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_setup_netdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_dbell_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_dbell_event._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_inb_msg_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_outb_msg_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_queue_tx_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rionet_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rionet_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @rionet_notifier) #13
  tail call void @subsys_interface_unregister(ptr noundef nonnull @rionet_interface) #13
  tail call void @class_interface_unregister(ptr noundef nonnull @rio_mport_interface) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @subsys_interface_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_interface_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rionet_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_reboot_notifier(ptr noundef nonnull @rionet_notifier) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str, i32 noundef %call) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @class_interface_register(ptr noundef nonnull @rio_mport_interface) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str, i32 noundef %call2) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call i32 @subsys_interface_register(ptr noundef nonnull @rionet_interface) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ %call11, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rionet_shutdown(ptr nocapture noundef readnone %nb, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rionet_shutdown.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rionet_shutdown, %if.then)) #13
          to label %for.body [label %if.then], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rionet_shutdown.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  br label %for.body

for.body:                                         ; preds = %for.inc47.for.body_crit_edge, %if.then, %entry
  %i.065 = phi i32 [ %inc, %for.inc47.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %arrayidx = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %i.065
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %for.body.for.inc47_crit_edge, label %do.body7

for.body.for.inc47_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc47

do.body7:                                         ; preds = %for.body
  %lock = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %i.065, i32 2
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %peers = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %i.065, i32 1
  %2 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %2)
  %peer.062 = load ptr, ptr %peers, align 4
  %cmp22.not63 = icmp eq ptr %peer.062, %peers
  br i1 %cmp22.not63, label %do.body7.for.end_crit_edge, label %for.body26.lr.ph

do.body7.for.end_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body26.lr.ph:                                 ; preds = %do.body7
  %active = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %i.065, i32 3
  br label %for.body26

for.body26:                                       ; preds = %for.inc.for.body26_crit_edge, %for.body26.lr.ph
  %peer.064 = phi ptr [ %peer.062, %for.body26.lr.ph ], [ %peer.0, %for.inc.for.body26_crit_edge ]
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %active, align 4
  %rdev = getelementptr inbounds %struct.rionet_peer, ptr %peer.064, i32 0, i32 1
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 4
  %destid = getelementptr inbounds %struct.rio_dev, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %destid, align 4
  %idxprom = zext i16 %8 to i32
  %arrayidx28 = getelementptr ptr, ptr %4, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %10, null
  br i1 %tobool29.not, label %for.body26.for.inc_crit_edge, label %if.then30

for.body26.for.inc_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then30:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hport.i, align 8
  %call.i = tail call i32 @rio_mport_send_doorbell(ptr noundef %14, i16 noundef zeroext %8, i16 noundef zeroext 4097) #13
  %15 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active, align 4
  %17 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rdev, align 4
  %destid36 = getelementptr inbounds %struct.rio_dev, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %destid36 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %destid36, align 4
  %idxprom37 = zext i16 %20 to i32
  %arrayidx38 = getelementptr ptr, ptr %16, i32 %idxprom37
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx38, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %for.body26.for.inc_crit_edge
  %22 = ptrtoint ptr %peer.064 to i32
  call void @__asan_load4_noabort(i32 %22)
  %peer.0 = load ptr, ptr %peer.064, align 4
  %cmp22.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp22.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body26_crit_edge

for.inc.for.body26_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body26

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body7.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #13
  br label %for.inc47

for.inc47:                                        ; preds = %for.end, %for.body.for.inc47_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end48, label %for.inc47.for.body_crit_edge

for.inc47.for.body_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end48:                                        ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_send_doorbell(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rionet_add_dev(ptr noundef %dev, ptr nocapture noundef readnone %sif) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %lsrc_ops = alloca i32, align 4
  %ldst_ops = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsrc_ops) #13
  %0 = ptrtoint ptr %lsrc_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lsrc_ops, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ldst_ops) #13
  %1 = ptrtoint ptr %ldst_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ldst_ops, align 4, !annotation !131
  %add.ptr = getelementptr i8, ptr %dev, i32 -88
  %net = getelementptr i8, ptr %dev, i32 -72
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 8
  %hport = getelementptr inbounds %struct.rio_net, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %hport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hport, align 8
  %id = getelementptr inbounds %struct.rio_mport, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp = icmp ugt i8 %7, 7
  br i1 %cmp, label %entry.cleanup126_crit_edge, label %if.end

entry.cleanup126_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.end:                                           ; preds = %entry
  %conv = zext i8 %7 to i32
  %arrayidx = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then3, label %if.end.if.end53_crit_edge

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then3:                                         ; preds = %if.end
  %call.i = call i32 @__rio_local_read_config_32(ptr noundef %5, i32 noundef 24, ptr noundef nonnull %lsrc_ops) #13
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 8
  %hport7 = getelementptr inbounds %struct.rio_net, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %hport7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hport7, align 8
  %call.i169 = call i32 @__rio_local_read_config_32(ptr noundef %13, i32 noundef 28, ptr noundef nonnull %ldst_ops) #13
  %14 = ptrtoint ptr %lsrc_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lsrc_ops, align 4
  %and = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then3.do.end_crit_edge, label %land.lhs.true

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %if.then3
  %16 = ptrtoint ptr %ldst_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ldst_ops, align 4
  %and10 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %and13 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool14.not
  %and16 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or.cond165 = select i1 %or.cond, i1 true, i1 %tobool17.not
  br i1 %or.cond165, label %land.lhs.true.do.end_crit_edge, label %if.end23

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.then3.do.end_crit_edge
  %18 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net, align 8
  %hport21 = getelementptr inbounds %struct.rio_net, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %hport21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hport21, align 8
  %name = getelementptr inbounds %struct.rio_mport, ptr %21, i32 0, i32 17
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, ptr noundef %name) #16
  br label %cleanup126

if.end23:                                         ; preds = %land.lhs.true
  %call24 = call ptr @alloc_etherdev_mqs(i32 noundef 1140, i32 noundef 1, i32 noundef 1) #13
  %cmp25 = icmp eq ptr %call24, null
  br i1 %cmp25, label %if.end23.cleanup126_crit_edge, label %if.end28

if.end23.cleanup126_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.end28:                                         ; preds = %if.end23
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 8
  %hport30 = getelementptr inbounds %struct.rio_net, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %hport30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hport30, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #13
  %sys_size.i = getelementptr inbounds %struct.rio_mport, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %sys_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sys_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  %mul.i = select i1 %tobool.not.i, i32 1024, i32 262144
  %dec.i.i = add nsw i32 %mul.i, -1
  %shr.i.i = lshr i32 %dec.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %28 = call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #13, !range !132
  %sub.i.i.i = sub nuw nsw i32 32, %28
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %call1.i = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef %cond.i.i.i) #13
  %29 = inttoptr i32 %call1.i to ptr
  %id.i = getelementptr inbounds %struct.rio_mport, ptr %25, i32 0, i32 12
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %id.i, align 8
  %idxprom.i = zext i8 %31 to i32
  %active.i = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom.i, i32 3
  %32 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %active.i, align 4
  %33 = load i8, ptr %id.i, align 8
  %idxprom3.i = zext i8 %33 to i32
  %active5.i = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom3.i, i32 3
  %34 = ptrtoint ptr %active5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %active5.i, align 4
  %tobool6.not.i = icmp eq ptr %35, null
  br i1 %tobool6.not.i, label %if.end28.do.end36_crit_edge, label %if.end.i

if.end28.do.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36

if.end.i:                                         ; preds = %if.end28
  %36 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %37 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %38 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %39 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %40 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %41 = call ptr @memset(ptr %35, i32 0, i32 %mul.i)
  %add.ptr.i.i = getelementptr i8, ptr %call24, i32 2304
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %25, ptr %add.ptr.i.i, align 4
  %open.i = getelementptr i8, ptr %call24, i32 3440
  %43 = ptrtoint ptr %open.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %open.i, align 4
  %call13.i = call zeroext i16 @rio_local_get_device_id(ptr noundef %25) #13
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %addr.i, align 1
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %40, align 1
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %39, align 1
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %38, align 1
  %48 = lshr i16 %call13.i, 8
  %conv18.i = trunc i16 %48 to i8
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv18.i, ptr %37, align 1
  %conv21.i = trunc i16 %call13.i to i8
  %50 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv21.i, ptr %36, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call24, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #13
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 16
  %51 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @rionet_netdev_ops, ptr %netdev_ops.i, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 20
  %52 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4082, ptr %mtu.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 30
  %53 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 68, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 31
  %54 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4082, ptr %max_mtu.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 23
  %55 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 4096, ptr %features.i, align 16
  %dev.i = getelementptr inbounds %struct.rio_mport, ptr %25, i32 0, i32 18
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 133, i32 1
  %56 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev.i, ptr %parent.i, align 8
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 44
  %57 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @rionet_ethtool_ops, ptr %ethtool_ops.i, align 16
  %lock.i = getelementptr i8, ptr %call24, i32 3348
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @rionet_setup_netdev.__key, i16 noundef signext 3) #13
  %tx_lock.i = getelementptr i8, ptr %call24, i32 3392
  call void @__raw_spin_lock_init(ptr noundef %tx_lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @rionet_setup_netdev.__key.15, i16 noundef signext 3) #13
  %msg_enable.i = getelementptr i8, ptr %call24, i32 3436
  %58 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 197, ptr %msg_enable.i, align 4
  %call29.i = call i32 @register_netdev(ptr noundef nonnull %call24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp.not.i = icmp eq i32 %call29.i, 0
  br i1 %cmp.not.i, label %if.end39, label %if.then31.i

if.then31.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %id.i, align 8
  %idxprom33.i = zext i8 %60 to i32
  %active35.i = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom33.i, i32 3
  %61 = ptrtoint ptr %active35.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %active35.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @free_pages(i32 noundef %63, i32 noundef %cond.i.i.i) #13
  br label %do.end36

do.end36:                                         ; preds = %if.then31.i, %if.end28.do.end36_crit_edge
  %rc.0.i.ph = phi i32 [ -12, %if.end28.do.end36_crit_edge ], [ %call29.i, %if.then31.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #13
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, i32 noundef %rc.0.i.ph) #16
  call void @free_netdev(ptr noundef nonnull %call24) #13
  br label %cleanup126

if.end39:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 86
  %64 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_addr.i, align 64
  %name42.i = getelementptr inbounds %struct.rio_mport, ptr %25, i32 0, i32 17
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %call24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef %65, ptr noundef %name42.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #13
  %peers = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv, i32 1
  %66 = ptrtoint ptr %peers to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %peers, ptr %peers, align 4
  %prev.i = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv, i32 1, i32 1
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %peers, ptr %prev.i, align 4
  %lock = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @rionet_add_dev.__key, i16 noundef signext 3) #13
  %nact = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv, i32 4
  %68 = ptrtoint ptr %nact to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %nact, align 4
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call24, ptr %arrayidx, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end39, %if.end.if.end53_crit_edge
  %src_ops = getelementptr i8, ptr %dev, i32 -40
  %70 = ptrtoint ptr %src_ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src_ops, align 8
  %and54 = and i32 %71, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.cleanup126_crit_edge, label %land.lhs.true56

if.end53.cleanup126_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

land.lhs.true56:                                  ; preds = %if.end53
  %dst_ops = getelementptr i8, ptr %dev, i32 -36
  %72 = ptrtoint ptr %dst_ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dst_ops, align 4
  %and57 = and i32 %73, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %and61 = and i32 %71, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %or.cond166 = select i1 %tobool58.not, i1 true, i1 %tobool62.not
  %and65 = and i32 %73, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %or.cond167 = select i1 %or.cond166, i1 true, i1 %tobool66.not
  br i1 %or.cond167, label %land.lhs.true56.cleanup126_crit_edge, label %if.then67

land.lhs.true56.cleanup126_crit_edge:             ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.then67:                                        ; preds = %land.lhs.true56
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3520, i32 noundef 16) #17
  %tobool73.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool73.not, label %if.then67.cleanup126_crit_edge, label %if.end75

if.then67.cleanup126_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.end75:                                         ; preds = %if.then67
  %rdev76 = getelementptr inbounds %struct.rionet_peer, ptr %call7.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %rdev76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr, ptr %rdev76, align 8
  %call78 = call ptr @rio_request_outb_dbell(ptr noundef %add.ptr, i16 noundef zeroext 4096, i16 noundef zeroext 4097) #13
  %res = getelementptr inbounds %struct.rionet_peer, ptr %call7.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call78, ptr %res, align 4
  %tobool80.not = icmp eq ptr %call78, null
  br i1 %tobool80.not, label %do.end84, label %do.body89

do.end84:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str) #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup126

do.body89:                                        ; preds = %if.end75
  %lock95 = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv, i32 2
  %call97 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock95) #13
  %peers104 = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv, i32 1
  %prev.i170 = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv, i32 1, i32 1
  %79 = ptrtoint ptr %prev.i170 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i170, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %80, ptr noundef %peers104) #13
  br i1 %call.i.i, label %if.end.i.i171, label %do.body89.list_add_tail.exit_crit_edge

do.body89.list_add_tail.exit_crit_edge:           ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i171:                                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %prev.i170 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i, ptr %prev.i170, align 4
  %82 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %peers104, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %call7.i.i, ptr %80, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i171, %do.body89.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock95, i32 noundef %call97) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rionet_add_dev.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rionet_add_dev, %if.then114)) #13
          to label %do.end118 [label %if.then114], !srcloc !130

if.then114:                                       ; preds = %list_add_tail.exit
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %85 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i, label %if.end.i.i173, label %if.then114.rio_name.exit_crit_edge

if.then114.rio_name.exit_crit_edge:               ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #15
  br label %rio_name.exit

if.end.i.i173:                                    ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i173, %if.then114.rio_name.exit_crit_edge
  %retval.0.i.i174 = phi ptr [ %88, %if.end.i.i173 ], [ %86, %if.then114.rio_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rionet_add_dev.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i174) #13
  br label %do.end118

do.end118:                                        ; preds = %rio_name.exit, %list_add_tail.exit
  %open = getelementptr i8, ptr %75, i32 3440
  %89 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %open, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool119.not = icmp eq i8 %90, 0
  br i1 %tobool119.not, label %do.end118.cleanup126_crit_edge, label %if.then120

do.end118.cleanup126_crit_edge:                   ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.then120:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %rdev76 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rdev76, align 8
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr inbounds %struct.rio_dev, ptr %92, i32 0, i32 24
  %97 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %destid.i, align 4
  %call.i175 = call i32 @rio_mport_send_doorbell(ptr noundef %96, i16 noundef zeroext %98, i16 noundef zeroext 4096) #13
  br label %cleanup126

cleanup126:                                       ; preds = %if.then120, %do.end118.cleanup126_crit_edge, %do.end84, %if.then67.cleanup126_crit_edge, %land.lhs.true56.cleanup126_crit_edge, %if.end53.cleanup126_crit_edge, %do.end36, %if.end23.cleanup126_crit_edge, %do.end, %entry.cleanup126_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup126_crit_edge ], [ 0, %land.lhs.true56.cleanup126_crit_edge ], [ 0, %if.end53.cleanup126_crit_edge ], [ %rc.0.i.ph, %do.end36 ], [ -19, %do.end ], [ -12, %if.end23.cleanup126_crit_edge ], [ -12, %do.end84 ], [ -12, %if.then67.cleanup126_crit_edge ], [ 0, %if.then120 ], [ 0, %do.end118.cleanup126_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ldst_ops) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsrc_ops) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rionet_remove_dev(ptr noundef %dev, ptr nocapture noundef readnone %sif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -88
  %net = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 8
  %hport = getelementptr inbounds %struct.rio_net, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hport, align 8
  %id = getelementptr inbounds %struct.rio_mport, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 8
  %src_ops = getelementptr i8, ptr %dev, i32 -40
  %6 = ptrtoint ptr %src_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_ops, align 8
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %dst_ops = getelementptr i8, ptr %dev, i32 -36
  %8 = ptrtoint ptr %dst_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_ops, align 4
  %and1 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %and5 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool6.not
  %and9 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond101 = select i1 %or.cond, i1 true, i1 %tobool10.not
  br i1 %or.cond101, label %land.lhs.true.cleanup_crit_edge, label %do.body11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body11:                                        ; preds = %land.lhs.true
  %idxprom = zext i8 %5 to i32
  %lock = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 2
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %peers = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body11
  %peer.0.in = phi ptr [ %peers, %do.body11 ], [ %peer.0, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %peer.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %peer.0 = load ptr, ptr %peer.0.in, align 4
  %cmp24.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp24.not, label %if.end72.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %rdev26 = getelementptr inbounds %struct.rionet_peer, ptr %peer.0, i32 0, i32 1
  %11 = ptrtoint ptr %rdev26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev26, align 4
  %cmp27 = icmp eq ptr %12, %add.ptr
  br i1 %cmp27, label %if.then29, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then29:                                        ; preds = %for.body
  %call.i.i103 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %peer.0) #13
  br i1 %call.i.i103, label %if.end.i.i, label %if.then29.list_del.exit_crit_edge

if.then29.list_del.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %peer.0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %peer.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %peer.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then29.list_del.exit_crit_edge
  %19 = ptrtoint ptr %peer.0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %peer.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %peer.0, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %active = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 3
  %21 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active, align 4
  %destid = getelementptr i8, ptr %dev, i32 1444
  %23 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %destid, align 4
  %idxprom33 = zext i16 %24 to i32
  %arrayidx34 = getelementptr ptr, ptr %22, i32 %idxprom33
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %26, null
  br i1 %tobool35.not, label %list_del.exit.if.then66_crit_edge, label %if.then36

list_del.exit.if.then66_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66

if.then36:                                        ; preds = %list_del.exit
  %state37 = getelementptr i8, ptr %dev, i32 1452
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state37, i32 noundef 4) #13
  %27 = ptrtoint ptr %state37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state37, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.then44 [
    i32 2, label %if.then36.if.end46_crit_edge
    i32 0, label %if.then36.if.end46_crit_edge112
  ]

if.then36.if.end46_crit_edge112:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then44:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hport.i, align 8
  %34 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %destid, align 4
  %call.i = tail call i32 @rio_mport_send_doorbell(ptr noundef %33, i16 noundef zeroext %35, i16 noundef zeroext 4097) #13
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then36.if.end46_crit_edge, %if.then36.if.end46_crit_edge112
  %36 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %active, align 4
  %38 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %destid, align 4
  %idxprom51 = zext i16 %39 to i32
  %arrayidx52 = getelementptr ptr, ptr %37, i32 %idxprom51
  %40 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx52, align 4
  %nact = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 4
  %41 = ptrtoint ptr %nact to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nact, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %nact, align 4
  br label %if.then66

if.then66:                                        ; preds = %if.end46, %list_del.exit.if.then66_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #13
  %res = getelementptr inbounds %struct.rionet_peer, ptr %peer.0, i32 0, i32 2
  %43 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %res, align 4
  %tobool67.not = icmp eq ptr %44, null
  br i1 %tobool67.not, label %if.then66.if.end71_crit_edge, label %if.then68

if.then66.if.end71_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then68:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  %call70 = tail call i32 @rio_release_outb_dbell(ptr noundef %add.ptr, ptr noundef nonnull %44) #13
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.then66.if.end71_crit_edge
  tail call void @kfree(ptr noundef %peer.0) #13
  br label %cleanup

if.end72.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end72.critedge, %if.end71, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rio_request_outb_dbell(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rio_local_read_config_32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rio_local_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rionet_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %id = getelementptr inbounds %struct.rio_mport, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 8
  %msg_enable = getelementptr i8, ptr %ndev, i32 3436
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %call3 = tail call i32 @rio_request_inb_dbell(ptr noundef %7, ptr noundef %ndev, i16 noundef zeroext 4096, i16 noundef zeroext 4097, ptr noundef nonnull @rionet_dbell_event) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %call7 = tail call i32 @rio_request_inb_mbox(ptr noundef %9, ptr noundef %ndev, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @rionet_inb_msg_event) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.out_crit_edge, label %if.end10

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %call12 = tail call i32 @rio_request_outb_mbox(ptr noundef %11, ptr noundef %ndev, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @rionet_outb_msg_event) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.out_crit_edge, label %for.body.preheader

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.preheader:                               ; preds = %if.end10
  %uglygep = getelementptr i8, ptr %ndev, i32 2308
  %12 = call ptr @memset(ptr %uglygep, i32 0, i32 512)
  %rx_slot = getelementptr i8, ptr %ndev, i32 3332
  %13 = ptrtoint ptr %rx_slot to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rx_slot, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %for.body.preheader
  %i.0.i = phi i32 [ 0, %for.body.preheader ], [ %rem.i, %if.end.i.do.body.i_crit_edge ]
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 4096, i32 noundef 2592) #13
  %arrayidx.i = getelementptr %struct.rionet_private, ptr %add.ptr.i, i32 0, i32 1, i32 %i.0.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %do.body.i.rionet_rx_fill.exit_crit_edge, label %if.end.i

do.body.i.rionet_rx_fill.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rionet_rx_fill.exit

if.end.i:                                         ; preds = %do.body.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %ops.i.i = getelementptr inbounds %struct.rio_mport, ptr %16, i32 0, i32 11
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %add_inb_buffer.i.i = getelementptr inbounds %struct.rio_ops, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %add_inb_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add_inb_buffer.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef %16, i32 noundef 0, ptr noundef %18) #13
  %add.i = add nsw i32 %i.0.i, 1
  %rem.i = srem i32 %add.i, 128
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end.i.rionet_rx_fill.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end.i.rionet_rx_fill.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rionet_rx_fill.exit

rionet_rx_fill.exit:                              ; preds = %if.end.i.rionet_rx_fill.exit_crit_edge, %do.body.i.rionet_rx_fill.exit_crit_edge
  %i.1.i = phi i32 [ 0, %if.end.i.rionet_rx_fill.exit_crit_edge ], [ %i.0.i, %do.body.i.rionet_rx_fill.exit_crit_edge ]
  %23 = ptrtoint ptr %rx_slot to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.1.i, ptr %rx_slot, align 4
  %tx_slot = getelementptr i8, ptr %ndev, i32 3336
  %24 = ptrtoint ptr %tx_slot to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tx_slot, align 4
  %tx_cnt = getelementptr i8, ptr %ndev, i32 3340
  %25 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tx_cnt, align 4
  %ack_slot = getelementptr i8, ptr %ndev, i32 3344
  %26 = ptrtoint ptr %ack_slot to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ack_slot, align 4
  tail call void @netif_carrier_on(ptr noundef %ndev) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %27 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %idxprom = zext i8 %3 to i32
  %lock = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 2
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %peers = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 1
  %29 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %29)
  %peer.073 = load ptr, ptr %peers, align 4
  %cmp35.not74 = icmp eq ptr %peer.073, %peers
  br i1 %cmp35.not74, label %rionet_rx_fill.exit.for.end45_crit_edge, label %rionet_rx_fill.exit.for.body37_crit_edge

rionet_rx_fill.exit.for.body37_crit_edge:         ; preds = %rionet_rx_fill.exit
  br label %for.body37

rionet_rx_fill.exit.for.end45_crit_edge:          ; preds = %rionet_rx_fill.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end45

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %rionet_rx_fill.exit.for.body37_crit_edge
  %peer.075 = phi ptr [ %peer.0, %for.body37.for.body37_crit_edge ], [ %peer.073, %rionet_rx_fill.exit.for.body37_crit_edge ]
  %rdev = getelementptr inbounds %struct.rionet_peer, ptr %peer.075, i32 0, i32 1
  %30 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rdev, align 4
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr inbounds %struct.rio_dev, ptr %31, i32 0, i32 24
  %36 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %destid.i, align 4
  %call.i = tail call i32 @rio_mport_send_doorbell(ptr noundef %35, i16 noundef zeroext %37, i16 noundef zeroext 4096) #13
  %38 = ptrtoint ptr %peer.075 to i32
  call void @__asan_load4_noabort(i32 %38)
  %peer.0 = load ptr, ptr %peer.075, align 4
  %cmp35.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp35.not, label %for.body37.for.end45_crit_edge, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body37

for.body37.for.end45_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end45

for.end45:                                        ; preds = %for.body37.for.end45_crit_edge, %rionet_rx_fill.exit.for.end45_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call23) #13
  %open = getelementptr i8, ptr %ndev, i32 3440
  %39 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %open, align 4
  br label %out

out:                                              ; preds = %for.end45, %if.end10.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %rc.0 = phi i32 [ %call3, %if.end.out_crit_edge ], [ %call7, %if.end5.out_crit_edge ], [ %call12, %if.end10.out_crit_edge ], [ %call12, %for.end45 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rionet_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %id = getelementptr inbounds %struct.rio_mport, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 8
  %msg_enable = getelementptr i8, ptr %ndev, i32 3436
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str, ptr noundef %ndev) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @netif_carrier_off(ptr noundef %ndev) #13
  %open = getelementptr i8, ptr %ndev, i32 3440
  %8 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %open, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.084 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rionet_private, ptr %add.ptr.i, i32 0, i32 1, i32 %i.084
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree_skb_reason(ptr noundef %10, i32 noundef 0) #13
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.body3, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body3:                                         ; preds = %for.body
  %idxprom = zext i8 %3 to i32
  %lock = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 2
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %peers = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %11)
  %peer.085 = load ptr, ptr %peers, align 4
  %cmp20.not86 = icmp eq ptr %peer.085, %peers
  br i1 %cmp20.not86, label %do.body3.for.end51_crit_edge, label %for.body22.lr.ph

do.body3.for.end51_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end51

for.body22.lr.ph:                                 ; preds = %do.body3
  %active = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 3
  br label %for.body22

for.body22:                                       ; preds = %for.inc45.for.body22_crit_edge, %for.body22.lr.ph
  %peer.087 = phi ptr [ %peer.085, %for.body22.lr.ph ], [ %peer.0, %for.inc45.for.body22_crit_edge ]
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active, align 4
  %rdev = getelementptr inbounds %struct.rionet_peer, ptr %peer.087, i32 0, i32 1
  %14 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev, align 4
  %destid = getelementptr inbounds %struct.rio_dev, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %destid, align 4
  %idxprom25 = zext i16 %17 to i32
  %arrayidx26 = getelementptr ptr, ptr %13, i32 %idxprom25
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %for.body22.if.end38_crit_edge, label %if.then28

for.body22.if.end38_crit_edge:                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then28:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hport.i, align 8
  %call.i = tail call i32 @rio_mport_send_doorbell(ptr noundef %23, i16 noundef zeroext %17, i16 noundef zeroext 4097) #13
  %24 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %active, align 4
  %26 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rdev, align 4
  %destid35 = getelementptr inbounds %struct.rio_dev, ptr %27, i32 0, i32 24
  %28 = ptrtoint ptr %destid35 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %destid35, align 4
  %idxprom36 = zext i16 %29 to i32
  %arrayidx37 = getelementptr ptr, ptr %25, i32 %idxprom36
  %30 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then28, %for.body22.if.end38_crit_edge
  %res = getelementptr inbounds %struct.rionet_peer, ptr %peer.087, i32 0, i32 2
  %31 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %res, align 4
  %tobool39.not = icmp eq ptr %32, null
  br i1 %tobool39.not, label %if.end38.for.inc45_crit_edge, label %if.then40

if.end38.for.inc45_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc45

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdev, align 4
  %call43 = tail call i32 @rio_release_outb_dbell(ptr noundef %34, ptr noundef nonnull %32) #13
  br label %for.inc45

for.inc45:                                        ; preds = %if.then40, %if.end38.for.inc45_crit_edge
  %35 = ptrtoint ptr %peer.087 to i32
  call void @__asan_load4_noabort(i32 %35)
  %peer.0 = load ptr, ptr %peer.087, align 4
  %cmp20.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp20.not, label %for.inc45.for.end51_crit_edge, label %for.inc45.for.body22_crit_edge

for.inc45.for.body22_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body22

for.inc45.for.end51_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end51

for.end51:                                        ; preds = %for.inc45.for.end51_crit_edge, %do.body3.for.end51_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #13
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %call56 = tail call i32 @rio_release_inb_dbell(ptr noundef %37, i16 noundef zeroext 4096, i16 noundef zeroext 4097) #13
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  %call58 = tail call i32 @rio_release_inb_mbox(ptr noundef %39, i32 noundef 0) #13
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  %call60 = tail call i32 @rio_release_outb_mbox(ptr noundef %41, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rionet_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tx_lock = getelementptr i8, ptr %ndev, i32 3392
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %id = getelementptr inbounds %struct.rio_mport, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 8
  %idxprom = zext i8 %8 to i32
  %nact = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 4
  %9 = ptrtoint ptr %nact to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nact, align 4
  %tx_cnt = getelementptr i8, ptr %ndev, i32 3340
  %11 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_cnt, align 4
  %add = add i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp7 = icmp sgt i32 %add, 128
  br i1 %cmp7, label %if.end.if.then9_crit_edge, label %for.cond.preheader

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

for.cond.preheader:                               ; preds = %if.end
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %tx_slot.i = getelementptr i8, ptr %ndev, i32 3336
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %msg_enable.i = getelementptr i8, ptr %ndev, i32 3436
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  br label %for.body

if.end.thread:                                    ; preds = %entry
  %tx_cnt147 = getelementptr i8, ptr %ndev, i32 3340
  %15 = ptrtoint ptr %tx_cnt147 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_cnt147, align 4
  %add148 = add i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add148)
  %cmp7149 = icmp sgt i32 %add148, 128
  br i1 %cmp7149, label %if.end.thread.if.then9_crit_edge, label %if.else

if.end.thread.if.then9_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %if.end.thread.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %ndev) #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %19 = phi ptr [ %14, %for.cond.preheader ], [ %56, %for.inc.for.body_crit_edge ]
  %count.0154 = phi i32 [ 0, %for.cond.preheader ], [ %count.1, %for.inc.for.body_crit_edge ]
  %i.0153 = phi i32 [ 0, %for.cond.preheader ], [ %inc43, %for.inc.for.body_crit_edge ]
  %id26 = getelementptr inbounds %struct.rio_mport, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %id26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %id26, align 8
  %idxprom27 = zext i8 %21 to i32
  %active = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom27, i32 3
  %22 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active, align 4
  %arrayidx29 = getelementptr ptr, ptr %23, i32 %i.0153
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %25, null
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.then31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then31:                                        ; preds = %for.body
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  %ops.i.i = getelementptr inbounds %struct.rio_mport, ptr %19, i32 0, i32 11
  %30 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i, align 4
  %add_outb_message.i.i = getelementptr inbounds %struct.rio_ops, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %add_outb_message.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add_outb_message.i.i, align 4
  %call.i.i = tail call i32 %33(ptr noundef %19, ptr noundef nonnull %25, i32 noundef 0, ptr noundef %27, i32 noundef %29) #13
  %34 = ptrtoint ptr %tx_slot.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_slot.i, align 4
  %arrayidx.i = getelementptr %struct.rionet_private, ptr %add.ptr.i, i32 0, i32 2, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %skb, ptr %arrayidx.i, align 4
  %37 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  %41 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %42, %40
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %43 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_cnt, align 4
  %inc4.i = add i32 %44, 1
  store i32 %inc4.i, ptr %tx_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc4.i)
  %cmp.i = icmp eq i32 %inc4.i, 128
  br i1 %cmp.i, label %if.then.i, label %if.then31.if.end.i_crit_edge

if.then31.if.end.i_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then31.if.end.i_crit_edge
  %47 = ptrtoint ptr %tx_slot.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_slot.i, align 4
  %inc6.i = add i32 %48, 1
  %and.i = and i32 %inc6.i, 127
  store i32 %and.i, ptr %tx_slot.i, align 4
  %49 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable.i, align 4
  %and8.i = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i, label %if.end.i.rionet_queue_tx_msg.exit_crit_edge, label %do.end.i

if.end.i.rionet_queue_tx_msg.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rionet_queue_tx_msg.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str, i32 noundef %52) #16
  br label %rionet_queue_tx_msg.exit

rionet_queue_tx_msg.exit:                         ; preds = %do.end.i, %if.end.i.rionet_queue_tx_msg.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0154)
  %tobool39.not = icmp eq i32 %count.0154, 0
  br i1 %tobool39.not, label %rionet_queue_tx_msg.exit.if.end41_crit_edge, label %if.then40

rionet_queue_tx_msg.exit.if.end41_crit_edge:      ; preds = %rionet_queue_tx_msg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then40:                                        ; preds = %rionet_queue_tx_msg.exit
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #13
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #13, !srcloc !134
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then40.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !135

if.then40.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then40
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %54 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %.not.i.i.i = icmp sgt i32 %54, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end41_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !136

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end41_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then40.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then40.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #13
  br label %if.end41

if.end41:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end41_crit_edge, %rionet_queue_tx_msg.exit.if.end41_crit_edge
  %inc = add i32 %count.0154, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end41, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %inc, %if.end41 ], [ %count.0154, %for.body.for.inc_crit_edge ]
  %inc43 = add nuw nsw i32 %i.0153, 1
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 4
  %sys_size = getelementptr inbounds %struct.rio_mport, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not = icmp eq i32 %58, 0
  %cond = select i1 %tobool.not, i32 256, i32 65536
  %cmp23 = icmp ult i32 %inc43, %cond
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.if.end80_crit_edge

for.inc.if.end80_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else:                                          ; preds = %if.end.thread
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %1, ptr noundef nonnull dereferenceable(4) @.str.36, i32 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool47.not = icmp eq i32 %bcmp, 0
  br i1 %tobool47.not, label %if.then48, label %if.else.if.end80_crit_edge

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then48:                                        ; preds = %if.else
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr, align 1
  %conv51 = zext i8 %60 to i32
  %shl = shl nuw nsw i32 %conv51, 8
  %add.ptr54 = getelementptr i8, ptr %1, i32 5
  %61 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr54, align 1
  %conv55 = zext i8 %62 to i32
  %or = or i32 %shl, %conv55
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 4
  %id58 = getelementptr inbounds %struct.rio_mport, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %id58 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %id58, align 8
  %idxprom59 = zext i8 %66 to i32
  %active61 = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom59, i32 3
  %67 = ptrtoint ptr %active61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %active61, align 4
  %arrayidx63 = getelementptr ptr, ptr %68, i32 %or
  %69 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %70, null
  br i1 %tobool64.not, label %if.else74, label %if.then65

if.then65:                                        ; preds = %if.then48
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  %len.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %73 = ptrtoint ptr %len.i121 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i121, align 4
  %ops.i.i122 = getelementptr inbounds %struct.rio_mport, ptr %64, i32 0, i32 11
  %75 = ptrtoint ptr %ops.i.i122 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i.i122, align 4
  %add_outb_message.i.i123 = getelementptr inbounds %struct.rio_ops, ptr %76, i32 0, i32 10
  %77 = ptrtoint ptr %add_outb_message.i.i123 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add_outb_message.i.i123, align 4
  %call.i.i124 = tail call i32 %78(ptr noundef %64, ptr noundef nonnull %70, i32 noundef 0, ptr noundef %72, i32 noundef %74) #13
  %tx_slot.i125 = getelementptr i8, ptr %ndev, i32 3336
  %79 = ptrtoint ptr %tx_slot.i125 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_slot.i125, align 4
  %arrayidx.i126 = getelementptr %struct.rionet_private, ptr %add.ptr.i, i32 0, i32 2, i32 %80
  %81 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %skb, ptr %arrayidx.i126, align 4
  %tx_packets.i127 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %82 = ptrtoint ptr %tx_packets.i127 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_packets.i127, align 4
  %inc.i128 = add i32 %83, 1
  store i32 %inc.i128, ptr %tx_packets.i127, align 4
  %84 = ptrtoint ptr %len.i121 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len.i121, align 4
  %tx_bytes.i129 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %86 = ptrtoint ptr %tx_bytes.i129 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_bytes.i129, align 4
  %add.i130 = add i32 %87, %85
  store i32 %add.i130, ptr %tx_bytes.i129, align 4
  %88 = ptrtoint ptr %tx_cnt147 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_cnt147, align 4
  %inc4.i132 = add i32 %89, 1
  store i32 %inc4.i132, ptr %tx_cnt147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc4.i132)
  %cmp.i133 = icmp eq i32 %inc4.i132, 128
  br i1 %cmp.i133, label %if.then.i136, label %if.then65.if.end.i142_crit_edge

if.then65.if.end.i142_crit_edge:                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i142

if.then.i136:                                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i.i134 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %90 = ptrtoint ptr %_tx.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %_tx.i.i.i134, align 128
  %state.i.i.i135 = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i135) #13
  br label %if.end.i142

if.end.i142:                                      ; preds = %if.then.i136, %if.then65.if.end.i142_crit_edge
  %92 = ptrtoint ptr %tx_slot.i125 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_slot.i125, align 4
  %inc6.i137 = add i32 %93, 1
  %and.i138 = and i32 %inc6.i137, 127
  store i32 %and.i138, ptr %tx_slot.i125, align 4
  %msg_enable.i139 = getelementptr i8, ptr %ndev, i32 3436
  %94 = ptrtoint ptr %msg_enable.i139 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_enable.i139, align 4
  %and8.i140 = and i32 %95, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i140)
  %tobool.not.i141 = icmp eq i32 %and8.i140, 0
  br i1 %tobool.not.i141, label %if.end.i142.if.end80_crit_edge, label %do.end.i144

if.end.i142.if.end80_crit_edge:                   ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

do.end.i144:                                      ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %len.i121 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len.i121, align 4
  %call11.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str, i32 noundef %97) #16
  br label %if.end80

if.else74:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %98 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_packets, align 4
  %inc75 = add i32 %99, 1
  store i32 %inc75, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %100 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %102 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_bytes, align 4
  %add77 = add i32 %103, %101
  store i32 %add77, ptr %tx_bytes, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %if.end80

if.end80:                                         ; preds = %if.else74, %do.end.i144, %if.end.i142.if.end80_crit_edge, %if.else.if.end80_crit_edge, %for.inc.if.end80_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then9
  %retval.0 = phi i32 [ 16, %if.then9 ], [ 0, %if.end80 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_request_inb_dbell(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rionet_dbell_event(ptr noundef %mport, ptr nocapture noundef readonly %dev_id, i16 noundef zeroext %sid, i16 noundef zeroext %tid, i16 noundef zeroext %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %id = getelementptr inbounds %struct.rio_mport, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 8
  %msg_enable = getelementptr i8, ptr %dev_id, i32 3436
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %sid to i32
  %conv2 = zext i16 %tid to i32
  %conv3 = zext i16 %info to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = zext i16 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %info, label %if.else72 [
    i16 4096, label %if.then7
    i16 4097, label %if.then49
  ]

if.then7:                                         ; preds = %if.end
  %idxprom = zext i8 %3 to i32
  %active = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 3
  %7 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active, align 4
  %idxprom8 = zext i16 %sid to i32
  %arrayidx9 = getelementptr ptr, ptr %8, i32 %idxprom8
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.then11, label %if.then7.if.end84_crit_edge

if.then7.if.end84_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then11:                                        ; preds = %if.then7
  %lock = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %peers = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %11)
  %peer.0109 = load ptr, ptr %peers, align 4
  %cmp20.not110 = icmp eq ptr %peer.0109, %peers
  br i1 %cmp20.not110, label %if.then11.for.end_crit_edge, label %for.body.lr.ph

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then11
  %nact = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %peer.0111 = phi ptr [ %peer.0109, %for.body.lr.ph ], [ %peer.0, %for.inc.for.body_crit_edge ]
  %rdev = getelementptr inbounds %struct.rionet_peer, ptr %peer.0111, i32 0, i32 1
  %12 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev, align 4
  %destid = getelementptr inbounds %struct.rio_dev, ptr %13, i32 0, i32 24
  %14 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %destid, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %sid)
  %cmp24 = icmp eq i16 %15, %sid
  br i1 %cmp24, label %if.then26, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %active, align 4
  %arrayidx32 = getelementptr ptr, ptr %17, i32 %idxprom8
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %13, ptr %arrayidx32, align 4
  %19 = ptrtoint ptr %nact to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nact, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %nact, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %peer.0111 to i32
  call void @__asan_load4_noabort(i32 %21)
  %peer.0 = load ptr, ptr %peer.0111, align 4
  %cmp20.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then11.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %call44 = tail call i32 @rio_mport_send_doorbell(ptr noundef %mport, i16 noundef zeroext %sid, i16 noundef zeroext 4096) #13
  br label %if.end84

if.then49:                                        ; preds = %if.end
  %idxprom50 = zext i8 %3 to i32
  %lock52 = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom50, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock52) #13
  %active55 = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom50, i32 3
  %22 = ptrtoint ptr %active55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active55, align 4
  %idxprom56 = zext i16 %sid to i32
  %arrayidx57 = getelementptr ptr, ptr %23, i32 %idxprom56
  %24 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %25, null
  br i1 %tobool58.not, label %if.then49.if.end68_crit_edge, label %if.then59

if.then49.if.end68_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then59:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx57, align 4
  %nact67 = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %idxprom50, i32 4
  %27 = ptrtoint ptr %nact67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nact67, align 4
  %dec = add i32 %28, -1
  store i32 %dec, ptr %nact67, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then59, %if.then49.if.end68_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock52) #13
  br label %if.end84

if.else72:                                        ; preds = %if.end
  %29 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable, align 4
  %and74 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else72.if.end84_crit_edge, label %do.end79

if.else72.if.end84_crit_edge:                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

do.end79:                                         ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #15
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str) #16
  br label %if.end84

if.end84:                                         ; preds = %do.end79, %if.else72.if.end84_crit_edge, %if.end68, %for.end, %if.then7.if.end84_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_request_inb_mbox(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rionet_inb_msg_event(ptr nocapture noundef readnone %mport, ptr noundef %dev_id, i32 noundef %mbox, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %msg_enable = getelementptr i8, ptr %dev_id, i32 3436
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str, i32 noundef %mbox, i32 noundef %slot) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr i8, ptr %dev_id, i32 3348
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %rx_slot.i = getelementptr i8, ptr %dev_id, i32 3332
  %2 = ptrtoint ptr %rx_slot.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_slot.i, align 4
  %stats20.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  %i.0.i = phi i32 [ %3, %if.end ], [ %rem.i, %do.cond.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rionet_private, ptr %add.ptr.i, i32 0, i32 1, i32 %i.0.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.i.do.cond.i_crit_edge, label %if.end.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond.i

if.end.i:                                         ; preds = %do.body.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %ops.i.i = getelementptr inbounds %struct.rio_mport, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %get_inb_message.i.i = getelementptr inbounds %struct.rio_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %get_inb_message.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_inb_message.i.i, align 4
  %call.i.i = tail call ptr %11(ptr noundef %7, i32 noundef 0) #13
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.rionet_rx_clean.exit_crit_edge, label %if.end4.i

if.end.i.rionet_rx_clean.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rionet_rx_clean.exit

if.end4.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %data7.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %data7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %data7.i, align 4
  %15 = load ptr, ptr %arrayidx.i, align 4
  %call10.i = tail call ptr @skb_put(ptr noundef %15, i32 noundef 4096) #13
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call13.i = tail call zeroext i16 @eth_type_trans(ptr noundef %17, ptr noundef %dev_id) #13
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %call13.i, ptr %protocol.i, align 8
  %21 = load ptr, ptr %arrayidx.i, align 4
  %call18.i = tail call i32 @netif_rx(ptr noundef %21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i)
  %cmp.i = icmp eq i32 %call18.i, 1
  br i1 %cmp.i, label %if.end4.i.do.cond.sink.split.i_crit_edge, label %if.else.i

if.end4.i.do.cond.sink.split.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond.sink.split.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %stats20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stats20.i, align 8
  %inc21.i = add i32 %23, 1
  store i32 %inc21.i, ptr %stats20.i, align 8
  br label %do.cond.sink.split.i

do.cond.sink.split.i:                             ; preds = %if.else.i, %if.end4.i.do.cond.sink.split.i_crit_edge
  %rx_dropped.sink47.i = phi ptr [ %rx_bytes.i, %if.else.i ], [ %rx_dropped.i, %if.end4.i.do.cond.sink.split.i_crit_edge ]
  %.sink46.i = phi i32 [ 4096, %if.else.i ], [ 1, %if.end4.i.do.cond.sink.split.i_crit_edge ]
  %24 = ptrtoint ptr %rx_dropped.sink47.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_dropped.sink47.i, align 8
  %inc.i = add i32 %25, %.sink46.i
  store i32 %inc.i, ptr %rx_dropped.sink47.i, align 8
  br label %do.cond.i

do.cond.i:                                        ; preds = %do.cond.sink.split.i, %do.body.i.do.cond.i_crit_edge
  %add24.i = add i32 %i.0.i, 1
  %rem.i = srem i32 %add24.i, 128
  %26 = ptrtoint ptr %rx_slot.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_slot.i, align 4
  %cmp26.not.i = icmp eq i32 %rem.i, %27
  br i1 %cmp26.not.i, label %do.cond.i.rionet_rx_clean.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.cond.i.rionet_rx_clean.exit_crit_edge:         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rionet_rx_clean.exit

rionet_rx_clean.exit:                             ; preds = %do.cond.i.rionet_rx_clean.exit_crit_edge, %if.end.i.rionet_rx_clean.exit_crit_edge
  %i.1.i = phi i32 [ %rem.i, %do.cond.i.rionet_rx_clean.exit_crit_edge ], [ %i.0.i, %if.end.i.rionet_rx_clean.exit_crit_edge ]
  %28 = ptrtoint ptr %rx_slot.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_slot.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i, i32 %29)
  %cmp.not = icmp eq i32 %i.1.i, %29
  br i1 %cmp.not, label %rionet_rx_clean.exit.if.end4_crit_edge, label %if.then3

rionet_rx_clean.exit.if.end4_crit_edge:           ; preds = %rionet_rx_clean.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %rionet_rx_clean.exit
  %30 = ptrtoint ptr %rx_slot.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_slot.i, align 4
  br label %do.body.i16

do.body.i16:                                      ; preds = %if.end.i20.do.body.i16_crit_edge, %if.then3
  %i.0.i13 = phi i32 [ %31, %if.then3 ], [ %rem.i19, %if.end.i20.do.body.i16_crit_edge ]
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 4096, i32 noundef 2592) #13
  %arrayidx.i14 = getelementptr %struct.rionet_private, ptr %add.ptr.i, i32 0, i32 1, i32 %i.0.i13
  %32 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i.i, ptr %arrayidx.i14, align 4
  %tobool.not.i15 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i15, label %do.body.i16.rionet_rx_fill.exit_crit_edge, label %if.end.i20

do.body.i16.rionet_rx_fill.exit_crit_edge:        ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #15
  br label %rionet_rx_fill.exit

if.end.i20:                                       ; preds = %do.body.i16
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %ops.i.i17 = getelementptr inbounds %struct.rio_mport, ptr %34, i32 0, i32 11
  %37 = ptrtoint ptr %ops.i.i17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i17, align 4
  %add_inb_buffer.i.i = getelementptr inbounds %struct.rio_ops, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %add_inb_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add_inb_buffer.i.i, align 4
  %call.i.i18 = tail call i32 %40(ptr noundef %34, i32 noundef 0, ptr noundef %36) #13
  %add.i = add i32 %i.0.i13, 1
  %rem.i19 = srem i32 %add.i, 128
  %cmp.not.i = icmp eq i32 %rem.i19, %i.1.i
  br i1 %cmp.not.i, label %if.end.i20.rionet_rx_fill.exit_crit_edge, label %if.end.i20.do.body.i16_crit_edge

if.end.i20.do.body.i16_crit_edge:                 ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i16

if.end.i20.rionet_rx_fill.exit_crit_edge:         ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %rionet_rx_fill.exit

rionet_rx_fill.exit:                              ; preds = %if.end.i20.rionet_rx_fill.exit_crit_edge, %do.body.i16.rionet_rx_fill.exit_crit_edge
  %i.1.i21 = phi i32 [ %i.1.i, %if.end.i20.rionet_rx_fill.exit_crit_edge ], [ %i.0.i13, %do.body.i16.rionet_rx_fill.exit_crit_edge ]
  %41 = ptrtoint ptr %rx_slot.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.1.i21, ptr %rx_slot.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %rionet_rx_fill.exit, %rionet_rx_clean.exit.if.end4_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_request_outb_mbox(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rionet_outb_msg_event(ptr nocapture noundef readnone %mport, ptr noundef %dev_id, i32 noundef %mbox, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %tx_lock = getelementptr i8, ptr %dev_id, i32 3392
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #13
  %msg_enable = getelementptr i8, ptr %dev_id, i32 3436
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str, i32 noundef %mbox, i32 noundef %slot) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_cnt = getelementptr i8, ptr %dev_id, i32 3340
  %2 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not32 = icmp eq i32 %3, 0
  br i1 %tobool2.not32, label %if.end.if.then13_crit_edge, label %land.rhs.lr.ph

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

land.rhs.lr.ph:                                   ; preds = %if.end
  %ack_slot = getelementptr i8, ptr %dev_id, i32 3344
  %4 = ptrtoint ptr %ack_slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ack_slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %slot)
  %cmp.not36 = icmp eq i32 %5, %slot
  br i1 %cmp.not36, label %land.rhs.lr.ph.while.end_crit_edge, label %land.rhs.lr.ph.while.body_crit_edge

land.rhs.lr.ph.while.body_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %while.body

land.rhs.lr.ph.while.end_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs:                                         ; preds = %while.body
  %6 = ptrtoint ptr %ack_slot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ack_slot, align 4
  %cmp.not = icmp eq i32 %7, %slot
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.lr.ph.while.body_crit_edge
  %8 = phi i32 [ %7, %land.rhs.while.body_crit_edge ], [ %5, %land.rhs.lr.ph.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.rionet_private, ptr %add.ptr.i, i32 0, i32 2, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %10, i32 noundef 1) #13
  %11 = ptrtoint ptr %ack_slot to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ack_slot, align 4
  %arrayidx6 = getelementptr %struct.rionet_private, ptr %add.ptr.i, i32 0, i32 2, i32 %12
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx6, align 4
  %14 = load i32, ptr %ack_slot, align 4
  %inc = add i32 %14, 1
  %and9 = and i32 %inc, 127
  store i32 %and9, ptr %ack_slot, align 4
  %15 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_cnt, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %tx_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %while.body.if.then13_crit_edge, label %land.rhs

while.body.if.then13_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %land.rhs.lr.ph.while.end_crit_edge
  %.lcssa = phi i32 [ %3, %land.rhs.lr.ph.while.end_crit_edge ], [ %dec, %land.rhs.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %.lcssa)
  %cmp12 = icmp slt i32 %.lcssa, 128
  br i1 %cmp12, label %while.end.if.then13_crit_edge, label %while.end.if.end14_crit_edge

while.end.if.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

while.end.if.then13_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %while.end.if.then13_crit_edge, %while.body.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %18) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %while.end.if.end14_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_release_outb_dbell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_release_inb_dbell(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_release_inb_mbox(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_release_outb_mbox(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rionet_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #13
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.20, i32 noundef 32) #13
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %call5 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str.39, i32 noundef 32) #13
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct.rio_mport, ptr %1, i32 0, i32 17
  %call8 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %name, i32 noundef 32) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rionet_get_msglevel(ptr nocapture noundef readonly %ndev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 3436
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @rionet_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %value) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 3436
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rionet_remove_mport(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr i8, ptr %dev, i32 -56
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id1, align 8
  %conv = zext i8 %1 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rionet_remove_mport.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rionet_remove_mport, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr i8, ptr %dev, i32 -40
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rionet_remove_mport.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, ptr noundef %name) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv
  %nact = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv, i32 4
  %2 = ptrtoint ptr %nact to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nact, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %do.end.if.end29_crit_edge, label %do.end21, !prof !136

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 675, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %3) #13
  br label %if.end29

if.end29:                                         ; preds = %do.end21, %do.end.if.end29_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool40.not = icmp eq ptr %5, null
  br i1 %tobool40.not, label %if.end64, label %if.end29.if.then75_crit_edge, !prof !135

if.end29.if.then75_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75

if.end64:                                         ; preds = %if.end29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 677, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.40) #13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %arrayidx, align 4
  %tobool74.not = icmp eq ptr %.pr, null
  br i1 %tobool74.not, label %if.end64.if.end85_crit_edge, label %if.end64.if.then75_crit_edge

if.end64.if.then75_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then75:                                        ; preds = %if.end64.if.then75_crit_edge, %if.end29.if.then75_crit_edge
  %7 = phi ptr [ %.pr, %if.end64.if.then75_crit_edge ], [ %5, %if.end29.if.then75_crit_edge ]
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @unregister_netdev(ptr noundef nonnull %7) #13
  %active = getelementptr [8 x %struct.rionet_net], ptr @nets, i32 0, i32 %conv, i32 3
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %active, align 4
  %12 = ptrtoint ptr %11 to i32
  %sys_size = getelementptr i8, ptr %dev, i32 -52
  %13 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool79.not = icmp eq i32 %14, 0
  %cond.i.i = select i1 %tobool79.not, i32 0, i32 6
  tail call void @free_pages(i32 noundef %12, i32 noundef %cond.i.i) #13
  %15 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %active, align 4
  tail call void @free_netdev(ptr noundef nonnull %7) #13
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then75, %if.end64.if.end85_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_interface_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !52, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !95, !96, !97, !98, !100, !102, !104, !106, !107, !108, !110, !112, !114, !115, !116, !117, !119, !120}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__UNIQUE_ID_author339, !1, !"__UNIQUE_ID_author339", i1 false, i1 false}
!1 = !{!"../drivers/net/rionet.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../drivers/net/rionet.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_file341, !5, !"__UNIQUE_ID_file341", i1 false, i1 false}
!5 = !{!"../drivers/net/rionet.c", i32 32, i32 1}
!6 = !{ptr @__UNIQUE_ID_license342, !5, !"__UNIQUE_ID_license342", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_rionet__346_748_rionet_init7, !8, !"__initcall__kmod_rionet__346_748_rionet_init7", i1 false, i1 false}
!8 = !{!"../drivers/net/rionet.c", i32 748, i32 1}
!9 = !{ptr @__exitcall_rionet_exit, !10, !"__exitcall_rionet_exit", i1 false, i1 false}
!10 = !{!"../drivers/net/rionet.c", i32 749, i32 1}
!11 = !{ptr @rionet_notifier, !12, !"rionet_notifier", i1 false, i1 false}
!12 = !{!"../drivers/net/rionet.c", i32 709, i32 30}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/rionet.c", i32 645, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rionet_shutdown.__UNIQUE_ID_ddebug344, !14, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!19 = !{ptr @nets, !20, !"nets", i1 false, i1 false}
!20 = !{!"../drivers/net/rionet.c", i32 79, i32 26}
!21 = !{ptr @rionet_interface, !22, !"rionet_interface", i1 false, i1 false}
!22 = !{!"../drivers/net/rionet.c", i32 702, i32 32}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/rionet.c", i32 569, i32 4}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rionet_add_dev._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @rionet_add_dev._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/rionet.c", i32 584, i32 4}
!30 = !{ptr @rionet_add_dev._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rionet_add_dev._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @rionet_add_dev.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/rionet.c", i32 591, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/rionet.c", i32 616, i32 4}
!37 = !{ptr @rionet_add_dev._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rionet_add_dev._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/rionet.c", i32 625, i32 3}
!41 = !{ptr @rionet_add_dev.__UNIQUE_ID_ddebug343, !40, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!42 = !{ptr @rionet_setup_netdev.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/rionet.c", i32 522, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rionet_setup_netdev.__key.15, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/rionet.c", i32 523, i32 2}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/rionet.c", i32 534, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rionet_setup_netdev._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @rionet_setup_netdev._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rionet_netdev_ops, !56, !"rionet_netdev_ops", i1 false, i1 false}
!56 = !{!"../drivers/net/rionet.c", i32 473, i32 36}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/rionet.c", i32 318, i32 3}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rionet_open._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rionet_open._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/rionet.c", i32 236, i32 3}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rionet_dbell_event._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @rionet_dbell_event._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/rionet.c", i32 261, i32 4}
!69 = !{ptr @rionet_dbell_event._entry.25, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @rionet_dbell_event._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/rionet.c", i32 273, i32 3}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @rionet_inb_msg_event._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @rionet_inb_msg_event._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/rionet.c", i32 290, i32 3}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rionet_outb_msg_event._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @rionet_outb_msg_event._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/rionet.c", i32 375, i32 3}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rionet_close._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @rionet_close._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/rionet.c", i32 187, i32 3}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rionet_start_xmit._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @rionet_start_xmit._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/rionet.c", i32 204, i32 13}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/rionet.c", i32 163, i32 3}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rionet_queue_tx_msg._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @rionet_queue_tx_msg._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @rionet_ethtool_ops, !99, !"rionet_ethtool_ops", i1 false, i1 false}
!99 = !{!"../drivers/net/rionet.c", i32 466, i32 33}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/rionet.c", i32 448, i32 28}
!102 = !{ptr @rio_mport_interface, !103, !"rio_mport_interface", i1 false, i1 false}
!103 = !{!"../drivers/net/rionet.c", i32 714, i32 31}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/rionet.c", i32 672, i32 2}
!106 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rionet_remove_mport.__UNIQUE_ID_ddebug345, !105, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/rionet.c", i32 674, i32 2}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/rionet.c", i32 676, i32 2}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/rionet.c", i32 726, i32 3}
!114 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @rionet_init._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @rionet_init._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/rionet.c", i32 733, i32 3}
!119 = !{ptr @rionet_init._entry.46, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @rionet_init._entry_ptr.48, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i64 2148970268, i64 2148970273, i64 2148970286, i64 2148970330, i64 2148970364, i64 2148970385}
!131 = !{!"auto-init"}
!132 = !{i32 0, i32 33}
!133 = !{i8 0, i8 2}
!134 = !{i64 2148358421, i64 2148358453, i64 2148358482, i64 2148358516, i64 2148358547, i64 2148358570}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{!"branch_weights", i32 2000, i32 1}
