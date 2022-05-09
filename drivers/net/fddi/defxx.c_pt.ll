; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/defxx.c_pt.bc'
source_filename = "../drivers/net/fddi/defxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.118 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.DFX_board_tag = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %union.PI_TYPE_1_PROD_REG, %union.PI_TYPE_1_PROD_REG, %union.PI_TYPE_2_PROD_REG, [6 x i8], i32, [372 x i8], i32, i32, i32, i32, i32, [256 x ptr], [256 x %struct.XMT_DRIVER_DESCR], %struct.spinlock, ptr, %union.anon.125, ptr, i8, i32, i32, i32, i32, [6 x i8], %struct.fddi_statistics, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.PI_TYPE_1_PROD_REG = type { i32 }
%union.PI_TYPE_2_PROD_REG = type { i32 }
%struct.XMT_DRIVER_DESCR = type { ptr }
%union.anon.125 = type { ptr }
%struct.fddi_statistics = type { %struct.net_device_stats, [8 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [6 x i8], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.PI_DESCR_BLOCK = type { [256 x %struct.PI_RCV_DESCR], [256 x %struct.PI_XMT_DESCR], [64 x %struct.PI_RCV_DESCR], [16 x %struct.PI_RCV_DESCR], [16 x %struct.PI_RCV_DESCR], [16 x %struct.PI_XMT_DESCR] }
%struct.PI_RCV_DESCR = type { i32, i32 }
%struct.PI_XMT_DESCR = type { i32, i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.PI_CMD_ADDR_FILTER_SET_REQ = type { i32, [62 x %struct.PI_LAN_ADDR] }
%struct.PI_LAN_ADDR = type { i32, i32 }
%struct.PI_CMD_FILTERS_SET_REQ = type { i32, [63 x %struct.PI_ITEM_LIST] }
%struct.PI_ITEM_LIST = type { i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.PI_CMD_SMT_MIB_GET_RSP = type { %struct.PI_RSP_HEADER, %struct.PI_STATION_ID, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.PI_CNTR, %struct.PI_CNTR, i32, i32, i32, i32, i32, %struct.PI_LAN_ADDR, %struct.PI_LAN_ADDR, %struct.PI_LAN_ADDR, %struct.PI_LAN_ADDR, i32, i32, i32, %struct.PI_LAN_ADDR, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], %struct.PI_CNTR }
%struct.PI_RSP_HEADER = type { i32, i32, i32 }
%struct.PI_STATION_ID = type { i32, i32 }
%struct.PI_CNTR = type { i32, i32 }
%struct.PI_CMD_CNTRS_GET_RSP = type { %struct.PI_RSP_HEADER, %struct.PI_CNTR, %struct.PI_CNTR_BLK }
%struct.PI_CNTR_BLK = type { %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR, [2 x %struct.PI_CNTR], [2 x %struct.PI_CNTR], [2 x %struct.PI_CNTR], [2 x %struct.PI_CNTR], [2 x %struct.PI_CNTR], %struct.PI_CNTR, %struct.PI_CNTR, %struct.PI_CNTR }
%struct.anon.126 = type { i8, i8, i8, i8 }
%struct.PI_CMD_CHARS_SET_REQ = type { i32, [42 x %struct.anon.119] }
%struct.anon.119 = type { i32, i32, i32 }
%struct.PI_CMD_SNMP_SET_REQ = type { i32, [42 x %struct.anon.120] }
%struct.anon.120 = type { i32, i32, i32 }
%struct.anon.124 = type { i8, i8, i8, i8 }
%struct.anon.123 = type { i8, i8, i8, i8 }
%struct.PI_CONSUMER_BLOCK = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_defxx__339_3848_dfx_init6 = internal global ptr @dfx_init, section ".initcall6.init", align 4
@__exitcall_dfx_cleanup = internal global ptr @dfx_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author340 = internal constant [33 x i8] c"defxx.author=Lawrence V. Stefani\00", section ".modinfo", align 1
@__UNIQUE_ID_description341 = internal constant [93 x i8] c"defxx.description=DEC FDDIcontroller TC/EISA/PCI (DEFTA/DEFEA/DEFPA) driver v1.12 2021/03/10\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [34 x i8] c"defxx.file=drivers/net/fddi/defxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [18 x i8] c"defxx.license=GPL\00", section ".modinfo", align 1
@dfx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @dfx_pci_table, ptr @dfx_pci_register, ptr @dfx_pci_unregister, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"defxx\00", [26 x i8] zeroinitializer }, align 32
@dfx_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4113, i32 15, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dfx_register.version_disp = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@dfx_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dfx_register\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/fddi/defxx.c\00", [39 x i8] zeroinitializer }, align 32
@dfx_register._entry_ptr = internal global ptr @dfx_register._entry, section ".printk_index", align 4
@version = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"defxx: v1.12 2021/03/10  Lawrence V. Stefani and others\0A\00", [39 x i8] zeroinitializer }, align 32
@dfx_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Unable to allocate fddidev, aborting\0A\00", [52 x i8] zeroinitializer }, align 32
@dfx_register._entry_ptr.5 = internal global ptr @dfx_register._entry.3, section ".printk_index", align 4
@dfx_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Cannot enable PCI device, aborting\0A\00", [54 x i8] zeroinitializer }, align 32
@dfx_register._entry_ptr.8 = internal global ptr @dfx_register._entry.6, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@dfx_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Cannot map MMIO\0A\00", [41 x i8] zeroinitializer }, align 32
@dfx_register._entry_ptr.11 = internal global ptr @dfx_register._entry.9, section ".printk_index", align 4
@dfx_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @dfx_open, ptr @dfx_close, ptr @dfx_xmt_queue_pkt, ptr null, ptr null, ptr null, ptr @dfx_ctl_set_multicast_list, ptr @dfx_ctl_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dfx_ctl_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@dfx_register._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: registered as %s\0A\00", [42 x i8] zeroinitializer }, align 32
@dfx_register._entry_ptr.14 = internal global ptr @dfx_register._entry.12, section ".printk_index", align 4
@dfx_register_res_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s: Cannot reserve %s resource 0x%lx @ 0x%lx, aborting\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dfx_register_res_err\00", [43 x i8] zeroinitializer }, align 32
@dfx_register_res_err._entry_ptr = internal global ptr @dfx_register_res_err._entry, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MMIO\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I/O\00", [28 x i8] zeroinitializer }, align 32
@dfx_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Requested IRQ %d is busy\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dfx_open\00", [23 x i8] zeroinitializer }, align 32
@dfx_open._entry_ptr = internal global ptr @dfx_open._entry, section ".printk_index", align 4
@dfx_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bp->lock\00", [22 x i8] zeroinitializer }, align 32
@dfx_open._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Adapter open failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@dfx_open._entry_ptr.24 = internal global ptr @dfx_open._entry.22, section ".printk_index", align 4
@dfx_rcv_queue_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 3185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: Could not allocate receive buffer.  Dropping packet.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dfx_rcv_queue_process\00", [42 x i8] zeroinitializer }, align 32
@dfx_rcv_queue_process._entry_ptr = internal global ptr @dfx_rcv_queue_process._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dfx_int_type_0_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Non-Existent Memory Access Error\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dfx_int_type_0_process\00", [41 x i8] zeroinitializer }, align 32
@dfx_int_type_0_process._entry_ptr = internal global ptr @dfx_int_type_0_process._entry, section ".printk_index", align 4
@dfx_int_type_0_process._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 1761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Packet Memory Parity Error\0A\00", [32 x i8] zeroinitializer }, align 32
@dfx_int_type_0_process._entry_ptr.33 = internal global ptr @dfx_int_type_0_process._entry.31, section ".printk_index", align 4
@dfx_int_type_0_process._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 1766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Host Bus Parity Error\0A\00", [37 x i8] zeroinitializer }, align 32
@dfx_int_type_0_process._entry_ptr.36 = internal global ptr @dfx_int_type_0_process._entry.34, section ".printk_index", align 4
@dfx_int_type_0_process._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 1772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Resetting adapter...\0A\00", [38 x i8] zeroinitializer }, align 32
@dfx_int_type_0_process._entry_ptr.39 = internal global ptr @dfx_int_type_0_process._entry.37, section ".printk_index", align 4
@dfx_int_type_0_process._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.2, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: Adapter reset failed!  Disabling adapter interrupts.\0A\00", [38 x i8] zeroinitializer }, align 32
@dfx_int_type_0_process._entry_ptr.42 = internal global ptr @dfx_int_type_0_process._entry.40, section ".printk_index", align 4
@dfx_int_type_0_process._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.2, i32 1779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Adapter reset successful!\0A\00", [33 x i8] zeroinitializer }, align 32
@dfx_int_type_0_process._entry_ptr.45 = internal global ptr @dfx_int_type_0_process._entry.43, section ".printk_index", align 4
@dfx_int_type_0_process._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.30, ptr @.str.2, i32 1813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Controller has transitioned to HALTED state!\0A\00", [46 x i8] zeroinitializer }, align 32
@dfx_int_type_0_process._entry_ptr.48 = internal global ptr @dfx_int_type_0_process._entry.46, section ".printk_index", align 4
@dfx_int_type_0_process._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dfx_int_type_0_process._entry_ptr.50 = internal global ptr @dfx_int_type_0_process._entry.49, section ".printk_index", align 4
@dfx_int_type_0_process._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.2, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dfx_int_type_0_process._entry_ptr.52 = internal global ptr @dfx_int_type_0_process._entry.51, section ".printk_index", align 4
@dfx_int_type_0_process._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.2, i32 1827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dfx_int_type_0_process._entry_ptr.54 = internal global ptr @dfx_int_type_0_process._entry.53, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dfx_int_pr_halt_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Halt ID: Selftest Timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dfx_int_pr_halt_id\00", [45 x i8] zeroinitializer }, align 32
@dfx_int_pr_halt_id._entry_ptr = internal global ptr @dfx_int_pr_halt_id._entry, section ".printk_index", align 4
@dfx_int_pr_halt_id._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 1647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Halt ID: Host Bus Parity Error\0A\00", [60 x i8] zeroinitializer }, align 32
@dfx_int_pr_halt_id._entry_ptr.59 = internal global ptr @dfx_int_pr_halt_id._entry.57, section ".printk_index", align 4
@dfx_int_pr_halt_id._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 1651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Halt ID: Host-Directed Halt\0A\00", [63 x i8] zeroinitializer }, align 32
@dfx_int_pr_halt_id._entry_ptr.62 = internal global ptr @dfx_int_pr_halt_id._entry.60, section ".printk_index", align 4
@dfx_int_pr_halt_id._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 1655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Halt ID: Adapter Software Fault\0A\00", [59 x i8] zeroinitializer }, align 32
@dfx_int_pr_halt_id._entry_ptr.65 = internal global ptr @dfx_int_pr_halt_id._entry.63, section ".printk_index", align 4
@dfx_int_pr_halt_id._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.2, i32 1659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Halt ID: Adapter Hardware Fault\0A\00", [59 x i8] zeroinitializer }, align 32
@dfx_int_pr_halt_id._entry_ptr.68 = internal global ptr @dfx_int_pr_halt_id._entry.66, section ".printk_index", align 4
@dfx_int_pr_halt_id._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.56, ptr @.str.2, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Halt ID: FDDI Network PC Trace Path Test\0A\00", [50 x i8] zeroinitializer }, align 32
@dfx_int_pr_halt_id._entry_ptr.71 = internal global ptr @dfx_int_pr_halt_id._entry.69, section ".printk_index", align 4
@dfx_int_pr_halt_id._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.56, ptr @.str.2, i32 1667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Halt ID: Adapter DMA Error\0A\00", [32 x i8] zeroinitializer }, align 32
@dfx_int_pr_halt_id._entry_ptr.74 = internal global ptr @dfx_int_pr_halt_id._entry.72, section ".printk_index", align 4
@dfx_int_pr_halt_id._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.56, ptr @.str.2, i32 1671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Halt ID: Firmware Image CRC Error\0A\00", [57 x i8] zeroinitializer }, align 32
@dfx_int_pr_halt_id._entry_ptr.77 = internal global ptr @dfx_int_pr_halt_id._entry.75, section ".printk_index", align 4
@dfx_int_pr_halt_id._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.56, ptr @.str.2, i32 1675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Halt ID: 68000 Bus Exception\0A\00", [62 x i8] zeroinitializer }, align 32
@dfx_int_pr_halt_id._entry_ptr.80 = internal global ptr @dfx_int_pr_halt_id._entry.78, section ".printk_index", align 4
@dfx_int_pr_halt_id._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.56, ptr @.str.2, i32 1679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Halt ID: Unknown (code = %X)\0A\00", [62 x i8] zeroinitializer }, align 32
@dfx_int_pr_halt_id._entry_ptr.83 = internal global ptr @dfx_int_pr_halt_id._entry.81, section ".printk_index", align 4
@dfx_adap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Could not uninitialize/reset adapter!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dfx_adap_init\00", [18 x i8] zeroinitializer }, align 32
@dfx_adap_init._entry_ptr = internal global ptr @dfx_adap_init._entry, section ".printk_index", align 4
@dfx_adap_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Could not set adapter burst size!\0A\00", [57 x i8] zeroinitializer }, align 32
@dfx_adap_init._entry_ptr.88 = internal global ptr @dfx_adap_init._entry.86, section ".printk_index", align 4
@dfx_adap_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Could not set consumer block address!\0A\00", [53 x i8] zeroinitializer }, align 32
@dfx_adap_init._entry_ptr.91 = internal global ptr @dfx_adap_init._entry.89, section ".printk_index", align 4
@dfx_adap_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Could not set descriptor block address!\0A\00", [51 x i8] zeroinitializer }, align 32
@dfx_adap_init._entry_ptr.94 = internal global ptr @dfx_adap_init._entry.92, section ".printk_index", align 4
@dfx_adap_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.85, ptr @.str.2, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: DMA command request failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@dfx_adap_init._entry_ptr.97 = internal global ptr @dfx_adap_init._entry.95, section ".printk_index", align 4
@dfx_adap_init._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.85, ptr @.str.2, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dfx_adap_init._entry_ptr.99 = internal global ptr @dfx_adap_init._entry.98, section ".printk_index", align 4
@dfx_adap_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.85, ptr @.str.2, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Adapter CAM update failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@dfx_adap_init._entry_ptr.102 = internal global ptr @dfx_adap_init._entry.100, section ".printk_index", align 4
@dfx_adap_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.85, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Adapter filters update failed!\0A\00", [60 x i8] zeroinitializer }, align 32
@dfx_adap_init._entry_ptr.105 = internal global ptr @dfx_adap_init._entry.103, section ".printk_index", align 4
@dfx_adap_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.85, ptr @.str.2, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Receive buffer allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@dfx_adap_init._entry_ptr.108 = internal global ptr @dfx_adap_init._entry.106, section ".printk_index", align 4
@dfx_adap_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.85, ptr @.str.2, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Start command failed\0A\00", [38 x i8] zeroinitializer }, align 32
@dfx_adap_init._entry_ptr.111 = internal global ptr @dfx_adap_init._entry.109, section ".printk_index", align 4
@dfx_xmt_queue_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 3317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Invalid packet length - %u bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dfx_xmt_queue_pkt\00", [46 x i8] zeroinitializer }, align 32
@dfx_xmt_queue_pkt._entry_ptr = internal global ptr @dfx_xmt_queue_pkt._entry, section ".printk_index", align 4
@dfx_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Could not read adapter factory MAC address!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dfx_driver_init\00", [16 x i8] zeroinitializer }, align 32
@dfx_driver_init._entry_ptr = internal global ptr @dfx_driver_init._entry, section ".printk_index", align 4
@dfx_driver_init._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dfx_driver_init._entry_ptr.117 = internal global ptr @dfx_driver_init._entry.116, section ".printk_index", align 4
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DEFPA\00", [26 x i8] zeroinitializer }, align 32
@dfx_driver_init._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.115, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s: %s at %s addr = 0x%llx, IRQ = %d, Hardware addr = %pMF\0A\00", [34 x i8] zeroinitializer }, align 32
@dfx_driver_init._entry_ptr.123 = internal global ptr @dfx_driver_init._entry.121, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.124 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"dfx_pci_driver\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 3750, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 3833, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"dfx_pci_table\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 3744, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"dfx_register.version_disp\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 546, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 232, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 551, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 560, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 623, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"dfx_netdev_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 486, i32 36 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 647, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 498, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1462, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1491, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1498, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 3185, i32 6 }
@___asan_gen_.223 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 326, i32 6 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1756, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1761, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1766, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1772, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1775, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1779, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1813, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1820, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1823, i32 5 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1827, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1643, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1647, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1651, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1655, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1659, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1663, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1667, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1671, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1675, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1679, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1265, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1299, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1316, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1334, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1348, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1364, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1372, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1380, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1396, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1407, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 3316, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1097, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1106, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1126, i32 16 }
@___asan_gen_.426 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.430 = private constant [28 x i8] c"../drivers/net/fddi/defxx.c\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1127, i32 2 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_license343, ptr @__exitcall_dfx_cleanup, ptr @__initcall__kmod_defxx__339_3848_dfx_init6, ptr @dfx_adap_init._entry, ptr @dfx_adap_init._entry.100, ptr @dfx_adap_init._entry.103, ptr @dfx_adap_init._entry.106, ptr @dfx_adap_init._entry.109, ptr @dfx_adap_init._entry.86, ptr @dfx_adap_init._entry.89, ptr @dfx_adap_init._entry.92, ptr @dfx_adap_init._entry.95, ptr @dfx_adap_init._entry.98, ptr @dfx_adap_init._entry_ptr, ptr @dfx_adap_init._entry_ptr.102, ptr @dfx_adap_init._entry_ptr.105, ptr @dfx_adap_init._entry_ptr.108, ptr @dfx_adap_init._entry_ptr.111, ptr @dfx_adap_init._entry_ptr.88, ptr @dfx_adap_init._entry_ptr.91, ptr @dfx_adap_init._entry_ptr.94, ptr @dfx_adap_init._entry_ptr.97, ptr @dfx_adap_init._entry_ptr.99, ptr @dfx_driver_init._entry, ptr @dfx_driver_init._entry.116, ptr @dfx_driver_init._entry.121, ptr @dfx_driver_init._entry_ptr, ptr @dfx_driver_init._entry_ptr.117, ptr @dfx_driver_init._entry_ptr.123, ptr @dfx_int_pr_halt_id._entry, ptr @dfx_int_pr_halt_id._entry.57, ptr @dfx_int_pr_halt_id._entry.60, ptr @dfx_int_pr_halt_id._entry.63, ptr @dfx_int_pr_halt_id._entry.66, ptr @dfx_int_pr_halt_id._entry.69, ptr @dfx_int_pr_halt_id._entry.72, ptr @dfx_int_pr_halt_id._entry.75, ptr @dfx_int_pr_halt_id._entry.78, ptr @dfx_int_pr_halt_id._entry.81, ptr @dfx_int_pr_halt_id._entry_ptr, ptr @dfx_int_pr_halt_id._entry_ptr.59, ptr @dfx_int_pr_halt_id._entry_ptr.62, ptr @dfx_int_pr_halt_id._entry_ptr.65, ptr @dfx_int_pr_halt_id._entry_ptr.68, ptr @dfx_int_pr_halt_id._entry_ptr.71, ptr @dfx_int_pr_halt_id._entry_ptr.74, ptr @dfx_int_pr_halt_id._entry_ptr.77, ptr @dfx_int_pr_halt_id._entry_ptr.80, ptr @dfx_int_pr_halt_id._entry_ptr.83, ptr @dfx_int_type_0_process._entry, ptr @dfx_int_type_0_process._entry.31, ptr @dfx_int_type_0_process._entry.34, ptr @dfx_int_type_0_process._entry.37, ptr @dfx_int_type_0_process._entry.40, ptr @dfx_int_type_0_process._entry.43, ptr @dfx_int_type_0_process._entry.46, ptr @dfx_int_type_0_process._entry.49, ptr @dfx_int_type_0_process._entry.51, ptr @dfx_int_type_0_process._entry.53, ptr @dfx_int_type_0_process._entry_ptr, ptr @dfx_int_type_0_process._entry_ptr.33, ptr @dfx_int_type_0_process._entry_ptr.36, ptr @dfx_int_type_0_process._entry_ptr.39, ptr @dfx_int_type_0_process._entry_ptr.42, ptr @dfx_int_type_0_process._entry_ptr.45, ptr @dfx_int_type_0_process._entry_ptr.48, ptr @dfx_int_type_0_process._entry_ptr.50, ptr @dfx_int_type_0_process._entry_ptr.52, ptr @dfx_int_type_0_process._entry_ptr.54, ptr @dfx_open._entry, ptr @dfx_open._entry.22, ptr @dfx_open._entry_ptr, ptr @dfx_open._entry_ptr.24, ptr @dfx_rcv_queue_process._entry, ptr @dfx_rcv_queue_process._entry_ptr, ptr @dfx_register._entry, ptr @dfx_register._entry.12, ptr @dfx_register._entry.3, ptr @dfx_register._entry.6, ptr @dfx_register._entry.9, ptr @dfx_register._entry_ptr, ptr @dfx_register._entry_ptr.11, ptr @dfx_register._entry_ptr.14, ptr @dfx_register._entry_ptr.5, ptr @dfx_register._entry_ptr.8, ptr @dfx_register_res_err._entry, ptr @dfx_register_res_err._entry_ptr, ptr @dfx_xmt_queue_pkt._entry, ptr @dfx_xmt_queue_pkt._entry_ptr, ptr @dfx_pci_driver, ptr @.str, ptr @dfx_pci_table, ptr @dfx_register.version_disp, ptr @.str.1, ptr @.str.2, ptr @version, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @dfx_netdev_ops, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dfx_open.__key, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.120, ptr @.str.122], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_register.version_disp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_register._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_register_res_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_open._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_rcv_queue_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_type_0_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_type_0_process._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_type_0_process._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_type_0_process._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_type_0_process._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_type_0_process._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_type_0_process._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_type_0_process._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_type_0_process._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_type_0_process._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_pr_halt_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_pr_halt_id._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_pr_halt_id._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_pr_halt_id._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_pr_halt_id._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_pr_halt_id._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_pr_halt_id._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_pr_halt_id._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_pr_halt_id._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_int_pr_halt_id._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_adap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_adap_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_adap_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_adap_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_adap_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_adap_init._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_adap_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_adap_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_adap_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_adap_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_xmt_queue_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_driver_init._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfx_driver_init._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfx_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @dfx_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dfx_cleanup() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @dfx_pci_driver) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfx_pci_register(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %val.i.i.i = alloca i8, align 1
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 5
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp eq ptr %1, @pci_bus_type
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.dev_name.exit.i_crit_edge

entry.dev_name.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %entry.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.dev_name.exit.i_crit_edge ]
  %.b.i = load i1, ptr @dfx_register.version_disp, align 4
  br i1 %.b.i, label %dev_name.exit.i.if.end3.i_crit_edge, label %if.then.i

dev_name.exit.i.if.end3.i_crit_edge:              ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dfx_register.version_disp, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @version) #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i, %dev_name.exit.i.if.end3.i_crit_edge
  %call4.i = tail call ptr @alloc_fddidev(i32 noundef 3216) #5
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end12.i

do.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i) #8
  br label %dfx_register.exit

if.end12.i:                                       ; preds = %if.end3.i
  br i1 %cmp.i, label %if.then14.i, label %if.end12.i.if.end25.i_crit_edge

if.end12.i.if.end25.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.then14.i:                                      ; preds = %if.end12.i
  %call16.i = tail call i32 @pci_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.if.end25.i_crit_edge, label %do.end21.i

if.then14.i.if.end25.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

do.end21.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i) #8
  br label %err_out.i

if.end25.i:                                       ; preds = %if.then14.i.if.end25.i_crit_edge, %if.end12.i.if.end25.i_crit_edge
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call4.i, i32 2304
  %bus_dev.i = getelementptr i8, ptr %call4.i, i32 4868
  %7 = ptrtoint ptr %bus_dev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %bus_dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4.i, ptr %driver_data.i.i, align 4
  %mmio.i = getelementptr i8, ptr %call4.i, i32 4872
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mmio.i, align 4
  %10 = load ptr, ptr %bus_dev.i, align 4
  %bus.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i.i, align 8
  %cmp.i.i = icmp eq ptr %12, @pci_bus_type
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end25.i.if.then39.i_crit_edge

if.end25.i.if.then39.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

if.then.i.i:                                      ; preds = %if.end25.i
  %resource.i.i = getelementptr i8, ptr %10, i32 936
  %13 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resource.i.i, align 8
  %end.i.i = getelementptr i8, ptr %10, i32 940
  %15 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.i.i = icmp eq i32 %16, 0
  br i1 %cmp9.i.i, label %if.then.i.i.if.then39.i_crit_edge, label %dfx_get_bars.exit.i

if.then.i.i.if.then39.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

dfx_get_bars.exit.i:                              ; preds = %if.then.i.i
  %sub.i.i = sub i32 1, %14
  %add.i.i = add i32 %sub.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp29.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp29.i, label %dfx_get_bars.exit.i.if.then39.i_crit_edge, label %dfx_get_bars.exit.i.if.end43.i_crit_edge

dfx_get_bars.exit.i.if.end43.i_crit_edge:         ; preds = %dfx_get_bars.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

dfx_get_bars.exit.i.if.then39.i_crit_edge:        ; preds = %dfx_get_bars.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

if.then39.i:                                      ; preds = %dfx_get_bars.exit.i.if.then39.i_crit_edge, %if.then.i.i.if.then39.i_crit_edge, %if.end25.i.if.then39.i_crit_edge
  %bar_start.sroa.0.0347.i = phi i32 [ %14, %dfx_get_bars.exit.i.if.then39.i_crit_edge ], [ %14, %if.then.i.i.if.then39.i_crit_edge ], [ 0, %if.end25.i.if.then39.i_crit_edge ]
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %mmio.i, align 4
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %cmp.i259.i = icmp eq ptr %19, @pci_bus_type
  br i1 %cmp.i259.i, label %if.then.i265.i, label %if.then39.i.if.then63.i_crit_edge

if.then39.i.if.then63.i_crit_edge:                ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i

if.then.i265.i:                                   ; preds = %if.then39.i
  %arrayidx.i262.i = getelementptr i8, ptr %10, i32 968
  %20 = ptrtoint ptr %arrayidx.i262.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i262.i, align 8
  %end.i263.i = getelementptr i8, ptr %10, i32 972
  %22 = ptrtoint ptr %end.i263.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i263.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9.i264.i = icmp eq i32 %23, 0
  br i1 %cmp9.i264.i, label %if.then.i265.i.if.end43.i_crit_edge, label %cond.false.i268.i

if.then.i265.i.if.end43.i_crit_edge:              ; preds = %if.then.i265.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

cond.false.i268.i:                                ; preds = %if.then.i265.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i266.i = sub i32 1, %21
  %add.i267.i = add i32 %sub.i266.i, %23
  br label %if.end43.i

if.end43.i:                                       ; preds = %cond.false.i268.i, %if.then.i265.i.if.end43.i_crit_edge, %dfx_get_bars.exit.i.if.end43.i_crit_edge
  %bar_start.sroa.0.2.ph.i = phi i32 [ %21, %if.then.i265.i.if.end43.i_crit_edge ], [ %21, %cond.false.i268.i ], [ %14, %dfx_get_bars.exit.i.if.end43.i_crit_edge ]
  %bar_len.sroa.0.2.ph.i = phi i32 [ 0, %if.then.i265.i.if.end43.i_crit_edge ], [ %add.i267.i, %cond.false.i268.i ], [ %add.i.i, %dfx_get_bars.exit.i.if.end43.i_crit_edge ]
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr.i = load i8, ptr %mmio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool45.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.then63.i_crit_edge, label %if.then46.i

if.end43.i.if.then63.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i

if.then46.i:                                      ; preds = %if.end43.i
  %driver.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 6
  %25 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call49.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %bar_start.sroa.0.2.ph.i, i32 noundef %bar_len.sroa.0.2.ph.i, ptr noundef %28, i32 noundef 0) #5
  %tobool50.not.i = icmp ne ptr %call49.i, null
  %cmp.not.i = xor i1 %cmp.i, true
  %brmerge.i = select i1 %tobool50.not.i, i1 true, i1 %cmp.not.i
  br i1 %brmerge.i, label %if.then46.i.if.end60.i_crit_edge, label %if.then55.i

if.then46.i.if.end60.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

if.then55.i:                                      ; preds = %if.then46.i
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %mmio.i, align 4
  %30 = ptrtoint ptr %bus_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus_dev.i, align 4
  %bus.i277.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %bus.i277.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i277.i, align 8
  %cmp.i278.i = icmp eq ptr %33, @pci_bus_type
  br i1 %cmp.i278.i, label %if.then.i284.i, label %if.then55.i.if.then63.i_crit_edge

if.then55.i.if.then63.i_crit_edge:                ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i

if.then.i284.i:                                   ; preds = %if.then55.i
  %arrayidx.i281.i = getelementptr i8, ptr %31, i32 968
  %34 = ptrtoint ptr %arrayidx.i281.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i281.i, align 8
  %end.i282.i = getelementptr i8, ptr %31, i32 972
  %36 = ptrtoint ptr %end.i282.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i282.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp9.i283.i = icmp eq i32 %37, 0
  br i1 %cmp9.i283.i, label %if.then.i284.i.if.end60.i_crit_edge, label %cond.false.i287.i

if.then.i284.i.if.end60.i_crit_edge:              ; preds = %if.then.i284.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

cond.false.i287.i:                                ; preds = %if.then.i284.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i285.i = sub i32 1, %35
  %add.i286.i = add i32 %sub.i285.i, %37
  br label %if.end60.i

if.end60.i:                                       ; preds = %cond.false.i287.i, %if.then.i284.i.if.end60.i_crit_edge, %if.then46.i.if.end60.i_crit_edge
  %bar_start.sroa.0.4.ph.i = phi i32 [ %35, %if.then.i284.i.if.end60.i_crit_edge ], [ %35, %cond.false.i287.i ], [ %bar_start.sroa.0.2.ph.i, %if.then46.i.if.end60.i_crit_edge ]
  %bar_len.sroa.0.4.ph.i = phi i32 [ 0, %if.then.i284.i.if.end60.i_crit_edge ], [ %add.i286.i, %cond.false.i287.i ], [ %bar_len.sroa.0.2.ph.i, %if.then46.i.if.end60.i_crit_edge ]
  %region.0.ph.i = phi ptr [ null, %if.then.i284.i.if.end60.i_crit_edge ], [ null, %cond.false.i287.i ], [ %call49.i, %if.then46.i.if.end60.i_crit_edge ]
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %.pr352.i = load i8, ptr %mmio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr352.i)
  %tobool62.not.i = icmp eq i8 %.pr352.i, 0
  br i1 %tobool62.not.i, label %if.end60.i.if.then63.i_crit_edge, label %if.end60.i.if.end69.i_crit_edge

if.end60.i.if.end69.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69.i

if.end60.i.if.then63.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i

if.then63.i:                                      ; preds = %if.end60.i.if.then63.i_crit_edge, %if.then55.i.if.then63.i_crit_edge, %if.end43.i.if.then63.i_crit_edge, %if.then39.i.if.then63.i_crit_edge
  %bar_len.sroa.0.4367.i = phi i32 [ %bar_len.sroa.0.4.ph.i, %if.end60.i.if.then63.i_crit_edge ], [ %bar_len.sroa.0.2.ph.i, %if.then55.i.if.then63.i_crit_edge ], [ %bar_len.sroa.0.2.ph.i, %if.end43.i.if.then63.i_crit_edge ], [ 0, %if.then39.i.if.then63.i_crit_edge ]
  %bar_start.sroa.0.4360.i = phi i32 [ %bar_start.sroa.0.4.ph.i, %if.end60.i.if.then63.i_crit_edge ], [ %bar_start.sroa.0.2.ph.i, %if.then55.i.if.then63.i_crit_edge ], [ %bar_start.sroa.0.2.ph.i, %if.end43.i.if.then63.i_crit_edge ], [ %bar_start.sroa.0.0347.i, %if.then39.i.if.then63.i_crit_edge ]
  %driver66.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 6
  %39 = ptrtoint ptr %driver66.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver66.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call68.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %bar_start.sroa.0.4360.i, i32 noundef %bar_len.sroa.0.4367.i, ptr noundef %42, i32 noundef 0) #5
  %43 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr = load i8, ptr %mmio.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then63.i, %if.end60.i.if.end69.i_crit_edge
  %44 = phi i8 [ %.pr, %if.then63.i ], [ %.pr352.i, %if.end60.i.if.end69.i_crit_edge ]
  %bar_len.sroa.0.4368.i = phi i32 [ %bar_len.sroa.0.4367.i, %if.then63.i ], [ %bar_len.sroa.0.4.ph.i, %if.end60.i.if.end69.i_crit_edge ]
  %bar_start.sroa.0.4361.i = phi i32 [ %bar_start.sroa.0.4360.i, %if.then63.i ], [ %bar_start.sroa.0.4.ph.i, %if.end60.i.if.end69.i_crit_edge ]
  %region.1.i = phi ptr [ %call68.i, %if.then63.i ], [ %region.0.ph.i, %if.end60.i.if.end69.i_crit_edge ]
  %tobool70.not.i = icmp eq ptr %region.1.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool73.not.i = icmp eq i8 %44, 0
  br i1 %tobool70.not.i, label %if.then71.i, label %if.end106.i

if.then71.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond.i.i = select i1 %tobool73.not.i, ptr @.str.18, ptr @.str.17
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i, ptr noundef nonnull %cond.i.i, i32 noundef %bar_len.sroa.0.4368.i, i32 noundef %bar_start.sroa.0.4361.i) #8
  br label %err_out_disable.i

if.end106.i:                                      ; preds = %if.end69.i
  br i1 %tobool73.not.i, label %if.else.i, label %if.then109.i

if.then109.i:                                     ; preds = %if.end106.i
  %call112.i = tail call ptr @ioremap(i32 noundef %bar_start.sroa.0.4361.i, i32 noundef %bar_len.sroa.0.4368.i) #5
  %base.i = getelementptr i8, ptr %call4.i, i32 4864
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call112.i, ptr %base.i, align 4
  %tobool114.not.i = icmp eq ptr %call112.i, null
  br i1 %tobool114.not.i, label %do.end118.i, label %if.then109.i.if.end125.i_crit_edge

if.then109.i.if.end125.i_crit_edge:               ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125.i

do.end118.i:                                      ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #7
  %call120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i.i) #8
  br label %err_out_csr_region.i

if.else.i:                                        ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  %base123.i = getelementptr i8, ptr %call4.i, i32 4864
  %46 = ptrtoint ptr %base123.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %bar_start.sroa.0.4361.i, ptr %base123.i, align 4
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 5
  %47 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bar_start.sroa.0.4361.i, ptr %base_addr.i, align 32
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.else.i, %if.then109.i.if.end125.i_crit_edge
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 16
  %48 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @dfx_netdev_ops, ptr %netdev_ops.i, align 8
  br i1 %cmp.i, label %if.then127.i, label %if.end125.i.if.end131.i_crit_edge

if.end125.i.if.end131.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131.i

if.then127.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_set_master(ptr noundef %pdev) #5
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then127.i, %if.end125.i.if.end131.i_crit_edge
  %49 = ptrtoint ptr %bus_dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus_dev.i, align 4
  %bus.i298.i = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %bus.i298.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i298.i, align 8
  %cmp.i299.i = icmp eq ptr %52, @pci_bus_type
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #5
  %53 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %data.i.i, align 4, !annotation !227
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i) #5
  %54 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %val.i.i.i, align 1, !annotation !227
  %dev1.i.i.i = getelementptr i8, ptr %call4.i, i32 4860
  %55 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call4.i, ptr %dev1.i.i.i, align 4
  br i1 %cmp.i299.i, label %if.then151.i.i.i, label %if.end131.i.dfx_bus_init.exit.i.i_crit_edge

if.end131.i.dfx_bus_init.exit.i.i_crit_edge:      ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_bus_init.exit.i.i

if.then151.i.i.i:                                 ; preds = %if.end131.i
  %add.ptr154.i.i.i = getelementptr i8, ptr %50, i32 -136
  %irq155.i.i.i = getelementptr i8, ptr %50, i32 932
  %56 = ptrtoint ptr %irq155.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq155.i.i.i, align 4
  %irq156.i.i.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 64
  %58 = ptrtoint ptr %irq156.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %irq156.i.i.i, align 4
  %call157.i.i.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr154.i.i.i, i32 noundef 13, ptr noundef nonnull %val.i.i.i) #5
  %59 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %val.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %60)
  %cmp159.i.i.i = icmp ult i8 %60, 32
  br i1 %cmp159.i.i.i, label %if.then161.i.i.i, label %if.then151.i.i.i.if.end163.i.i.i_crit_edge

if.then151.i.i.i.if.end163.i.i.i_crit_edge:       ; preds = %if.then151.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end163.i.i.i

if.then161.i.i.i:                                 ; preds = %if.then151.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -120, ptr %val.i.i.i, align 1
  %call162.i.i.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr154.i.i.i, i32 noundef 13, i8 noundef zeroext -120) #5
  br label %if.end163.i.i.i

if.end163.i.i.i:                                  ; preds = %if.then161.i.i.i, %if.then151.i.i.i.if.end163.i.i.i_crit_edge
  %62 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 5, ptr %val.i.i.i, align 1
  %63 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i.i.i = icmp eq i8 %64, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @arm_heavy_mb() #5
  %base.i6.i.i.i.i = getelementptr i8, ptr %call4.i, i32 4864
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end163.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %base.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i6.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %66, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 83886080) #5, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  call void @arm_heavy_mb() #5
  br label %dfx_bus_init.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.end163.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %base.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %base.i6.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %68, 64
  %and.i.i.i.i.i = and i32 %add.i.i.i.i.i, 1048575
  %add1.i.i.i.i.i = or i32 %and.i.i.i.i.i, -18874368
  %69 = inttoptr i32 %add1.i.i.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %69, i32 83886080) #5, !srcloc !229
  br label %dfx_bus_init.exit.i.i

dfx_bus_init.exit.i.i:                            ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i, %if.end131.i.dfx_bus_init.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #5
  %full_duplex_enb.i.i = getelementptr i8, ptr %call4.i, i32 4876
  %70 = ptrtoint ptr %full_duplex_enb.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %full_duplex_enb.i.i, align 4
  %req_ttrt.i.i = getelementptr i8, ptr %call4.i, i32 4880
  %71 = ptrtoint ptr %req_ttrt.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 100000, ptr %req_ttrt.i.i, align 4
  %burst_size.i.i = getelementptr i8, ptr %call4.i, i32 4884
  %72 = ptrtoint ptr %burst_size.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %burst_size.i.i, align 4
  %rcv_bufs_to_post.i.i = getelementptr i8, ptr %call4.i, i32 4888
  %73 = ptrtoint ptr %rcv_bufs_to_post.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8, ptr %rcv_bufs_to_post.i.i, align 4
  %74 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i.i = icmp eq i8 %75, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @arm_heavy_mb() #5
  %base.i6.i.i.i = getelementptr i8, ptr %call4.i, i32 4864
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %dfx_bus_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %base.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i6.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %77, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #5, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit.i.i

if.else.i.i.i:                                    ; preds = %dfx_bus_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %base.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %base.i6.i.i.i, align 4
  %add.i.i.i.i = add i32 %79, 28
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %80 = inttoptr i32 %add1.i.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %80, i32 0) #5, !srcloc !229
  br label %dfx_port_write_long.exit.i.i

dfx_port_write_long.exit.i.i:                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %call1.i.i = call fastcc i32 @dfx_hw_dma_uninit(ptr noundef %add.ptr.i.i, i32 noundef 4) #5
  %call2.i.i = call fastcc i32 @dfx_hw_port_ctrl_req(ptr noundef %add.ptr.i.i, i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.not.i.i, label %if.end.i300.i, label %dfx_port_write_long.exit.i.i.dfx_driver_init.exit.thread.sink.split.i_crit_edge

dfx_port_write_long.exit.i.i.dfx_driver_init.exit.thread.sink.split.i_crit_edge: ; preds = %dfx_port_write_long.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_driver_init.exit.thread.sink.split.i

if.end.i300.i:                                    ; preds = %dfx_port_write_long.exit.i.i
  %81 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data.i.i, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82) #5
  %factory_mac_addr.i.i = getelementptr i8, ptr %call4.i, i32 4892
  %84 = ptrtoint ptr %factory_mac_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %factory_mac_addr.i.i, align 4
  %call6.i.i = call fastcc i32 @dfx_hw_port_ctrl_req(ptr noundef %add.ptr.i.i, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.not.i.i, label %if.end15.i.i, label %if.end.i300.i.dfx_driver_init.exit.thread.sink.split.i_crit_edge

if.end.i300.i.dfx_driver_init.exit.thread.sink.split.i_crit_edge: ; preds = %if.end.i300.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_driver_init.exit.thread.sink.split.i

if.end15.i.i:                                     ; preds = %if.end.i300.i
  %85 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data.i.i, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #5
  %arrayidx17.i.i = getelementptr i8, ptr %call4.i, i32 4896
  %le32.0.extract.shift.i.i = lshr i32 %87, 16
  %le32.0.extract.trunc.i.i = trunc i32 %le32.0.extract.shift.i.i to i16
  %88 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %le32.0.extract.trunc.i.i, ptr %arrayidx17.i.i, align 4
  %addr_len.i.i.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 56
  %89 = ptrtoint ptr %addr_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %addr_len.i.i.i, align 1
  %conv.i.i.i = zext i8 %90 to i32
  call void @dev_addr_mod(ptr noundef nonnull %call4.i, i32 noundef 0, ptr noundef %factory_mac_addr.i.i, i32 noundef %conv.i.i.i) #5
  %board_name.2.i.i = select i1 %cmp.i299.i, ptr @.str.120, ptr null
  %91 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool31.not.i.i = icmp eq i8 %92, 0
  %cond.i301.i = select i1 %tobool31.not.i.i, ptr @.str.18, ptr @.str.17
  %conv33.i.i = zext i32 %bar_start.sroa.0.4361.i to i64
  %irq.i.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 64
  %93 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %irq.i.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 86
  %95 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_addr.i.i, align 64
  %call34.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %retval.0.i.i, ptr noundef %board_name.2.i.i, ptr noundef nonnull %cond.i301.i, i64 noundef %conv33.i.i, i32 noundef %94, ptr noundef %96) #8
  %97 = ptrtoint ptr %bus_dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus_dev.i, align 4
  %kmalloced_dma.i.i = getelementptr i8, ptr %call4.i, i32 2308
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %98, i32 noundef 14247, ptr noundef %kmalloced_dma.i.i, i32 noundef 2592, i32 noundef 0) #5
  %99 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i.i.i, ptr %add.ptr.i.i, align 4
  %cmp37.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp37.i.i, label %if.end15.i.i.dfx_driver_init.exit.thread.i_crit_edge, label %if.end137.i

if.end15.i.i.dfx_driver_init.exit.thread.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_driver_init.exit.thread.i

dfx_driver_init.exit.thread.sink.split.i:         ; preds = %if.end.i300.i.dfx_driver_init.exit.thread.sink.split.i_crit_edge, %dfx_port_write_long.exit.i.i.dfx_driver_init.exit.thread.sink.split.i_crit_edge
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %retval.0.i.i) #8
  br label %dfx_driver_init.exit.thread.i

dfx_driver_init.exit.thread.i:                    ; preds = %dfx_driver_init.exit.thread.sink.split.i, %if.end15.i.i.dfx_driver_init.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #5
  br label %err_out_unmap.i

if.end137.i:                                      ; preds = %if.end15.i.i
  %100 = ptrtoint ptr %kmalloced_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %kmalloced_dma.i.i, align 4
  %add.i302.i = add i32 %101, 8191
  %and.i.i = and i32 %add.i302.i, -8192
  %sub.i303.i = sub i32 %and.i.i, %101
  %add.ptr.i304.i = getelementptr i8, ptr %call.i.i.i, i32 %sub.i303.i
  %descr_block_virt.i.i = getelementptr i8, ptr %call4.i, i32 2312
  %102 = ptrtoint ptr %descr_block_virt.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr.i304.i, ptr %descr_block_virt.i.i, align 4
  %descr_block_phys.i.i = getelementptr i8, ptr %call4.i, i32 2316
  %103 = ptrtoint ptr %descr_block_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and.i.i, ptr %descr_block_phys.i.i, align 4
  %add.ptr42.i.i = getelementptr i8, ptr %add.ptr.i304.i, i32 4992
  %add43.i.i = or i32 %and.i.i, 4992
  %cmd_req_virt.i.i = getelementptr i8, ptr %call4.i, i32 2320
  %104 = ptrtoint ptr %cmd_req_virt.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr42.i.i, ptr %cmd_req_virt.i.i, align 4
  %cmd_req_phys.i.i = getelementptr i8, ptr %call4.i, i32 2324
  %105 = ptrtoint ptr %cmd_req_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add43.i.i, ptr %cmd_req_phys.i.i, align 4
  %add.ptr44.i.i = getelementptr i8, ptr %add.ptr42.i.i, i32 512
  %add45.i.i = or i32 %and.i.i, 5504
  %cmd_rsp_virt.i.i = getelementptr i8, ptr %call4.i, i32 2328
  %106 = ptrtoint ptr %cmd_rsp_virt.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %add.ptr44.i.i, ptr %cmd_rsp_virt.i.i, align 4
  %cmd_rsp_phys.i.i = getelementptr i8, ptr %call4.i, i32 2332
  %107 = ptrtoint ptr %cmd_rsp_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add45.i.i, ptr %cmd_rsp_phys.i.i, align 4
  %add.ptr46.i.i = getelementptr i8, ptr %add.ptr44.i.i, i32 512
  %add47.i.i = or i32 %and.i.i, 6016
  %rcv_block_virt.i.i = getelementptr i8, ptr %call4.i, i32 2336
  %108 = ptrtoint ptr %rcv_block_virt.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %add.ptr46.i.i, ptr %rcv_block_virt.i.i, align 4
  %rcv_block_phys.i.i = getelementptr i8, ptr %call4.i, i32 2340
  %109 = ptrtoint ptr %rcv_block_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add47.i.i, ptr %rcv_block_phys.i.i, align 4
  %cons_block_virt.i.i = getelementptr i8, ptr %call4.i, i32 2344
  %110 = ptrtoint ptr %cons_block_virt.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %add.ptr46.i.i, ptr %cons_block_virt.i.i, align 4
  %cons_block_phys.i.i = getelementptr i8, ptr %call4.i, i32 2348
  %111 = ptrtoint ptr %cons_block_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add47.i.i, ptr %cons_block_phys.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #5
  %call138.i = call i32 @register_netdev(ptr noundef nonnull %call4.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %tobool139.not.i = icmp eq i32 %call138.i, 0
  br i1 %tobool139.not.i, label %do.end144.i, label %err_out_kfree.i

do.end144.i:                                      ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #7
  %call148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i, ptr noundef nonnull %call4.i) #8
  br label %dfx_register.exit

err_out_kfree.i:                                  ; preds = %if.end137.i
  %112 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool149.not.i = icmp eq ptr %113, null
  br i1 %tobool149.not.i, label %err_out_kfree.i.err_out_unmap.i_crit_edge, label %if.then150.i

err_out_kfree.i.err_out_unmap.i_crit_edge:        ; preds = %err_out_kfree.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out_unmap.i

if.then150.i:                                     ; preds = %err_out_kfree.i
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %kmalloced_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %kmalloced_dma.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef 14247, ptr noundef nonnull %113, i32 noundef %115, i32 noundef 0) #5
  br label %err_out_unmap.i

err_out_unmap.i:                                  ; preds = %if.then150.i, %err_out_kfree.i.err_out_unmap.i_crit_edge, %dfx_driver_init.exit.thread.i
  %err.0.i = phi i32 [ %call138.i, %if.then150.i ], [ %call138.i, %err_out_kfree.i.err_out_unmap.i_crit_edge ], [ -19, %dfx_driver_init.exit.thread.i ]
  %116 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool154.not.i = icmp eq i8 %117, 0
  br i1 %tobool154.not.i, label %err_out_unmap.i.if.else177.i_crit_edge, label %if.then155.i

err_out_unmap.i.if.else177.i_crit_edge:           ; preds = %err_out_unmap.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else177.i

if.then155.i:                                     ; preds = %err_out_unmap.i
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %base.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i6.i.i.i, align 4
  call void @iounmap(ptr noundef %119) #5
  br label %err_out_csr_region.i

err_out_csr_region.i:                             ; preds = %if.then155.i, %do.end118.i
  %err.1.ph.i = phi i32 [ -12, %do.end118.i ], [ %err.0.i, %if.then155.i ]
  %120 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %.pr373.i = load i8, ptr %mmio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr373.i)
  %tobool173.not.i = icmp eq i8 %.pr373.i, 0
  br i1 %tobool173.not.i, label %err_out_csr_region.i.if.else177.i_crit_edge, label %if.then174.i

err_out_csr_region.i.if.else177.i_crit_edge:      ; preds = %err_out_csr_region.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else177.i

if.then174.i:                                     ; preds = %err_out_csr_region.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %bar_start.sroa.0.4361.i, i32 noundef %bar_len.sroa.0.4368.i) #5
  br label %err_out_disable.i

if.else177.i:                                     ; preds = %err_out_csr_region.i.if.else177.i_crit_edge, %err_out_unmap.i.if.else177.i_crit_edge
  %err.1378.i = phi i32 [ %err.1.ph.i, %err_out_csr_region.i.if.else177.i_crit_edge ], [ %err.0.i, %err_out_unmap.i.if.else177.i_crit_edge ]
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %bar_start.sroa.0.4361.i, i32 noundef %bar_len.sroa.0.4368.i) #5
  br label %err_out_disable.i

err_out_disable.i:                                ; preds = %if.else177.i, %if.then174.i, %if.then71.i
  %err.4.i = phi i32 [ %err.1.ph.i, %if.then174.i ], [ %err.1378.i, %if.else177.i ], [ -16, %if.then71.i ]
  br i1 %cmp.i, label %if.then182.i, label %err_out_disable.i.err_out.i_crit_edge

err_out_disable.i.err_out.i_crit_edge:            ; preds = %err_out_disable.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out.i

if.then182.i:                                     ; preds = %err_out_disable.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @pci_disable_device(ptr noundef %pdev) #5
  br label %err_out.i

err_out.i:                                        ; preds = %if.then182.i, %err_out_disable.i.err_out.i_crit_edge, %do.end21.i
  %err.5.i = phi i32 [ %call16.i, %do.end21.i ], [ %err.4.i, %if.then182.i ], [ %err.4.i, %err_out_disable.i.err_out.i_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call4.i) #5
  br label %dfx_register.exit

dfx_register.exit:                                ; preds = %err_out.i, %do.end144.i, %do.end9.i
  %retval.0.i = phi i32 [ %err.5.i, %err_out.i ], [ 0, %do.end144.i ], [ -12, %do.end9.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dfx_pci_unregister(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 5
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp eq ptr %3, @pci_bus_type
  tail call void @unregister_netdev(ptr noundef %1) #5
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %kmalloced_dma.i = getelementptr i8, ptr %1, i32 2308
  %6 = ptrtoint ptr %kmalloced_dma.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kmalloced_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 14247, ptr noundef nonnull %5, i32 noundef %7, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %bus_dev.i.i = getelementptr i8, ptr %1, i32 4868
  %8 = ptrtoint ptr %bus_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_dev.i.i, align 4
  %bus.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %cmp.i.i = icmp eq ptr %11, @pci_bus_type
  br i1 %cmp.i.i, label %if.then28.i.i, label %if.end.i.dfx_bus_uninit.exit.i_crit_edge

if.end.i.dfx_bus_uninit.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_bus_uninit.exit.i

if.then28.i.i:                                    ; preds = %if.end.i
  %mmio.i.i.i = getelementptr i8, ptr %1, i32 4872
  %12 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mmio.i.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i.i = icmp eq i8 %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %base.i6.i.i.i = getelementptr i8, ptr %1, i32 4864
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %base.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i6.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_bus_uninit.exit.i

if.else.i.i.i:                                    ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %base.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i6.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 64
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %18 = inttoptr i32 %add1.i.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 0) #5, !srcloc !229
  br label %dfx_bus_uninit.exit.i

dfx_bus_uninit.exit.i:                            ; preds = %if.else.i.i.i, %if.then.i.i.i, %if.end.i.dfx_bus_uninit.exit.i_crit_edge
  %19 = ptrtoint ptr %bus_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_dev.i.i, align 4
  %bus.i41.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %bus.i41.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i41.i, align 8
  %cmp.i42.i = icmp eq ptr %22, @pci_bus_type
  br i1 %cmp.i42.i, label %if.then.i.i, label %dfx_bus_uninit.exit.i.if.end16.i_crit_edge

dfx_bus_uninit.exit.i.if.end16.i_crit_edge:       ; preds = %dfx_bus_uninit.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then.i.i:                                      ; preds = %dfx_bus_uninit.exit.i
  %mmio.i.i = getelementptr i8, ptr %1, i32 4872
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mmio.i.i, align 4, !range !228
  %25 = xor i8 %24, 1
  %26 = zext i8 %25 to i32
  %resource.i.i = getelementptr i8, ptr %20, i32 936
  %arrayidx.i.i = getelementptr [17 x %struct.resource], ptr %resource.i.i, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 8
  %end.i.i = getelementptr inbounds %struct.resource, ptr %arrayidx.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp9.i.i = icmp eq i32 %30, 0
  br i1 %cmp9.i.i, label %if.then.i.i.if.end16.i_crit_edge, label %cond.false.i.i

if.then.i.i.if.end16.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = sub i32 1, %28
  %add.i.i = add i32 %sub.i.i, %30
  br label %if.end16.i

if.end16.i:                                       ; preds = %cond.false.i.i, %if.then.i.i.if.end16.i_crit_edge, %dfx_bus_uninit.exit.i.if.end16.i_crit_edge
  %bar_start.sroa.0.0.i = phi i32 [ 0, %dfx_bus_uninit.exit.i.if.end16.i_crit_edge ], [ %28, %cond.false.i.i ], [ %28, %if.then.i.i.if.end16.i_crit_edge ]
  %bar_len.sroa.0.0.i = phi i32 [ 0, %dfx_bus_uninit.exit.i.if.end16.i_crit_edge ], [ %add.i.i, %cond.false.i.i ], [ 0, %if.then.i.i.if.end16.i_crit_edge ]
  %mmio.i = getelementptr i8, ptr %1, i32 4872
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool17.not.i = icmp eq i8 %32, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end23.i_crit_edge, label %if.then18.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr i8, ptr %1, i32 4864
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  tail call void @iounmap(ptr noundef %34) #5
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end23.i_crit_edge
  %ioport_resource.sink.i = phi ptr [ @iomem_resource, %if.then18.i ], [ @ioport_resource, %if.end16.i.if.end23.i_crit_edge ]
  tail call void @__release_region(ptr noundef nonnull %ioport_resource.sink.i, i32 noundef %bar_start.sroa.0.0.i, i32 noundef %bar_len.sroa.0.0.i) #5
  br i1 %cmp.i, label %if.then25.i, label %if.end23.i.dfx_unregister.exit_crit_edge

if.end23.i.dfx_unregister.exit_crit_edge:         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_unregister.exit

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  br label %dfx_unregister.exit

dfx_unregister.exit:                              ; preds = %if.then25.i, %if.end23.i.dfx_unregister.exit_crit_edge
  tail call void @free_netdev(ptr noundef %1) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_fddidev(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfx_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @dfx_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %dev, i32 noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %factory_mac_addr = getelementptr i8, ptr %dev, i32 4892
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %5 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %factory_mac_addr, i32 noundef %conv.i) #5
  %uc_table = getelementptr i8, ptr %dev, i32 2364
  %6 = call ptr @memset(ptr %uc_table, i32 0, i32 6)
  %uc_count = getelementptr i8, ptr %dev, i32 2372
  %lock = getelementptr i8, ptr %dev, i32 4816
  %7 = call ptr @memset(ptr %uc_count, i32 0, i32 388)
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @dfx_open.__key, i16 noundef signext 3) #5
  %reset_type = getelementptr i8, ptr %dev, i32 2764
  %8 = ptrtoint ptr %reset_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %reset_type, align 4
  %call13 = tail call fastcc i32 @dfx_adap_init(ptr noundef %add.ptr.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 0
  br i1 %cmp.not, label %if.end24, label %do.end17

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %dev) #8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call23 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %dev) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %12, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end17, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -11, %do.end17 ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfx_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mmio.i = getelementptr i8, ptr %dev, i32 4872
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %base.i6.i = getelementptr i8, ptr %dev, i32 4864
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i6.i, align 4
  %add.i.i = add i32 %5, 28
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 0) #5, !srcloc !229
  br label %dfx_port_write_long.exit

dfx_port_write_long.exit:                         ; preds = %if.else.i, %if.then.i
  %call1 = tail call fastcc i32 @dfx_hw_dma_uninit(ptr noundef %add.ptr.i, i32 noundef 4)
  %rcv_xmt_reg.i = getelementptr i8, ptr %dev, i32 2360
  %xmt_prod.i = getelementptr i8, ptr %dev, i32 2362
  %7 = ptrtoint ptr %rcv_xmt_reg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rcv_xmt_reg.i, align 4
  %9 = ptrtoint ptr %xmt_prod.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %xmt_prod.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp.not33.i = icmp eq i8 %8, %10
  br i1 %cmp.not33.i, label %dfx_port_write_long.exit.dfx_xmt_flush.exit_crit_edge, label %while.body.lr.ph.i

dfx_port_write_long.exit.dfx_xmt_flush.exit_crit_edge: ; preds = %dfx_port_write_long.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_xmt_flush.exit

while.body.lr.ph.i:                               ; preds = %dfx_port_write_long.exit
  %bus_dev.i = getelementptr i8, ptr %dev, i32 4868
  %descr_block_virt.i = getelementptr i8, ptr %dev, i32 2312
  %xmt_discards.i = getelementptr i8, ptr %dev, i32 5504
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %11 = phi i8 [ %8, %while.body.lr.ph.i ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %conv.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 24, i32 %conv.i
  %12 = ptrtoint ptr %bus_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_dev.i, align 4
  %14 = ptrtoint ptr %descr_block_virt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %descr_block_virt.i, align 4
  %long_1.i = getelementptr %struct.PI_DESCR_BLOCK, ptr %15, i32 0, i32 1, i32 %conv.i, i32 1
  %16 = ptrtoint ptr %long_1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %long_1.i, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %17, i32 noundef %21, i32 noundef 1, i32 noundef 0) #5
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  tail call void @consume_skb(ptr noundef %23) #5
  %24 = ptrtoint ptr %xmt_discards.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xmt_discards.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %xmt_discards.i, align 4
  %26 = ptrtoint ptr %rcv_xmt_reg.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rcv_xmt_reg.i, align 4
  %add.i = add i8 %27, 1
  store i8 %add.i, ptr %rcv_xmt_reg.i, align 4
  %28 = ptrtoint ptr %xmt_prod.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %xmt_prod.i, align 2
  %cmp.not.i = icmp eq i8 %add.i, %29
  br i1 %cmp.not.i, label %while.body.i.dfx_xmt_flush.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.dfx_xmt_flush.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_xmt_flush.exit

dfx_xmt_flush.exit:                               ; preds = %while.body.i.dfx_xmt_flush.exit_crit_edge, %dfx_port_write_long.exit.dfx_xmt_flush.exit_crit_edge
  %.lcssa.i = phi i8 [ %8, %dfx_port_write_long.exit.dfx_xmt_flush.exit_crit_edge ], [ %add.i, %while.body.i.dfx_xmt_flush.exit_crit_edge ]
  %cons_block_virt.i = getelementptr i8, ptr %dev, i32 2344
  %30 = ptrtoint ptr %cons_block_virt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cons_block_virt.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i = and i32 %33, -16711681
  %conv17.i = zext i8 %.lcssa.i to i32
  %shl.i = shl nuw nsw i32 %conv17.i, 16
  %or.i = or i32 %and.i, %shl.i
  store volatile i32 %or.i, ptr %31, align 4
  %cmd_req_reg = getelementptr i8, ptr %dev, i32 2352
  %34 = ptrtoint ptr %cmd_req_reg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cmd_req_reg, align 4
  %cmd_rsp_reg = getelementptr i8, ptr %dev, i32 2356
  %35 = ptrtoint ptr %cmd_rsp_reg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cmd_rsp_reg, align 4
  %36 = ptrtoint ptr %rcv_xmt_reg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rcv_xmt_reg.i, align 4
  %37 = load ptr, ptr %cons_block_virt.i, align 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 40)
  %rcv_bufs_to_post.i = getelementptr i8, ptr %dev, i32 4888
  %39 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rcv_bufs_to_post.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp33.i = icmp sgt i32 %40, 0
  br i1 %cmp33.i, label %for.cond1.preheader.lr.ph.i, label %dfx_xmt_flush.exit.dfx_rcv_flush.exit_crit_edge

dfx_xmt_flush.exit.dfx_rcv_flush.exit_crit_edge:  ; preds = %dfx_xmt_flush.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_rcv_flush.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %dfx_xmt_flush.exit
  %bus_dev.i13 = getelementptr i8, ptr %dev, i32 4868
  %descr_block_virt.i14 = getelementptr i8, ptr %dev, i32 2312
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc12.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc.i20, %for.inc12.i.for.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.034.i)
  %cmp230.i = icmp ult i32 %i.034.i, 256
  br i1 %cmp230.i, label %for.cond1.preheader.i.for.body3.i_crit_edge, label %for.cond1.preheader.i.for.inc12.i_crit_edge

for.cond1.preheader.i.for.inc12.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %add32.i = phi i32 [ %add.i19, %if.end.i.for.body3.i_crit_edge ], [ %i.034.i, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %j.031.i = phi i32 [ %add11.i, %if.end.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %arrayidx.i15 = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 23, i32 %add32.i
  %41 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i15, align 4
  %tobool.not.i16 = icmp eq ptr %42, null
  br i1 %tobool.not.i16, label %for.body3.i.if.end.i_crit_edge, label %if.then.i18

for.body3.i.if.end.i_crit_edge:                   ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i18:                                      ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %bus_dev.i13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus_dev.i13, align 4
  %45 = ptrtoint ptr %descr_block_virt.i14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %descr_block_virt.i14, align 4
  %long_1.i17 = getelementptr [256 x %struct.PI_RCV_DESCR], ptr %46, i32 0, i32 %add32.i, i32 1
  %47 = ptrtoint ptr %long_1.i17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %long_1.i17, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %44, i32 noundef %48, i32 noundef 4608, i32 noundef 2, i32 noundef 0) #5
  tail call void @consume_skb(ptr noundef nonnull %42) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i18, %for.body3.i.if.end.i_crit_edge
  %49 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx.i15, align 4
  %50 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rcv_bufs_to_post.i, align 4
  %add11.i = add i32 %51, %j.031.i
  %add.i19 = add i32 %add11.i, %i.034.i
  %cmp2.i = icmp slt i32 %add.i19, 256
  br i1 %cmp2.i, label %if.end.i.for.body3.i_crit_edge, label %if.end.i.for.inc12.i_crit_edge

if.end.i.for.inc12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i

if.end.i.for.body3.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

for.inc12.i:                                      ; preds = %if.end.i.for.inc12.i_crit_edge, %for.cond1.preheader.i.for.inc12.i_crit_edge
  %inc.i20 = add nuw nsw i32 %i.034.i, 1
  %52 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rcv_bufs_to_post.i, align 4
  %cmp.i = icmp slt i32 %inc.i20, %53
  br i1 %cmp.i, label %for.inc12.i.for.cond1.preheader.i_crit_edge, label %for.inc12.i.dfx_rcv_flush.exit_crit_edge

for.inc12.i.dfx_rcv_flush.exit_crit_edge:         ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_rcv_flush.exit

for.inc12.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i

dfx_rcv_flush.exit:                               ; preds = %for.inc12.i.dfx_rcv_flush.exit_crit_edge, %dfx_xmt_flush.exit.dfx_rcv_flush.exit_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %54 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %55, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %57, ptr noundef %dev) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfx_xmt_queue_pkt(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = add i32 %3, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4479, i32 %4)
  %5 = icmp ult i32 %4, 4479
  br i1 %5, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %dev, i32 noundef %3) #8
  %xmt_length_errors = getelementptr i8, ptr %dev, i32 5508
  %6 = ptrtoint ptr %xmt_length_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xmt_length_errors, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %xmt_length_errors, align 4
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #5
  tail call void @consume_skb(ptr noundef %skb) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_available = getelementptr i8, ptr %dev, i32 2760
  %10 = ptrtoint ptr %link_available to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %if.then6, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %mmio.i.i = getelementptr i8, ptr %dev, i32 4872
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mmio.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %base.i.i.i = getelementptr i8, ptr %dev, i32 4864
  %14 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !232
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  br label %dfx_hw_adap_state_rd.exit

if.else.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %base.i6.i.i = getelementptr i8, ptr %dev, i32 4864
  %18 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base.i6.i.i, align 4
  %add.i.i.i = add i32 %19, 20
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %20 = inttoptr i32 %add1.i.i.i to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #5, !srcloc !232
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %dfx_hw_adap_state_rd.exit

dfx_hw_adap_state_rd.exit:                        ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i.i = phi i32 [ %17, %if.then.i.i ], [ %22, %if.else.i.i ]
  %23 = and i32 %storemerge.i.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %23)
  %cmp8 = icmp eq i32 %23, 1024
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %dfx_hw_adap_state_rd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %link_available to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %link_available, align 4
  br label %if.end13

if.else:                                          ; preds = %dfx_hw_adap_state_rd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %xmt_discards = getelementptr i8, ptr %dev, i32 5504
  %25 = ptrtoint ptr %xmt_discards to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xmt_discards, align 4
  %inc11 = add i32 %26, 1
  store i32 %inc11, ptr %xmt_discards, align 4
  tail call void @consume_skb(ptr noundef %skb) #5
  %27 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %28) #5
  br label %cleanup

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %call14 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #5
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 32, ptr %30, align 1
  %32 = load ptr, ptr %data, align 4
  %arrayidx16 = getelementptr i8, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 56, ptr %arrayidx16, align 1
  %34 = load ptr, ptr %data, align 4
  %arrayidx18 = getelementptr i8, ptr %34, i32 2
  %35 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx18, align 1
  %bus_dev = getelementptr i8, ptr %dev, i32 4868
  %36 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus_dev, align 4
  %38 = load ptr, ptr %data, align 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %38) #5
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end13
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !235

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %37) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i103 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i103, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %37, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %44, %if.end.i.i ], [ %42, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %45 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus_dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %46, i32 noundef -1) #5
  br label %if.then24

dma_map_single_attrs.exit:                        ; preds = %if.end13
  tail call void @debug_dma_map_single(ptr noundef %37, ptr noundef %38, i32 noundef %40) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  %48 = ptrtoint ptr %38 to i32
  %sub.i = add i32 %48, 1073741824
  %shr.i104 = lshr i32 %sub.i, 12
  %add.ptr.i105 = getelementptr %struct.page, ptr %47, i32 %shr.i104
  %and.i106 = and i32 %48, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %37, ptr noundef %add.ptr.i105, i32 noundef %and.i106, i32 noundef %40, i32 noundef 1, i32 noundef 0) #5
  %49 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus_dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %50, i32 noundef %call41.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then24_crit_edge, label %do.body28

dma_map_single_attrs.exit.if.then24_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then24:                                        ; preds = %dma_map_single_attrs.exit.if.then24_crit_edge, %dma_map_single_attrs.exit.thread
  %call25 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #5
  br label %cleanup

do.body28:                                        ; preds = %dma_map_single_attrs.exit
  %lock = getelementptr i8, ptr %dev, i32 4816
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %rcv_xmt_reg = getelementptr i8, ptr %dev, i32 2360
  %xmt_prod = getelementptr i8, ptr %dev, i32 2362
  %51 = ptrtoint ptr %xmt_prod to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %xmt_prod, align 2
  %descr_block_virt = getelementptr i8, ptr %dev, i32 2312
  %53 = ptrtoint ptr %descr_block_virt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %descr_block_virt, align 4
  %idxprom = zext i8 %52 to i32
  %arrayidx37 = getelementptr %struct.PI_DESCR_BLOCK, ptr %54, i32 0, i32 1, i32 %idxprom
  %inc38 = add i8 %52, 1
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len, align 4
  %shl = shl i32 %56, 16
  %or = or i32 %shl, -1073741824
  %57 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or, ptr %arrayidx37, align 4
  %long_1 = getelementptr %struct.PI_DESCR_BLOCK, ptr %54, i32 0, i32 1, i32 %idxprom, i32 1
  %58 = ptrtoint ptr %long_1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call41.i, ptr %long_1, align 4
  %59 = ptrtoint ptr %rcv_xmt_reg to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %rcv_xmt_reg, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %inc38, i8 %60)
  %cmp45 = icmp eq i8 %inc38, %60
  br i1 %cmp45, label %if.then47, label %if.end50

if.then47:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call32) #5
  br label %cleanup

if.end50:                                         ; preds = %do.body28
  %arrayidx40 = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 24, i32 %idxprom
  %61 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %skb, ptr %arrayidx40, align 4
  %62 = ptrtoint ptr %xmt_prod to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %inc38, ptr %xmt_prod, align 2
  %63 = ptrtoint ptr %rcv_xmt_reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rcv_xmt_reg, align 4
  %mmio.i = getelementptr i8, ptr %dev, i32 4872
  %65 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i = icmp eq i8 %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %67 = tail call i32 @llvm.bswap.i32(i32 %64) #5
  %base.i6.i = getelementptr i8, ptr %dev, i32 4864
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i107

if.then.i107:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %67) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit

if.else.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base.i6.i, align 4
  %add.i.i = add i32 %71, 36
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %72 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %72, i32 %67) #5, !srcloc !229
  br label %dfx_port_write_long.exit

dfx_port_write_long.exit:                         ; preds = %if.else.i, %if.then.i107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call32) #5
  %73 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %74) #5
  br label %cleanup

cleanup:                                          ; preds = %dfx_port_write_long.exit, %if.then47, %if.then24, %if.else, %do.end
  %retval.0 = phi i32 [ 16, %if.then24 ], [ 16, %if.then47 ], [ 0, %dfx_port_write_long.exit ], [ 0, %if.else ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dfx_ctl_set_multicast_list(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ind_group_prom1 = getelementptr i8, ptr %dev, i32 2752
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %ind_group_prom1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ind_group_prom1, align 4
  br label %if.end23

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %ind_group_prom1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ind_group_prom1, align 4
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  %uc_count = getelementptr i8, ptr %dev, i32 2372
  %6 = ptrtoint ptr %uc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uc_count, align 4
  %sub = sub i32 62, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp = icmp ugt i32 %5, %sub
  %spec.select = zext i1 %cmp to i32
  %spec.select53 = select i1 %cmp, i32 0, i32 %5
  %8 = getelementptr i8, ptr %dev, i32 2756
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %10 = getelementptr i8, ptr %dev, i32 2748
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select53, ptr %10, align 4
  %12 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.048 = load ptr, ptr %mc, align 4
  %cmp12.not49 = icmp eq ptr %ha.048, %mc
  br i1 %cmp12.not49, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %ha.051 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.048, %if.else.for.body_crit_edge ]
  %i.050 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %inc = add i32 %i.050, 1
  %mul = mul i32 %i.050, 6
  %arrayidx = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 17, i32 %mul
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.051, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %arrayidx, ptr %addr, i32 6)
  %14 = ptrtoint ptr %ha.051 to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0 = load ptr, ptr %ha.051, align 4
  %cmp12.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp12.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  %cmd_req_virt.i = getelementptr i8, ptr %dev, i32 2320
  %15 = ptrtoint ptr %cmd_req_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_req_virt.i, align 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 512)
  %18 = load ptr, ptr %cmd_req_virt.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %18, align 4
  %20 = load ptr, ptr %cmd_req_virt.i, align 4
  %entry3.i = getelementptr inbounds %struct.PI_CMD_ADDR_FILTER_SET_REQ, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %uc_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %uc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp41.i = icmp sgt i32 %22, 0
  br i1 %cmp41.i, label %for.end.for.body.i_crit_edge, label %for.end.for.cond6.preheader.i_crit_edge

for.end.for.cond6.preheader.i_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6.preheader.i

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.cond6.preheader.i:                            ; preds = %for.inc.i.for.cond6.preheader.i_crit_edge, %for.end.for.cond6.preheader.i_crit_edge
  %p_addr.0.lcssa.i = phi ptr [ %entry3.i, %for.end.for.cond6.preheader.i_crit_edge ], [ %p_addr.1.i, %for.inc.i.for.cond6.preheader.i_crit_edge ]
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp745.i = icmp sgt i32 %24, 0
  br i1 %cmp745.i, label %for.cond6.preheader.i.for.body8.i_crit_edge, label %for.cond6.preheader.i.dfx_ctl_update_cam.exit_crit_edge

for.cond6.preheader.i.dfx_ctl_update_cam.exit_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_ctl_update_cam.exit

for.cond6.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body8.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %p_addr.044.i = phi ptr [ %p_addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %entry3.i, %for.end.for.body.i_crit_edge ]
  %i.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.042.i)
  %cmp4.i = icmp ult i32 %i.042.i, 62
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = mul nuw nsw i32 %i.042.i, 6
  %arrayidx5.i = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 15, i32 %mul.i
  %25 = call ptr @memcpy(ptr %p_addr.044.i, ptr %arrayidx5.i, i32 6)
  %incdec.ptr.i = getelementptr %struct.PI_LAN_ADDR, ptr %p_addr.044.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %p_addr.1.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %p_addr.044.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %26 = ptrtoint ptr %uc_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %uc_count, align 4
  %cmp.i = icmp slt i32 %inc.i, %27
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond6.preheader.i_crit_edge

for.inc.i.for.cond6.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body8.i:                                      ; preds = %for.inc16.i.for.body8.i_crit_edge, %for.cond6.preheader.i.for.body8.i_crit_edge
  %p_addr.248.i = phi ptr [ %p_addr.3.i, %for.inc16.i.for.body8.i_crit_edge ], [ %p_addr.0.lcssa.i, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %i.146.i = phi i32 [ %inc17.i, %for.inc16.i.for.body8.i_crit_edge ], [ 0, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %28 = ptrtoint ptr %uc_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %uc_count, align 4
  %add.i = add i32 %29, %i.146.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %add.i)
  %cmp10.i = icmp ult i32 %add.i, 62
  br i1 %cmp10.i, label %if.then11.i, label %for.body8.i.for.inc16.i_crit_edge

for.body8.i.for.inc16.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc16.i

if.then11.i:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul12.i = mul i32 %i.146.i, 6
  %arrayidx13.i = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 17, i32 %mul12.i
  %30 = call ptr @memcpy(ptr %p_addr.248.i, ptr %arrayidx13.i, i32 6)
  %incdec.ptr14.i = getelementptr %struct.PI_LAN_ADDR, ptr %p_addr.248.i, i32 1
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %if.then11.i, %for.body8.i.for.inc16.i_crit_edge
  %p_addr.3.i = phi ptr [ %incdec.ptr14.i, %if.then11.i ], [ %p_addr.248.i, %for.body8.i.for.inc16.i_crit_edge ]
  %inc17.i = add nuw nsw i32 %i.146.i, 1
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %10, align 4
  %cmp7.i = icmp slt i32 %inc17.i, %32
  br i1 %cmp7.i, label %for.inc16.i.for.body8.i_crit_edge, label %for.inc16.i.dfx_ctl_update_cam.exit_crit_edge

for.inc16.i.dfx_ctl_update_cam.exit_crit_edge:    ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_ctl_update_cam.exit

for.inc16.i.for.body8.i_crit_edge:                ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i

dfx_ctl_update_cam.exit:                          ; preds = %for.inc16.i.dfx_ctl_update_cam.exit_crit_edge, %for.cond6.preheader.i.dfx_ctl_update_cam.exit_crit_edge
  %call.i = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %add.ptr.i) #5
  br label %if.end23

if.end23:                                         ; preds = %dfx_ctl_update_cam.exit, %if.then
  %cmd_req_virt.i45 = getelementptr i8, ptr %dev, i32 2320
  %33 = ptrtoint ptr %cmd_req_virt.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd_req_virt.i45, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %34, align 4
  %36 = load ptr, ptr %cmd_req_virt.i45, align 4
  %item.i = getelementptr inbounds %struct.PI_CMD_FILTERS_SET_REQ, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %item.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 9, ptr %item.i, align 4
  %38 = load ptr, ptr %cmd_req_virt.i45, align 4
  %value.i = getelementptr inbounds %struct.PI_CMD_FILTERS_SET_REQ, ptr %38, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %value.i, align 4
  %40 = load ptr, ptr %cmd_req_virt.i45, align 4
  %arrayidx7.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %40, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 7, ptr %arrayidx7.i, align 4
  %ind_group_prom.i = getelementptr i8, ptr %dev, i32 2752
  %42 = ptrtoint ptr %ind_group_prom.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ind_group_prom.i, align 4
  %44 = load ptr, ptr %cmd_req_virt.i45, align 4
  %value13.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %44, i32 0, i32 1, i32 1, i32 1
  %45 = ptrtoint ptr %value13.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %value13.i, align 4
  %46 = load ptr, ptr %cmd_req_virt.i45, align 4
  %arrayidx16.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %46, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8, ptr %arrayidx16.i, align 4
  %group_prom.i = getelementptr i8, ptr %dev, i32 2756
  %48 = ptrtoint ptr %group_prom.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %group_prom.i, align 4
  %50 = load ptr, ptr %cmd_req_virt.i45, align 4
  %value22.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %50, i32 0, i32 1, i32 2, i32 1
  %51 = ptrtoint ptr %value22.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %value22.i, align 4
  %52 = load ptr, ptr %cmd_req_virt.i45, align 4
  %arrayidx25.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %52, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx25.i, align 4
  %call.i46 = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %add.ptr.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfx_ctl_set_mac_address(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %1 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #5
  %uc_table = getelementptr i8, ptr %dev, i32 2364
  %2 = call ptr @memcpy(ptr %uc_table, ptr %sa_data, i32 6)
  %uc_count = getelementptr i8, ptr %dev, i32 2372
  %3 = ptrtoint ptr %uc_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %uc_count, align 4
  %mc_count = getelementptr i8, ptr %dev, i32 2748
  %4 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mc_count, align 4
  %6 = add i32 %5, -62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %6)
  %cmp = icmp ult i32 %6, -63
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %group_prom = getelementptr i8, ptr %dev, i32 2756
  %7 = ptrtoint ptr %group_prom to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %group_prom, align 4
  %8 = ptrtoint ptr %mc_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mc_count, align 4
  %cmd_req_virt.i = getelementptr i8, ptr %dev, i32 2320
  %9 = ptrtoint ptr %cmd_req_virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_req_virt.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %10, align 4
  %12 = load ptr, ptr %cmd_req_virt.i, align 4
  %item.i = getelementptr inbounds %struct.PI_CMD_FILTERS_SET_REQ, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %item.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9, ptr %item.i, align 4
  %14 = load ptr, ptr %cmd_req_virt.i, align 4
  %value.i = getelementptr inbounds %struct.PI_CMD_FILTERS_SET_REQ, ptr %14, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %value.i, align 4
  %16 = load ptr, ptr %cmd_req_virt.i, align 4
  %arrayidx7.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %arrayidx7.i, align 4
  %ind_group_prom.i = getelementptr i8, ptr %dev, i32 2752
  %18 = ptrtoint ptr %ind_group_prom.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ind_group_prom.i, align 4
  %20 = load ptr, ptr %cmd_req_virt.i, align 4
  %value13.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %20, i32 0, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %value13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %value13.i, align 4
  %22 = load ptr, ptr %cmd_req_virt.i, align 4
  %arrayidx16.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %22, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %arrayidx16.i, align 4
  %24 = load i32, ptr %group_prom, align 4
  %25 = load ptr, ptr %cmd_req_virt.i, align 4
  %value22.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %25, i32 0, i32 1, i32 2, i32 1
  %26 = ptrtoint ptr %value22.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %value22.i, align 4
  %27 = load ptr, ptr %cmd_req_virt.i, align 4
  %arrayidx25.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %27, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx25.i, align 4
  %call.i = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %add.ptr.i) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %cmd_req_virt.i23 = getelementptr i8, ptr %dev, i32 2320
  %29 = ptrtoint ptr %cmd_req_virt.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd_req_virt.i23, align 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 512)
  %32 = load ptr, ptr %cmd_req_virt.i23, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 7, ptr %32, align 4
  %34 = load ptr, ptr %cmd_req_virt.i23, align 4
  %entry3.i = getelementptr inbounds %struct.PI_CMD_ADDR_FILTER_SET_REQ, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %uc_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %uc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp41.i = icmp sgt i32 %36, 0
  br i1 %cmp41.i, label %if.end8.for.body.i_crit_edge, label %if.end8.for.cond6.preheader.i_crit_edge

if.end8.for.cond6.preheader.i_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6.preheader.i

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

for.cond6.preheader.i:                            ; preds = %for.inc.i.for.cond6.preheader.i_crit_edge, %if.end8.for.cond6.preheader.i_crit_edge
  %p_addr.0.lcssa.i = phi ptr [ %entry3.i, %if.end8.for.cond6.preheader.i_crit_edge ], [ %p_addr.1.i, %for.inc.i.for.cond6.preheader.i_crit_edge ]
  %37 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp745.i = icmp sgt i32 %38, 0
  br i1 %cmp745.i, label %for.cond6.preheader.i.for.body8.i_crit_edge, label %for.cond6.preheader.i.dfx_ctl_update_cam.exit_crit_edge

for.cond6.preheader.i.dfx_ctl_update_cam.exit_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_ctl_update_cam.exit

for.cond6.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body8.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %p_addr.044.i = phi ptr [ %p_addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %entry3.i, %if.end8.for.body.i_crit_edge ]
  %i.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.042.i)
  %cmp4.i = icmp ult i32 %i.042.i, 62
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = mul nuw nsw i32 %i.042.i, 6
  %arrayidx5.i = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 15, i32 %mul.i
  %39 = call ptr @memcpy(ptr %p_addr.044.i, ptr %arrayidx5.i, i32 6)
  %incdec.ptr.i = getelementptr %struct.PI_LAN_ADDR, ptr %p_addr.044.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %p_addr.1.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %p_addr.044.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %40 = ptrtoint ptr %uc_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uc_count, align 4
  %cmp.i = icmp slt i32 %inc.i, %41
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond6.preheader.i_crit_edge

for.inc.i.for.cond6.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body8.i:                                      ; preds = %for.inc16.i.for.body8.i_crit_edge, %for.cond6.preheader.i.for.body8.i_crit_edge
  %p_addr.248.i = phi ptr [ %p_addr.3.i, %for.inc16.i.for.body8.i_crit_edge ], [ %p_addr.0.lcssa.i, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %i.146.i = phi i32 [ %inc17.i, %for.inc16.i.for.body8.i_crit_edge ], [ 0, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %42 = ptrtoint ptr %uc_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %uc_count, align 4
  %add.i = add i32 %43, %i.146.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %add.i)
  %cmp10.i = icmp ult i32 %add.i, 62
  br i1 %cmp10.i, label %if.then11.i, label %for.body8.i.for.inc16.i_crit_edge

for.body8.i.for.inc16.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc16.i

if.then11.i:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul12.i = mul i32 %i.146.i, 6
  %arrayidx13.i = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 17, i32 %mul12.i
  %44 = call ptr @memcpy(ptr %p_addr.248.i, ptr %arrayidx13.i, i32 6)
  %incdec.ptr14.i = getelementptr %struct.PI_LAN_ADDR, ptr %p_addr.248.i, i32 1
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %if.then11.i, %for.body8.i.for.inc16.i_crit_edge
  %p_addr.3.i = phi ptr [ %incdec.ptr14.i, %if.then11.i ], [ %p_addr.248.i, %for.body8.i.for.inc16.i_crit_edge ]
  %inc17.i = add nuw nsw i32 %i.146.i, 1
  %45 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mc_count, align 4
  %cmp7.i = icmp slt i32 %inc17.i, %46
  br i1 %cmp7.i, label %for.inc16.i.for.body8.i_crit_edge, label %for.inc16.i.dfx_ctl_update_cam.exit_crit_edge

for.inc16.i.dfx_ctl_update_cam.exit_crit_edge:    ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_ctl_update_cam.exit

for.inc16.i.for.body8.i_crit_edge:                ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i

dfx_ctl_update_cam.exit:                          ; preds = %for.inc16.i.dfx_ctl_update_cam.exit_crit_edge, %for.cond6.preheader.i.dfx_ctl_update_cam.exit_crit_edge
  %call.i24 = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %add.ptr.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dfx_ctl_get_stats(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rcv_total_frames = getelementptr i8, ptr %dev, i32 5492
  %0 = ptrtoint ptr %rcv_total_frames to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rcv_total_frames, align 4
  %stats = getelementptr i8, ptr %dev, i32 4900
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %stats, align 4
  %xmt_total_frames = getelementptr i8, ptr %dev, i32 5512
  %3 = ptrtoint ptr %xmt_total_frames to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xmt_total_frames, align 4
  %tx_packets = getelementptr i8, ptr %dev, i32 4904
  %5 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_packets, align 4
  %rcv_total_bytes = getelementptr i8, ptr %dev, i32 5500
  %6 = ptrtoint ptr %rcv_total_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rcv_total_bytes, align 4
  %rx_bytes = getelementptr i8, ptr %dev, i32 4908
  %8 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_bytes, align 4
  %xmt_total_bytes = getelementptr i8, ptr %dev, i32 5516
  %9 = ptrtoint ptr %xmt_total_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xmt_total_bytes, align 4
  %tx_bytes = getelementptr i8, ptr %dev, i32 4912
  %11 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_bytes, align 4
  %rcv_crc_errors = getelementptr i8, ptr %dev, i32 5480
  %12 = ptrtoint ptr %rcv_crc_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rcv_crc_errors, align 4
  %rcv_frame_status_errors = getelementptr i8, ptr %dev, i32 5484
  %14 = ptrtoint ptr %rcv_frame_status_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rcv_frame_status_errors, align 4
  %add = add i32 %15, %13
  %rcv_length_errors = getelementptr i8, ptr %dev, i32 5488
  %16 = ptrtoint ptr %rcv_length_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rcv_length_errors, align 4
  %add7 = add i32 %add, %17
  %rx_errors = getelementptr i8, ptr %dev, i32 4916
  %18 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add7, ptr %rx_errors, align 4
  %xmt_length_errors = getelementptr i8, ptr %dev, i32 5508
  %19 = ptrtoint ptr %xmt_length_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xmt_length_errors, align 4
  %tx_errors = getelementptr i8, ptr %dev, i32 4920
  %21 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tx_errors, align 4
  %rcv_discards = getelementptr i8, ptr %dev, i32 5476
  %22 = ptrtoint ptr %rcv_discards to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rcv_discards, align 4
  %rx_dropped = getelementptr i8, ptr %dev, i32 4924
  %24 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rx_dropped, align 4
  %xmt_discards = getelementptr i8, ptr %dev, i32 5504
  %25 = ptrtoint ptr %xmt_discards to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xmt_discards, align 4
  %tx_dropped = getelementptr i8, ptr %dev, i32 4928
  %27 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tx_dropped, align 4
  %rcv_multicast_frames = getelementptr i8, ptr %dev, i32 5496
  %28 = ptrtoint ptr %rcv_multicast_frames to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rcv_multicast_frames, align 4
  %multicast = getelementptr i8, ptr %dev, i32 4932
  %30 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %multicast, align 4
  %collisions = getelementptr i8, ptr %dev, i32 4936
  %31 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %collisions, align 4
  %cmd_req_virt = getelementptr i8, ptr %dev, i32 2320
  %32 = ptrtoint ptr %cmd_req_virt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmd_req_virt, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %33, align 4
  %call20 = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp.not = icmp eq i32 %call20, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %smt_station_id = getelementptr i8, ptr %dev, i32 4992
  %cmd_rsp_virt = getelementptr i8, ptr %dev, i32 2328
  %35 = ptrtoint ptr %cmd_rsp_virt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd_rsp_virt, align 4
  %smt_station_id23 = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %smt_station_id23 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %smt_station_id23, align 4
  %39 = ptrtoint ptr %smt_station_id to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %smt_station_id, align 4
  %smt_op_version_id = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 2
  %40 = ptrtoint ptr %smt_op_version_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %smt_op_version_id, align 4
  %smt_op_version_id26 = getelementptr i8, ptr %dev, i32 5000
  %42 = ptrtoint ptr %smt_op_version_id26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %smt_op_version_id26, align 4
  %smt_hi_version_id = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 3
  %43 = ptrtoint ptr %smt_hi_version_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %smt_hi_version_id, align 4
  %smt_hi_version_id29 = getelementptr i8, ptr %dev, i32 5004
  %45 = ptrtoint ptr %smt_hi_version_id29 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %smt_hi_version_id29, align 4
  %smt_lo_version_id = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 4
  %46 = ptrtoint ptr %smt_lo_version_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %smt_lo_version_id, align 4
  %smt_lo_version_id32 = getelementptr i8, ptr %dev, i32 5008
  %48 = ptrtoint ptr %smt_lo_version_id32 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %smt_lo_version_id32, align 4
  %smt_user_data = getelementptr i8, ptr %dev, i32 5012
  %smt_user_data36 = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 5
  %49 = call ptr @memcpy(ptr %smt_user_data, ptr %smt_user_data36, i32 32)
  %smt_mib_version_id = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 6
  %50 = ptrtoint ptr %smt_mib_version_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %smt_mib_version_id, align 4
  %smt_mib_version_id39 = getelementptr i8, ptr %dev, i32 5044
  %52 = ptrtoint ptr %smt_mib_version_id39 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %smt_mib_version_id39, align 4
  %smt_mac_ct = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 7
  %53 = ptrtoint ptr %smt_mac_ct to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %smt_mac_ct, align 4
  %smt_mac_cts = getelementptr i8, ptr %dev, i32 5048
  %55 = ptrtoint ptr %smt_mac_cts to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %smt_mac_cts, align 4
  %smt_non_master_ct = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 8
  %56 = ptrtoint ptr %smt_non_master_ct to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %smt_non_master_ct, align 4
  %smt_non_master_cts = getelementptr i8, ptr %dev, i32 5052
  %58 = ptrtoint ptr %smt_non_master_cts to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %smt_non_master_cts, align 4
  %smt_master_ct = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 9
  %59 = ptrtoint ptr %smt_master_ct to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %smt_master_ct, align 4
  %smt_master_cts = getelementptr i8, ptr %dev, i32 5056
  %61 = ptrtoint ptr %smt_master_cts to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %smt_master_cts, align 4
  %smt_available_paths = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 10
  %62 = ptrtoint ptr %smt_available_paths to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %smt_available_paths, align 4
  %smt_available_paths48 = getelementptr i8, ptr %dev, i32 5060
  %64 = ptrtoint ptr %smt_available_paths48 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %smt_available_paths48, align 4
  %smt_config_capabilities = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 11
  %65 = ptrtoint ptr %smt_config_capabilities to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %smt_config_capabilities, align 4
  %smt_config_capabilities51 = getelementptr i8, ptr %dev, i32 5064
  %67 = ptrtoint ptr %smt_config_capabilities51 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %smt_config_capabilities51, align 4
  %smt_config_policy = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 12
  %68 = ptrtoint ptr %smt_config_policy to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %smt_config_policy, align 4
  %smt_config_policy54 = getelementptr i8, ptr %dev, i32 5068
  %70 = ptrtoint ptr %smt_config_policy54 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %smt_config_policy54, align 4
  %smt_connection_policy = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 13
  %71 = ptrtoint ptr %smt_connection_policy to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %smt_connection_policy, align 4
  %smt_connection_policy57 = getelementptr i8, ptr %dev, i32 5072
  %73 = ptrtoint ptr %smt_connection_policy57 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %smt_connection_policy57, align 4
  %smt_t_notify = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 14
  %74 = ptrtoint ptr %smt_t_notify to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %smt_t_notify, align 4
  %smt_t_notify60 = getelementptr i8, ptr %dev, i32 5076
  %76 = ptrtoint ptr %smt_t_notify60 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %smt_t_notify60, align 4
  %smt_stat_rpt_policy = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 15
  %77 = ptrtoint ptr %smt_stat_rpt_policy to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %smt_stat_rpt_policy, align 4
  %smt_stat_rpt_policy63 = getelementptr i8, ptr %dev, i32 5080
  %79 = ptrtoint ptr %smt_stat_rpt_policy63 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %smt_stat_rpt_policy63, align 4
  %smt_trace_max_expiration = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 16
  %80 = ptrtoint ptr %smt_trace_max_expiration to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %smt_trace_max_expiration, align 4
  %smt_trace_max_expiration66 = getelementptr i8, ptr %dev, i32 5084
  %82 = ptrtoint ptr %smt_trace_max_expiration66 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %smt_trace_max_expiration66, align 4
  %smt_bypass_present = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 17
  %83 = ptrtoint ptr %smt_bypass_present to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %smt_bypass_present, align 4
  %smt_bypass_present69 = getelementptr i8, ptr %dev, i32 5088
  %85 = ptrtoint ptr %smt_bypass_present69 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %smt_bypass_present69, align 4
  %smt_ecm_state = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 18
  %86 = ptrtoint ptr %smt_ecm_state to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %smt_ecm_state, align 4
  %smt_ecm_state72 = getelementptr i8, ptr %dev, i32 5092
  %88 = ptrtoint ptr %smt_ecm_state72 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %smt_ecm_state72, align 4
  %smt_cf_state = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 19
  %89 = ptrtoint ptr %smt_cf_state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %smt_cf_state, align 4
  %smt_cf_state75 = getelementptr i8, ptr %dev, i32 5096
  %91 = ptrtoint ptr %smt_cf_state75 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %smt_cf_state75, align 4
  %smt_remote_disconnect_flag = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 20
  %92 = ptrtoint ptr %smt_remote_disconnect_flag to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %smt_remote_disconnect_flag, align 4
  %smt_remote_disconnect_flag78 = getelementptr i8, ptr %dev, i32 5100
  %94 = ptrtoint ptr %smt_remote_disconnect_flag78 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %smt_remote_disconnect_flag78, align 4
  %smt_station_status = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 21
  %95 = ptrtoint ptr %smt_station_status to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %smt_station_status, align 4
  %smt_station_status81 = getelementptr i8, ptr %dev, i32 5104
  %97 = ptrtoint ptr %smt_station_status81 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %smt_station_status81, align 4
  %smt_peer_wrap_flag = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 22
  %98 = ptrtoint ptr %smt_peer_wrap_flag to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %smt_peer_wrap_flag, align 4
  %smt_peer_wrap_flag84 = getelementptr i8, ptr %dev, i32 5108
  %100 = ptrtoint ptr %smt_peer_wrap_flag84 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %smt_peer_wrap_flag84, align 4
  %ls = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 23, i32 1
  %101 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ls, align 4
  %smt_time_stamp = getelementptr i8, ptr %dev, i32 5112
  %103 = ptrtoint ptr %smt_time_stamp to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %smt_time_stamp, align 4
  %ls88 = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 24, i32 1
  %104 = ptrtoint ptr %ls88 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ls88, align 4
  %smt_transition_time_stamp90 = getelementptr i8, ptr %dev, i32 5116
  %106 = ptrtoint ptr %smt_transition_time_stamp90 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %smt_transition_time_stamp90, align 4
  %mac_frame_status_functions = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 25
  %107 = ptrtoint ptr %mac_frame_status_functions to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mac_frame_status_functions, align 4
  %mac_frame_status_functions93 = getelementptr i8, ptr %dev, i32 5120
  %109 = ptrtoint ptr %mac_frame_status_functions93 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %mac_frame_status_functions93, align 4
  %mac_t_max_capability = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 26
  %110 = ptrtoint ptr %mac_t_max_capability to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mac_t_max_capability, align 4
  %mac_t_max_capability96 = getelementptr i8, ptr %dev, i32 5124
  %112 = ptrtoint ptr %mac_t_max_capability96 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %mac_t_max_capability96, align 4
  %mac_tvx_capability = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 27
  %113 = ptrtoint ptr %mac_tvx_capability to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mac_tvx_capability, align 4
  %mac_tvx_capability99 = getelementptr i8, ptr %dev, i32 5128
  %115 = ptrtoint ptr %mac_tvx_capability99 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %mac_tvx_capability99, align 4
  %mac_available_paths = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 28
  %116 = ptrtoint ptr %mac_available_paths to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mac_available_paths, align 4
  %mac_available_paths102 = getelementptr i8, ptr %dev, i32 5132
  %118 = ptrtoint ptr %mac_available_paths102 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %mac_available_paths102, align 4
  %mac_current_path = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 29
  %119 = ptrtoint ptr %mac_current_path to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mac_current_path, align 4
  %mac_current_path105 = getelementptr i8, ptr %dev, i32 5136
  %121 = ptrtoint ptr %mac_current_path105 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %mac_current_path105, align 4
  %mac_upstream_nbr = getelementptr i8, ptr %dev, i32 5140
  %mac_upstream_nbr109 = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 30
  %122 = call ptr @memcpy(ptr %mac_upstream_nbr, ptr %mac_upstream_nbr109, i32 6)
  %mac_downstream_nbr = getelementptr i8, ptr %dev, i32 5146
  %mac_downstream_nbr113 = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 31
  %123 = call ptr @memcpy(ptr %mac_downstream_nbr, ptr %mac_downstream_nbr113, i32 6)
  %mac_old_upstream_nbr = getelementptr i8, ptr %dev, i32 5152
  %mac_old_upstream_nbr117 = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 32
  %124 = call ptr @memcpy(ptr %mac_old_upstream_nbr, ptr %mac_old_upstream_nbr117, i32 6)
  %mac_old_downstream_nbr = getelementptr i8, ptr %dev, i32 5158
  %mac_old_downstream_nbr121 = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 33
  %125 = call ptr @memcpy(ptr %mac_old_downstream_nbr, ptr %mac_old_downstream_nbr121, i32 6)
  %mac_dup_address_test = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 34
  %126 = ptrtoint ptr %mac_dup_address_test to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mac_dup_address_test, align 4
  %mac_dup_address_test124 = getelementptr i8, ptr %dev, i32 5164
  %128 = ptrtoint ptr %mac_dup_address_test124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %mac_dup_address_test124, align 4
  %mac_requested_paths = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 35
  %129 = ptrtoint ptr %mac_requested_paths to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mac_requested_paths, align 4
  %mac_requested_paths127 = getelementptr i8, ptr %dev, i32 5168
  %131 = ptrtoint ptr %mac_requested_paths127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %mac_requested_paths127, align 4
  %mac_downstream_port_type = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 36
  %132 = ptrtoint ptr %mac_downstream_port_type to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mac_downstream_port_type, align 4
  %mac_downstream_port_type130 = getelementptr i8, ptr %dev, i32 5172
  %134 = ptrtoint ptr %mac_downstream_port_type130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %mac_downstream_port_type130, align 4
  %mac_smt_address = getelementptr i8, ptr %dev, i32 5176
  %mac_smt_address134 = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 37
  %135 = call ptr @memcpy(ptr %mac_smt_address, ptr %mac_smt_address134, i32 6)
  %mac_t_req = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 38
  %136 = ptrtoint ptr %mac_t_req to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mac_t_req, align 4
  %mac_t_req137 = getelementptr i8, ptr %dev, i32 5184
  %138 = ptrtoint ptr %mac_t_req137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %mac_t_req137, align 4
  %mac_t_neg = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 39
  %139 = ptrtoint ptr %mac_t_neg to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mac_t_neg, align 4
  %mac_t_neg140 = getelementptr i8, ptr %dev, i32 5188
  %141 = ptrtoint ptr %mac_t_neg140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %mac_t_neg140, align 4
  %mac_t_max = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 40
  %142 = ptrtoint ptr %mac_t_max to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mac_t_max, align 4
  %mac_t_max143 = getelementptr i8, ptr %dev, i32 5192
  %144 = ptrtoint ptr %mac_t_max143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %mac_t_max143, align 4
  %mac_tvx_value = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 41
  %145 = ptrtoint ptr %mac_tvx_value to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mac_tvx_value, align 4
  %mac_tvx_value146 = getelementptr i8, ptr %dev, i32 5196
  %147 = ptrtoint ptr %mac_tvx_value146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %mac_tvx_value146, align 4
  %mac_frame_error_threshold = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 42
  %148 = ptrtoint ptr %mac_frame_error_threshold to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mac_frame_error_threshold, align 4
  %mac_frame_error_threshold149 = getelementptr i8, ptr %dev, i32 5220
  %150 = ptrtoint ptr %mac_frame_error_threshold149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %mac_frame_error_threshold149, align 4
  %mac_frame_error_ratio = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 43
  %151 = ptrtoint ptr %mac_frame_error_ratio to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %mac_frame_error_ratio, align 4
  %mac_frame_error_ratio152 = getelementptr i8, ptr %dev, i32 5224
  %153 = ptrtoint ptr %mac_frame_error_ratio152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %mac_frame_error_ratio152, align 4
  %mac_rmt_state = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 44
  %154 = ptrtoint ptr %mac_rmt_state to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mac_rmt_state, align 4
  %mac_rmt_state155 = getelementptr i8, ptr %dev, i32 5228
  %156 = ptrtoint ptr %mac_rmt_state155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %mac_rmt_state155, align 4
  %mac_da_flag = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 45
  %157 = ptrtoint ptr %mac_da_flag to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mac_da_flag, align 4
  %mac_da_flag158 = getelementptr i8, ptr %dev, i32 5232
  %159 = ptrtoint ptr %mac_da_flag158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %mac_da_flag158, align 4
  %mac_unda_flag = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 46
  %160 = ptrtoint ptr %mac_unda_flag to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mac_unda_flag, align 4
  %mac_una_da_flag = getelementptr i8, ptr %dev, i32 5236
  %162 = ptrtoint ptr %mac_una_da_flag to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %mac_una_da_flag, align 4
  %mac_frame_error_flag = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 47
  %163 = ptrtoint ptr %mac_frame_error_flag to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mac_frame_error_flag, align 4
  %mac_frame_error_flag163 = getelementptr i8, ptr %dev, i32 5240
  %165 = ptrtoint ptr %mac_frame_error_flag163 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %mac_frame_error_flag163, align 4
  %mac_ma_unitdata_available = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 48
  %166 = ptrtoint ptr %mac_ma_unitdata_available to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mac_ma_unitdata_available, align 4
  %mac_ma_unitdata_available166 = getelementptr i8, ptr %dev, i32 5244
  %168 = ptrtoint ptr %mac_ma_unitdata_available166 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %mac_ma_unitdata_available166, align 4
  %mac_hardware_present = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 49
  %169 = ptrtoint ptr %mac_hardware_present to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mac_hardware_present, align 4
  %mac_hardware_present169 = getelementptr i8, ptr %dev, i32 5248
  %171 = ptrtoint ptr %mac_hardware_present169 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %mac_hardware_present169, align 4
  %mac_ma_unitdata_enable = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 50
  %172 = ptrtoint ptr %mac_ma_unitdata_enable to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %mac_ma_unitdata_enable, align 4
  %mac_ma_unitdata_enable172 = getelementptr i8, ptr %dev, i32 5252
  %174 = ptrtoint ptr %mac_ma_unitdata_enable172 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %mac_ma_unitdata_enable172, align 4
  %path_tvx_lower_bound = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 52
  %175 = ptrtoint ptr %path_tvx_lower_bound to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %path_tvx_lower_bound, align 4
  %path_tvx_lower_bound175 = getelementptr i8, ptr %dev, i32 5256
  %177 = ptrtoint ptr %path_tvx_lower_bound175 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %path_tvx_lower_bound175, align 4
  %path_t_max_lower_bound = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 53
  %178 = ptrtoint ptr %path_t_max_lower_bound to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %path_t_max_lower_bound, align 4
  %path_t_max_lower_bound178 = getelementptr i8, ptr %dev, i32 5260
  %180 = ptrtoint ptr %path_t_max_lower_bound178 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %path_t_max_lower_bound178, align 4
  %path_max_t_req = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 54
  %181 = ptrtoint ptr %path_max_t_req to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %path_max_t_req, align 4
  %path_max_t_req181 = getelementptr i8, ptr %dev, i32 5264
  %183 = ptrtoint ptr %path_max_t_req181 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %path_max_t_req181, align 4
  %path_configuration = getelementptr i8, ptr %dev, i32 5268
  %path_configuration185 = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 51
  %184 = call ptr @memcpy(ptr %path_configuration, ptr %path_configuration185, i32 32)
  %port_my_type = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 55
  %185 = ptrtoint ptr %port_my_type to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %port_my_type, align 4
  %port_my_type188 = getelementptr i8, ptr %dev, i32 5300
  %187 = ptrtoint ptr %port_my_type188 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %port_my_type188, align 4
  %arrayidx192 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 55, i32 1
  %188 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx192, align 4
  %arrayidx195 = getelementptr i8, ptr %dev, i32 5304
  %190 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %arrayidx195, align 4
  %port_neighbor_type = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 56
  %191 = ptrtoint ptr %port_neighbor_type to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %port_neighbor_type, align 4
  %port_neighbor_type199 = getelementptr i8, ptr %dev, i32 5308
  %193 = ptrtoint ptr %port_neighbor_type199 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %port_neighbor_type199, align 4
  %arrayidx203 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 56, i32 1
  %194 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx203, align 4
  %arrayidx206 = getelementptr i8, ptr %dev, i32 5312
  %196 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx206, align 4
  %port_connection_policies = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 57
  %197 = ptrtoint ptr %port_connection_policies to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %port_connection_policies, align 4
  %port_connection_policies210 = getelementptr i8, ptr %dev, i32 5316
  %199 = ptrtoint ptr %port_connection_policies210 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %port_connection_policies210, align 4
  %arrayidx214 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 57, i32 1
  %200 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx214, align 4
  %arrayidx217 = getelementptr i8, ptr %dev, i32 5320
  %202 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %arrayidx217, align 4
  %port_mac_indicated = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 58
  %203 = ptrtoint ptr %port_mac_indicated to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %port_mac_indicated, align 4
  %port_mac_indicated221 = getelementptr i8, ptr %dev, i32 5324
  %205 = ptrtoint ptr %port_mac_indicated221 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %port_mac_indicated221, align 4
  %arrayidx225 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 58, i32 1
  %206 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx225, align 4
  %arrayidx228 = getelementptr i8, ptr %dev, i32 5328
  %208 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %arrayidx228, align 4
  %port_current_path = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 59
  %209 = ptrtoint ptr %port_current_path to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %port_current_path, align 4
  %port_current_path232 = getelementptr i8, ptr %dev, i32 5332
  %211 = ptrtoint ptr %port_current_path232 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %port_current_path232, align 4
  %arrayidx236 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 59, i32 1
  %212 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx236, align 4
  %arrayidx239 = getelementptr i8, ptr %dev, i32 5336
  %214 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %arrayidx239, align 4
  %port_requested_paths = getelementptr i8, ptr %dev, i32 5340
  %port_requested_paths243 = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 60
  %215 = call ptr @memcpy(ptr %port_requested_paths, ptr %port_requested_paths243, i32 3)
  %arrayidx247 = getelementptr i8, ptr %dev, i32 5343
  %arrayidx250 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 60, i32 1
  %216 = call ptr @memcpy(ptr %arrayidx247, ptr %arrayidx250, i32 3)
  %port_mac_placement = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 61
  %217 = ptrtoint ptr %port_mac_placement to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %port_mac_placement, align 4
  %port_mac_placement254 = getelementptr i8, ptr %dev, i32 5348
  %219 = ptrtoint ptr %port_mac_placement254 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %port_mac_placement254, align 4
  %arrayidx258 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 61, i32 1
  %220 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx258, align 4
  %arrayidx261 = getelementptr i8, ptr %dev, i32 5352
  %222 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %arrayidx261, align 4
  %port_available_paths = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 62
  %223 = ptrtoint ptr %port_available_paths to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %port_available_paths, align 4
  %port_available_paths265 = getelementptr i8, ptr %dev, i32 5356
  %225 = ptrtoint ptr %port_available_paths265 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %224, ptr %port_available_paths265, align 4
  %arrayidx269 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 62, i32 1
  %226 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx269, align 4
  %arrayidx272 = getelementptr i8, ptr %dev, i32 5360
  %228 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %arrayidx272, align 4
  %port_pmd_class = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 63
  %229 = ptrtoint ptr %port_pmd_class to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %port_pmd_class, align 4
  %port_pmd_class276 = getelementptr i8, ptr %dev, i32 5364
  %231 = ptrtoint ptr %port_pmd_class276 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %port_pmd_class276, align 4
  %arrayidx280 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 63, i32 1
  %232 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx280, align 4
  %arrayidx283 = getelementptr i8, ptr %dev, i32 5368
  %234 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %arrayidx283, align 4
  %port_connection_capabilities = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 64
  %235 = ptrtoint ptr %port_connection_capabilities to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %port_connection_capabilities, align 4
  %port_connection_capabilities287 = getelementptr i8, ptr %dev, i32 5372
  %237 = ptrtoint ptr %port_connection_capabilities287 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %port_connection_capabilities287, align 4
  %arrayidx291 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 64, i32 1
  %238 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx291, align 4
  %arrayidx294 = getelementptr i8, ptr %dev, i32 5376
  %240 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %arrayidx294, align 4
  %port_bs_flag = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 65
  %241 = ptrtoint ptr %port_bs_flag to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %port_bs_flag, align 4
  %port_bs_flag298 = getelementptr i8, ptr %dev, i32 5380
  %243 = ptrtoint ptr %port_bs_flag298 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %port_bs_flag298, align 4
  %arrayidx302 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 65, i32 1
  %244 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx302, align 4
  %arrayidx305 = getelementptr i8, ptr %dev, i32 5384
  %246 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %arrayidx305, align 4
  %port_ler_estimate = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 66
  %247 = ptrtoint ptr %port_ler_estimate to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %port_ler_estimate, align 4
  %port_ler_estimate309 = getelementptr i8, ptr %dev, i32 5396
  %249 = ptrtoint ptr %port_ler_estimate309 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %port_ler_estimate309, align 4
  %arrayidx313 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 66, i32 1
  %250 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx313, align 4
  %arrayidx316 = getelementptr i8, ptr %dev, i32 5400
  %252 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %arrayidx316, align 4
  %port_ler_cutoff = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 67
  %253 = ptrtoint ptr %port_ler_cutoff to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %port_ler_cutoff, align 4
  %port_ler_cutoff320 = getelementptr i8, ptr %dev, i32 5420
  %255 = ptrtoint ptr %port_ler_cutoff320 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %port_ler_cutoff320, align 4
  %arrayidx324 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 67, i32 1
  %256 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx324, align 4
  %arrayidx327 = getelementptr i8, ptr %dev, i32 5424
  %258 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %arrayidx327, align 4
  %port_ler_alarm = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 68
  %259 = ptrtoint ptr %port_ler_alarm to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %port_ler_alarm, align 4
  %port_ler_alarm331 = getelementptr i8, ptr %dev, i32 5428
  %261 = ptrtoint ptr %port_ler_alarm331 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %port_ler_alarm331, align 4
  %arrayidx335 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 68, i32 1
  %262 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx335, align 4
  %arrayidx338 = getelementptr i8, ptr %dev, i32 5432
  %264 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %arrayidx338, align 4
  %port_connect_state = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 69
  %265 = ptrtoint ptr %port_connect_state to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %port_connect_state, align 4
  %port_connect_state342 = getelementptr i8, ptr %dev, i32 5436
  %267 = ptrtoint ptr %port_connect_state342 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %port_connect_state342, align 4
  %arrayidx346 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 69, i32 1
  %268 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx346, align 4
  %arrayidx349 = getelementptr i8, ptr %dev, i32 5440
  %270 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %arrayidx349, align 4
  %port_pcm_state = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 70
  %271 = ptrtoint ptr %port_pcm_state to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %port_pcm_state, align 4
  %port_pcm_state353 = getelementptr i8, ptr %dev, i32 5444
  %273 = ptrtoint ptr %port_pcm_state353 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %port_pcm_state353, align 4
  %arrayidx357 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 70, i32 1
  %274 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx357, align 4
  %arrayidx360 = getelementptr i8, ptr %dev, i32 5448
  %276 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %arrayidx360, align 4
  %port_pc_withhold = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 71
  %277 = ptrtoint ptr %port_pc_withhold to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %port_pc_withhold, align 4
  %port_pc_withhold364 = getelementptr i8, ptr %dev, i32 5452
  %279 = ptrtoint ptr %port_pc_withhold364 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %port_pc_withhold364, align 4
  %arrayidx368 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 71, i32 1
  %280 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx368, align 4
  %arrayidx371 = getelementptr i8, ptr %dev, i32 5456
  %282 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %arrayidx371, align 4
  %port_ler_flag = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 72
  %283 = ptrtoint ptr %port_ler_flag to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %port_ler_flag, align 4
  %port_ler_flag375 = getelementptr i8, ptr %dev, i32 5460
  %285 = ptrtoint ptr %port_ler_flag375 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %port_ler_flag375, align 4
  %arrayidx379 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 72, i32 1
  %286 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx379, align 4
  %arrayidx382 = getelementptr i8, ptr %dev, i32 5464
  %288 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %arrayidx382, align 4
  %port_hardware_present = getelementptr inbounds %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 73
  %289 = ptrtoint ptr %port_hardware_present to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %port_hardware_present, align 4
  %port_hardware_present386 = getelementptr i8, ptr %dev, i32 5468
  %291 = ptrtoint ptr %port_hardware_present386 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %290, ptr %port_hardware_present386, align 4
  %arrayidx390 = getelementptr %struct.PI_CMD_SMT_MIB_GET_RSP, ptr %36, i32 0, i32 73, i32 1
  %292 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx390, align 4
  %arrayidx393 = getelementptr i8, ptr %dev, i32 5472
  %294 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %arrayidx393, align 4
  %295 = ptrtoint ptr %cmd_req_virt to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %cmd_req_virt, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 5, ptr %296, align 4
  %call395 = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call395)
  %cmp396.not = icmp eq i32 %call395, 0
  br i1 %cmp396.not, label %if.end399, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end399:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %298 = ptrtoint ptr %cmd_rsp_virt to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %cmd_rsp_virt, align 4
  %ls401 = getelementptr inbounds %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 1, i32 1
  %300 = ptrtoint ptr %ls401 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %ls401, align 4
  %mac_frame_cts = getelementptr i8, ptr %dev, i32 5200
  %302 = ptrtoint ptr %mac_frame_cts to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %301, ptr %mac_frame_cts, align 4
  %ls405 = getelementptr inbounds %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 34, i32 1
  %303 = ptrtoint ptr %ls405 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %ls405, align 4
  %mac_copied_cts = getelementptr i8, ptr %dev, i32 5204
  %305 = ptrtoint ptr %mac_copied_cts to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %304, ptr %mac_copied_cts, align 4
  %ls409 = getelementptr inbounds %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 35, i32 1
  %306 = ptrtoint ptr %ls409 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %ls409, align 4
  %mac_transmit_cts = getelementptr i8, ptr %dev, i32 5208
  %308 = ptrtoint ptr %mac_transmit_cts to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %mac_transmit_cts, align 4
  %ls413 = getelementptr inbounds %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 2, i32 1
  %309 = ptrtoint ptr %ls413 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %ls413, align 4
  %mac_error_cts = getelementptr i8, ptr %dev, i32 5212
  %311 = ptrtoint ptr %mac_error_cts to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %mac_error_cts, align 4
  %ls417 = getelementptr inbounds %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 3, i32 1
  %312 = ptrtoint ptr %ls417 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %ls417, align 4
  %mac_lost_cts = getelementptr i8, ptr %dev, i32 5216
  %314 = ptrtoint ptr %mac_lost_cts to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %mac_lost_cts, align 4
  %ls422 = getelementptr inbounds %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 30, i32 0, i32 1
  %315 = ptrtoint ptr %ls422 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %ls422, align 4
  %port_lct_fail_cts = getelementptr i8, ptr %dev, i32 5388
  %317 = ptrtoint ptr %port_lct_fail_cts to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %port_lct_fail_cts, align 4
  %ls429 = getelementptr %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 30, i32 1, i32 1
  %318 = ptrtoint ptr %ls429 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %ls429, align 4
  %arrayidx432 = getelementptr i8, ptr %dev, i32 5392
  %320 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %319, ptr %arrayidx432, align 4
  %ls436 = getelementptr inbounds %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 31, i32 0, i32 1
  %321 = ptrtoint ptr %ls436 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %ls436, align 4
  %port_lem_reject_cts = getelementptr i8, ptr %dev, i32 5404
  %323 = ptrtoint ptr %port_lem_reject_cts to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %322, ptr %port_lem_reject_cts, align 4
  %ls443 = getelementptr %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 31, i32 1, i32 1
  %324 = ptrtoint ptr %ls443 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %ls443, align 4
  %arrayidx446 = getelementptr i8, ptr %dev, i32 5408
  %326 = ptrtoint ptr %arrayidx446 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %325, ptr %arrayidx446, align 4
  %ls450 = getelementptr inbounds %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 32, i32 0, i32 1
  %327 = ptrtoint ptr %ls450 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %ls450, align 4
  %port_lem_cts = getelementptr i8, ptr %dev, i32 5412
  %329 = ptrtoint ptr %port_lem_cts to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %328, ptr %port_lem_cts, align 4
  %ls457 = getelementptr %struct.PI_CMD_CNTRS_GET_RSP, ptr %299, i32 0, i32 2, i32 32, i32 1, i32 1
  %330 = ptrtoint ptr %ls457 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %ls457, align 4
  %arrayidx460 = getelementptr i8, ptr %dev, i32 5416
  %332 = ptrtoint ptr %arrayidx460 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %331, ptr %arrayidx460, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end399, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfx_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %bus_dev = getelementptr i8, ptr %dev_id, i32 4868
  %0 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_dev, align 4
  %bus = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %3, @pci_bus_type
  br i1 %cmp, label %if.then, label %entry.cleanup62_crit_edge

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

if.then:                                          ; preds = %entry
  %mmio.i = getelementptr i8, ptr %dev_id, i32 4872
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %base.i.i = getelementptr i8, ptr %dev_id, i32 4864
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 68
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !232
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  br label %dfx_port_read_long.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %base.i6.i = getelementptr i8, ptr %dev_id, i32 4864
  %10 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i6.i, align 4
  %add.i.i = add i32 %11, 68
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %12 = inttoptr i32 %add1.i.i to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #5, !srcloc !232
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %dfx_port_read_long.exit

dfx_port_read_long.exit:                          ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %9, %if.then.i ], [ %14, %if.else.i ]
  %and = and i32 %storemerge.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %dfx_port_read_long.exit.cleanup62_crit_edge, label %if.end

dfx_port_read_long.exit.cleanup62_crit_edge:      ; preds = %dfx_port_read_long.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

if.end:                                           ; preds = %dfx_port_read_long.exit
  %lock = getelementptr i8, ptr %dev_id, i32 4816
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i95 = icmp eq i8 %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %base.i6.i96 = getelementptr i8, ptr %dev_id, i32 4864
  br i1 %tobool.not.i95, label %if.else.i102, label %if.then.i98

if.then.i98:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i97, i32 16777216) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit

if.else.i102:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base.i6.i96, align 4
  %add.i.i99 = add i32 %20, 64
  %and.i.i100 = and i32 %add.i.i99, 1048575
  %add1.i.i101 = or i32 %and.i.i100, -18874368
  %21 = inttoptr i32 %add1.i.i101 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 16777216) #5, !srcloc !229
  br label %dfx_port_write_long.exit

dfx_port_write_long.exit:                         ; preds = %if.else.i102, %if.then.i98
  %cons_block_virt.i.i = getelementptr i8, ptr %dev_id, i32 2344
  %22 = ptrtoint ptr %cons_block_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cons_block_virt.i.i, align 4
  %rcv_xmt_reg.i.i = getelementptr i8, ptr %dev_id, i32 2360
  %xmt_cons.i.i = getelementptr inbounds %struct.anon.126, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %rcv_xmt_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rcv_xmt_reg.i.i, align 4
  %26 = ptrtoint ptr %xmt_cons.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %xmt_cons.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp.not30.i.i = icmp eq i8 %25, %27
  br i1 %cmp.not30.i.i, label %dfx_port_write_long.exit.if.end.i_crit_edge, label %while.body.lr.ph.i.i

dfx_port_write_long.exit.if.end.i_crit_edge:      ; preds = %dfx_port_write_long.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

while.body.lr.ph.i.i:                             ; preds = %dfx_port_write_long.exit
  %xmt_total_frames.i.i = getelementptr i8, ptr %dev_id, i32 5512
  %xmt_total_bytes.i.i = getelementptr i8, ptr %dev_id, i32 5516
  %descr_block_virt.i.i = getelementptr i8, ptr %dev_id, i32 2312
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %28 = phi i8 [ %25, %while.body.lr.ph.i.i ], [ %add15.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %freed.031.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc17.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %conv.i.i = zext i8 %28 to i32
  %arrayidx.i.i = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 24, i32 %conv.i.i
  %29 = ptrtoint ptr %xmt_total_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xmt_total_frames.i.i, align 4
  %inc.i.i = add i32 %30, 1
  store i32 %inc.i.i, ptr %xmt_total_frames.i.i, align 4
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i, align 4
  %35 = ptrtoint ptr %xmt_total_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xmt_total_bytes.i.i, align 4
  %add.i.i104 = add i32 %36, %34
  store i32 %add.i.i104, ptr %xmt_total_bytes.i.i, align 4
  %37 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus_dev, align 4
  %39 = ptrtoint ptr %descr_block_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %descr_block_virt.i.i, align 4
  %long_1.i.i = getelementptr %struct.PI_DESCR_BLOCK, ptr %40, i32 0, i32 1, i32 %conv.i.i, i32 1
  %41 = ptrtoint ptr %long_1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %long_1.i.i, align 4
  %43 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %38, i32 noundef %42, i32 noundef %43, i32 noundef 1, i32 noundef 0) #5
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %45, i32 noundef 0) #5
  %46 = ptrtoint ptr %rcv_xmt_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rcv_xmt_reg.i.i, align 4
  %add15.i.i = add i8 %47, 1
  store i8 %add15.i.i, ptr %rcv_xmt_reg.i.i, align 4
  %inc17.i.i = add i32 %freed.031.i.i, 1
  %48 = ptrtoint ptr %xmt_cons.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %xmt_cons.i.i, align 1
  %cmp.not.i.i = icmp eq i8 %add15.i.i, %49
  br i1 %cmp.not.i.i, label %dfx_xmt_done.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

dfx_xmt_done.exit.i:                              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc17.i.i)
  %tobool.not.i105 = icmp eq i32 %inc17.i.i, 0
  br i1 %tobool.not.i105, label %dfx_xmt_done.exit.i.if.end.i_crit_edge, label %if.then.i106

dfx_xmt_done.exit.i.if.end.i_crit_edge:           ; preds = %dfx_xmt_done.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i106:                                     ; preds = %dfx_xmt_done.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %50 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %51) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i106, %dfx_xmt_done.exit.i.if.end.i_crit_edge, %dfx_port_write_long.exit.if.end.i_crit_edge
  %52 = ptrtoint ptr %cons_block_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cons_block_virt.i.i, align 4
  %rcv_comp.i.i = getelementptr i8, ptr %dev_id, i32 2361
  %rcv_cons.i.i = getelementptr inbounds %struct.anon.126, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %rcv_comp.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %rcv_comp.i.i, align 1
  %56 = ptrtoint ptr %rcv_cons.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rcv_cons.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp.not212.i.i = icmp eq i8 %55, %57
  br i1 %cmp.not212.i.i, label %if.end.i.dfx_rcv_queue_process.exit.i_crit_edge, label %while.body.lr.ph.i15.i

if.end.i.dfx_rcv_queue_process.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_rcv_queue_process.exit.i

while.body.lr.ph.i15.i:                           ; preds = %if.end.i
  %descr_block_virt.i13.i = getelementptr i8, ptr %dev_id, i32 2312
  %rcv_length_errors.i.i = getelementptr i8, ptr %dev_id, i32 5488
  %dev.i.i = getelementptr i8, ptr %dev_id, i32 4860
  %rcv_total_bytes.i.i = getelementptr i8, ptr %dev_id, i32 5500
  %rcv_total_frames.i.i = getelementptr i8, ptr %dev_id, i32 5492
  %rcv_multicast_frames.i.i = getelementptr i8, ptr %dev_id, i32 5496
  %rcv_prod.i.i = getelementptr i8, ptr %dev_id, i32 2363
  br label %while.body.i18.i

while.body.i18.i:                                 ; preds = %cleanup97.i.i.while.body.i18.i_crit_edge, %while.body.lr.ph.i15.i
  %conv214.in.i.i = phi i8 [ %55, %while.body.lr.ph.i15.i ], [ %add95.i.i, %cleanup97.i.i.while.body.i18.i_crit_edge ]
  %conv214.i.i = zext i8 %conv214.in.i.i to i32
  %arrayidx.i16.i = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 23, i32 %conv214.i.i
  %58 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i16.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 19
  %60 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i, align 4
  %62 = ptrtoint ptr %descr_block_virt.i13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %descr_block_virt.i13.i, align 4
  %long_1.i17.i = getelementptr [256 x %struct.PI_RCV_DESCR], ptr %63, i32 0, i32 %conv214.i.i, i32 1
  %64 = ptrtoint ptr %long_1.i17.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %long_1.i17.i, align 4
  %66 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus_dev, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %67, i32 noundef %65, i32 noundef 4, i32 noundef 2) #5
  %68 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %descr.0.copyload.i.i = load i32, ptr %61, align 1
  %and.i.i107 = and i32 %descr.0.copyload.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i107)
  %tobool.not.i.i = icmp eq i32 %and.i.i107, 0
  br i1 %tobool.not.i.i, label %if.else12.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i18.i
  call void @__sanitizer_cov_trace_pc() #7
  %and8.i.i = and i32 %descr.0.copyload.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %rcv_frame_status_errors.rcv_crc_errors.i.v.i = select i1 %tobool9.not.i.i, i32 5484, i32 5480
  %rcv_frame_status_errors.rcv_crc_errors.i.i = getelementptr i8, ptr %dev_id, i32 %rcv_frame_status_errors.rcv_crc_errors.i.v.i
  br label %cleanup97.sink.split.i.i

if.else12.i.i:                                    ; preds = %while.body.i18.i
  %and13.i.i = and i32 %descr.0.copyload.i.i, 8191
  %sub.i.i = add nsw i32 %and13.i.i, -4
  %69 = add nsw i32 %and13.i.i, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4479, i32 %69)
  %70 = icmp ult i32 %69, 4479
  br i1 %70, label %if.else20.i.i, label %if.else12.i.i.cleanup97.sink.split.i.i_crit_edge

if.else12.i.i.cleanup97.sink.split.i.i_crit_edge: ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup97.sink.split.i.i

if.else20.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %sub.i.i)
  %cmp21.i.i = icmp ugt i32 %sub.i.i, 200
  br i1 %cmp21.i.i, label %if.then23.i.i, label %if.else20.i.i.if.end53.i.i_crit_edge

if.else20.i.i.if.end53.i.i_crit_edge:             ; preds = %if.else20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i.i

if.then23.i.i:                                    ; preds = %if.else20.i.i
  %71 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i.i, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %72, i32 noundef 4736, i32 noundef 2592) #5
  %tobool24.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool24.not.i.i, label %if.then23.i.i.if.end53.i.i_crit_edge, label %if.then25.i.i

if.then23.i.i.if.end53.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i.i

if.then25.i.i:                                    ; preds = %if.then23.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %73 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  %add.i.i.i = add i32 %75, 127
  %and.i.i.i = and i32 %add.i.i.i, -128
  %sub2.i.i.i = sub i32 %and.i.i.i, %75
  %add.ptr.i.i.i.i = getelementptr i8, ptr %74, i32 %sub2.i.i.i
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %76 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %77, i32 %sub2.i.i.i
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %78 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus_dev, align 4
  %call.i161.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i.i) #5
  br i1 %call.i161.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.then25.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !235

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %79) #5
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %79, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %83, %if.end.i.i.i.i ], [ %81, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #5
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %84 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus_dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %85, i32 noundef -1) #5
  br label %if.then32.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.then25.i.i
  tail call void @debug_dma_map_single(ptr noundef %79, ptr noundef %add.ptr.i.i.i.i, i32 noundef 4608) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.i.i.i = add i32 %87, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %86, i32 %shr.i.i.i
  %and.i162.i.i = and i32 %87, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %79, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i162.i.i, i32 noundef 4608, i32 noundef 2, i32 noundef 0) #5
  %88 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus_dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %89, i32 noundef %call41.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.if.then32.i.i_crit_edge, label %if.end53.thread.i.i

dma_map_single_attrs.exit.i.i.if.then32.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then32.i.i

if.then32.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i.if.then32.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #5
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.then32.i.i, %if.then23.i.i.if.end53.i.i_crit_edge, %if.else20.i.i.if.end53.i.i_crit_edge
  %90 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i.i, align 4
  %add51.i.i = add nsw i32 %and13.i.i, -1
  %call.i165.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %91, i32 noundef %add51.i.i, i32 noundef 2592) #5
  %cmp54.i.i = icmp eq ptr %call.i165.i.i, null
  br i1 %cmp54.i.i, label %if.end53.i.i.cleanup97.thread.i.i_crit_edge, label %if.then62.i.i

if.end53.i.i.cleanup97.thread.i.i_crit_edge:      ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup97.thread.i.i

if.end53.thread.i.i:                              ; preds = %dma_map_single_attrs.exit.i.i
  %92 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i16.i, align 4
  %94 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus_dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %95, i32 noundef %65, i32 noundef 4608, i32 noundef 2, i32 noundef 0) #5
  %data.i163.i.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 19
  %96 = ptrtoint ptr %data.i163.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data.i163.i.i, align 4
  %add.ptr.i164.i.i = getelementptr i8, ptr %97, i32 4
  store ptr %add.ptr.i164.i.i, ptr %data.i163.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 16
  %98 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %99, i32 4
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %100 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i.i.i, ptr %arrayidx.i16.i, align 4
  %101 = ptrtoint ptr %descr_block_virt.i13.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %descr_block_virt.i13.i, align 4
  %long_145.i.i = getelementptr [256 x %struct.PI_RCV_DESCR], ptr %102, i32 0, i32 %conv214.i.i, i32 1
  %103 = ptrtoint ptr %long_145.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call41.i.i.i, ptr %long_145.i.i, align 4
  %cmp54188.i.i = icmp eq ptr %93, null
  br i1 %cmp54188.i.i, label %if.end53.thread.i.i.cleanup97.thread.i.i_crit_edge, label %if.end53.thread.i.i.if.end68.i.i_crit_edge

if.end53.thread.i.i.if.end68.i.i_crit_edge:       ; preds = %if.end53.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i.i

if.end53.thread.i.i.cleanup97.thread.i.i_crit_edge: ; preds = %if.end53.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup97.thread.i.i

if.then62.i.i:                                    ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus_dev, align 4
  %add64.i.i = add i32 %65, 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %105, i32 noundef %add64.i.i, i32 noundef %add51.i.i, i32 noundef 2) #5
  %add.ptr66.i.i = getelementptr i8, ptr %61, i32 4
  %data.i166.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i165.i.i, i32 0, i32 19
  %106 = ptrtoint ptr %data.i166.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i166.i.i, align 4
  %108 = call ptr @memcpy(ptr %107, ptr %add.ptr66.i.i, i32 %add51.i.i)
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.then62.i.i, %if.end53.thread.i.i.if.end68.i.i_crit_edge
  %skb.3191201.i.i = phi ptr [ %call.i165.i.i, %if.then62.i.i ], [ %93, %if.end53.thread.i.i.if.end68.i.i_crit_edge ]
  %data.i167.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3191201.i.i, i32 0, i32 19
  %109 = ptrtoint ptr %data.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i167.i.i, align 4
  %add.ptr.i168.i.i = getelementptr i8, ptr %110, i32 3
  store ptr %add.ptr.i168.i.i, ptr %data.i167.i.i, align 4
  %tail.i169.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3191201.i.i, i32 0, i32 16
  %111 = ptrtoint ptr %tail.i169.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tail.i169.i.i, align 8
  %add.ptr1.i170.i.i = getelementptr i8, ptr %112, i32 3
  store ptr %add.ptr1.i170.i.i, ptr %tail.i169.i.i, align 8
  %call69.i.i = tail call ptr @skb_put(ptr noundef nonnull %skb.3191201.i.i, i32 noundef %sub.i.i) #5
  %113 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i.i, align 4
  %call71.i.i = tail call zeroext i16 @fddi_type_trans(ptr noundef nonnull %skb.3191201.i.i, ptr noundef %114) #5
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3191201.i.i, i32 0, i32 15, i32 0, i32 18
  %115 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %call71.i.i, ptr %protocol.i.i, align 8
  %len.i19.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3191201.i.i, i32 0, i32 6
  %116 = ptrtoint ptr %len.i19.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len.i19.i, align 4
  %118 = ptrtoint ptr %rcv_total_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rcv_total_bytes.i.i, align 4
  %add72.i.i = add i32 %119, %117
  store i32 %add72.i.i, ptr %rcv_total_bytes.i.i, align 4
  %call73.i.i = tail call i32 @netif_rx(ptr noundef nonnull %skb.3191201.i.i) #5
  %120 = ptrtoint ptr %rcv_total_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rcv_total_frames.i.i, align 4
  %inc74.i.i = add i32 %121, 1
  store i32 %inc74.i.i, ptr %rcv_total_frames.i.i, align 4
  %add.ptr75.i.i = getelementptr i8, ptr %61, i32 8
  %122 = ptrtoint ptr %add.ptr75.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %add.ptr75.i.i, align 1
  %124 = and i8 %123, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool78.not.i.i = icmp eq i8 %124, 0
  br i1 %tobool78.not.i.i, label %if.end68.i.i.cleanup97.i.i_crit_edge, label %if.end68.i.i.cleanup97.sink.split.i.i_crit_edge

if.end68.i.i.cleanup97.sink.split.i.i_crit_edge:  ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup97.sink.split.i.i

if.end68.i.i.cleanup97.i.i_crit_edge:             ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup97.i.i

cleanup97.thread.i.i:                             ; preds = %if.end53.thread.i.i.cleanup97.thread.i.i_crit_edge, %if.end53.i.i.cleanup97.thread.i.i_crit_edge
  %125 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i.i, align 4
  %call58.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %126) #8
  %rcv_discards.i.i = getelementptr i8, ptr %dev_id, i32 5476
  %127 = ptrtoint ptr %rcv_discards.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rcv_discards.i.i, align 4
  %inc59.i.i = add i32 %128, 1
  store i32 %inc59.i.i, ptr %rcv_discards.i.i, align 4
  br label %dfx_rcv_queue_process.exit.i

cleanup97.sink.split.i.i:                         ; preds = %if.end68.i.i.cleanup97.sink.split.i.i_crit_edge, %if.else12.i.i.cleanup97.sink.split.i.i_crit_edge, %if.then.i.i
  %rcv_multicast_frames.sink215.i.i = phi ptr [ %rcv_frame_status_errors.rcv_crc_errors.i.i, %if.then.i.i ], [ %rcv_length_errors.i.i, %if.else12.i.i.cleanup97.sink.split.i.i_crit_edge ], [ %rcv_multicast_frames.i.i, %if.end68.i.i.cleanup97.sink.split.i.i_crit_edge ]
  %129 = ptrtoint ptr %rcv_multicast_frames.sink215.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rcv_multicast_frames.sink215.i.i, align 4
  %inc80.i.i = add i32 %130, 1
  store i32 %inc80.i.i, ptr %rcv_multicast_frames.sink215.i.i, align 4
  br label %cleanup97.i.i

cleanup97.i.i:                                    ; preds = %cleanup97.sink.split.i.i, %if.end68.i.i.cleanup97.i.i_crit_edge
  %131 = ptrtoint ptr %rcv_prod.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %rcv_prod.i.i, align 1
  %add90.i.i = add i8 %132, 1
  store i8 %add90.i.i, ptr %rcv_prod.i.i, align 1
  %133 = ptrtoint ptr %rcv_comp.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %rcv_comp.i.i, align 1
  %add95.i.i = add i8 %134, 1
  store i8 %add95.i.i, ptr %rcv_comp.i.i, align 1
  %135 = ptrtoint ptr %rcv_cons.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %rcv_cons.i.i, align 1
  %cmp.not.i20.i = icmp eq i8 %add95.i.i, %136
  br i1 %cmp.not.i20.i, label %cleanup97.i.i.dfx_rcv_queue_process.exit.i_crit_edge, label %cleanup97.i.i.while.body.i18.i_crit_edge

cleanup97.i.i.while.body.i18.i_crit_edge:         ; preds = %cleanup97.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i18.i

cleanup97.i.i.dfx_rcv_queue_process.exit.i_crit_edge: ; preds = %cleanup97.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_rcv_queue_process.exit.i

dfx_rcv_queue_process.exit.i:                     ; preds = %cleanup97.i.i.dfx_rcv_queue_process.exit.i_crit_edge, %cleanup97.thread.i.i, %if.end.i.dfx_rcv_queue_process.exit.i_crit_edge
  %137 = ptrtoint ptr %rcv_xmt_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rcv_xmt_reg.i.i, align 4
  %139 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i21.i = icmp eq i8 %140, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %141 = tail call i32 @llvm.bswap.i32(i32 %138) #5
  br i1 %tobool.not.i21.i, label %if.else.i.i, label %if.then.i23.i

if.then.i23.i:                                    ; preds = %dfx_rcv_queue_process.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %142 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i22.i = getelementptr i8, ptr %143, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22.i, i32 %141) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit.i

if.else.i.i:                                      ; preds = %dfx_rcv_queue_process.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %base.i6.i96, align 4
  %add.i.i24.i = add i32 %145, 36
  %and.i.i25.i = and i32 %add.i.i24.i, 1048575
  %add1.i.i.i = or i32 %and.i.i25.i, -18874368
  %146 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %146, i32 %141) #5, !srcloc !229
  br label %dfx_port_write_long.exit.i

dfx_port_write_long.exit.i:                       ; preds = %if.else.i.i, %if.then.i23.i
  %147 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i27.i = icmp eq i8 %148, 0
  br i1 %tobool.not.i27.i, label %if.else.i34.i, label %if.then.i29.i

if.then.i29.i:                                    ; preds = %dfx_port_write_long.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %149 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %150, i32 20
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28.i) #5, !srcloc !232
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  br label %dfx_port_read_long.exit.i

if.else.i34.i:                                    ; preds = %dfx_port_write_long.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %153 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %base.i6.i96, align 4
  %add.i.i31.i = add i32 %154, 20
  %and.i.i32.i = and i32 %add.i.i31.i, 1048575
  %add1.i.i33.i = or i32 %and.i.i32.i, -18874368
  %155 = inttoptr i32 %add1.i.i33.i to ptr
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %155) #5, !srcloc !232
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %dfx_port_read_long.exit.i

dfx_port_read_long.exit.i:                        ; preds = %if.else.i34.i, %if.then.i29.i
  %storemerge.i.i = phi i32 [ %152, %if.then.i29.i ], [ %157, %if.else.i34.i ]
  %and.i = and i32 %storemerge.i.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %dfx_port_read_long.exit.i.dfx_int_common.exit_crit_edge, label %if.then3.i

dfx_port_read_long.exit.i.dfx_int_common.exit_crit_edge: ; preds = %dfx_port_read_long.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_int_common.exit

if.then3.i:                                       ; preds = %dfx_port_read_long.exit.i
  %158 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i.i.i = icmp eq i8 %159, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i36.i

if.then.i.i36.i:                                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %160 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i.i35.i = getelementptr i8, ptr %161, i32 24
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i35.i) #5, !srcloc !232
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  br label %dfx_port_read_long.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %164 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %base.i6.i96, align 4
  %add.i.i.i.i = add i32 %165, 24
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %166 = inttoptr i32 %add1.i.i.i.i to ptr
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %166) #5, !srcloc !232
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %dfx_port_read_long.exit.i.i

dfx_port_read_long.exit.i.i:                      ; preds = %if.else.i.i.i, %if.then.i.i36.i
  %storemerge.i.i.i = phi i32 [ %163, %if.then.i.i36.i ], [ %168, %if.else.i.i.i ]
  %169 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i140.i.i = icmp eq i8 %170, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %171 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i.i.i) #5
  br i1 %tobool.not.i140.i.i, label %if.else.i147.i.i, label %if.then.i143.i.i

if.then.i143.i.i:                                 ; preds = %dfx_port_read_long.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %172 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i142.i.i = getelementptr i8, ptr %173, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i142.i.i, i32 %171) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit.i.i

if.else.i147.i.i:                                 ; preds = %dfx_port_read_long.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %174 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %base.i6.i96, align 4
  %add.i.i144.i.i = add i32 %175, 24
  %and.i.i145.i.i = and i32 %add.i.i144.i.i, 1048575
  %add1.i.i146.i.i = or i32 %and.i.i145.i.i, -18874368
  %176 = inttoptr i32 %add1.i.i146.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %176, i32 %171) #5, !srcloc !229
  br label %dfx_port_write_long.exit.i.i

dfx_port_write_long.exit.i.i:                     ; preds = %if.else.i147.i.i, %if.then.i143.i.i
  %and.i37.i = and i32 %storemerge.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i)
  %tobool.not.i38.i = icmp eq i32 %and.i37.i, 0
  br i1 %tobool.not.i38.i, label %if.end55.i.i, label %if.then.i39.i

if.then.i39.i:                                    ; preds = %dfx_port_write_long.exit.i.i
  %and1.i.i = and i32 %storemerge.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i39.i.if.end.i.i_crit_edge, label %do.end.i.i

if.then.i39.i.if.end.i.i_crit_edge:               ; preds = %if.then.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i40.i = getelementptr i8, ptr %dev_id, i32 4860
  %177 = ptrtoint ptr %dev.i40.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i40.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %178) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i39.i.if.end.i.i_crit_edge
  %and4.i.i = and i32 %storemerge.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %do.end9.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i.i

do.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev11.i.i = getelementptr i8, ptr %dev_id, i32 4860
  %179 = ptrtoint ptr %dev11.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev11.i.i, align 4
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %180) #8
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %do.end9.i.i, %if.end.i.i.if.end15.i.i_crit_edge
  %and16.i.i = and i32 %storemerge.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end15.i.i.if.end27.i.i_crit_edge, label %do.end21.i.i

if.end15.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i.i

do.end21.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev23.i.i = getelementptr i8, ptr %dev_id, i32 4860
  %181 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev23.i.i, align 4
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %182) #8
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %do.end21.i.i, %if.end15.i.i.if.end27.i.i_crit_edge
  %link_available.i.i = getelementptr i8, ptr %dev_id, i32 2760
  %183 = ptrtoint ptr %link_available.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %link_available.i.i, align 4
  %reset_type.i.i = getelementptr i8, ptr %dev_id, i32 2764
  %184 = ptrtoint ptr %reset_type.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %reset_type.i.i, align 4
  %dev32.i.i = getelementptr i8, ptr %dev_id, i32 4860
  %185 = ptrtoint ptr %dev32.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev32.i.i, align 4
  %call35.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %186) #8
  %call36.i.i = tail call fastcc i32 @dfx_adap_init(ptr noundef %add.ptr.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp.not.i41.i = icmp eq i32 %call36.i.i, 0
  %187 = ptrtoint ptr %dev32.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev32.i.i, align 4
  br i1 %cmp.not.i41.i, label %do.end49.i.i, label %do.end40.i.i

do.end40.i.i:                                     ; preds = %if.end27.i.i
  %call45.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %188) #8
  %189 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i149.i.i = icmp eq i8 %190, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i149.i.i, label %if.else.i156.i.i, label %if.then.i152.i.i

if.then.i152.i.i:                                 ; preds = %do.end40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %191 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i151.i.i = getelementptr i8, ptr %192, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i151.i.i, i32 0) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_int_common.exit

if.else.i156.i.i:                                 ; preds = %do.end40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %193 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %base.i6.i96, align 4
  %add.i.i153.i.i = add i32 %194, 28
  %and.i.i154.i.i = and i32 %add.i.i153.i.i, 1048575
  %add1.i.i155.i.i = or i32 %and.i.i154.i.i, -18874368
  %195 = inttoptr i32 %add1.i.i155.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %195, i32 0) #5, !srcloc !229
  br label %dfx_int_common.exit

do.end49.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call54.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %188) #8
  br label %dfx_int_common.exit

if.end55.i.i:                                     ; preds = %dfx_port_write_long.exit.i.i
  %and56.i.i = and i32 %storemerge.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool57.not.i.i = icmp eq i32 %and56.i.i, 0
  br i1 %tobool57.not.i.i, label %if.end55.i.i.if.end61.i.i_crit_edge, label %if.then58.i.i

if.end55.i.i.if.end61.i.i_crit_edge:              ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.i.i

if.then58.i.i:                                    ; preds = %if.end55.i.i
  %link_available59.i.i = getelementptr i8, ptr %dev_id, i32 2760
  %196 = ptrtoint ptr %link_available59.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %link_available59.i.i, align 4
  %xmt_prod.i.i.i = getelementptr i8, ptr %dev_id, i32 2362
  %197 = ptrtoint ptr %rcv_xmt_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %rcv_xmt_reg.i.i, align 4
  %199 = ptrtoint ptr %xmt_prod.i.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %xmt_prod.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %198, i8 %200)
  %cmp.not33.i.i.i = icmp eq i8 %198, %200
  br i1 %cmp.not33.i.i.i, label %if.then58.i.i.dfx_xmt_flush.exit.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.then58.i.i.dfx_xmt_flush.exit.i.i_crit_edge:   ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_xmt_flush.exit.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.then58.i.i
  %descr_block_virt.i.i.i = getelementptr i8, ptr %dev_id, i32 2312
  %xmt_discards.i.i.i = getelementptr i8, ptr %dev_id, i32 5504
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %201 = phi i8 [ %198, %while.body.lr.ph.i.i.i ], [ %add.i.i42.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %conv.i.i.i = zext i8 %201 to i32
  %arrayidx.i.i.i = getelementptr %struct.DFX_board_tag, ptr %add.ptr.i, i32 0, i32 24, i32 %conv.i.i.i
  %202 = ptrtoint ptr %bus_dev to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %bus_dev, align 4
  %204 = ptrtoint ptr %descr_block_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %descr_block_virt.i.i.i, align 4
  %long_1.i.i.i = getelementptr %struct.PI_DESCR_BLOCK, ptr %205, i32 0, i32 1, i32 %conv.i.i.i, i32 1
  %206 = ptrtoint ptr %long_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %long_1.i.i.i, align 4
  %208 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx.i.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %209, i32 0, i32 6
  %210 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %len.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %203, i32 noundef %207, i32 noundef %211, i32 noundef 1, i32 noundef 0) #5
  %212 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void @consume_skb(ptr noundef %213) #5
  %214 = ptrtoint ptr %xmt_discards.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %xmt_discards.i.i.i, align 4
  %inc.i.i.i = add i32 %215, 1
  store i32 %inc.i.i.i, ptr %xmt_discards.i.i.i, align 4
  %216 = ptrtoint ptr %rcv_xmt_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %rcv_xmt_reg.i.i, align 4
  %add.i.i42.i = add i8 %217, 1
  store i8 %add.i.i42.i, ptr %rcv_xmt_reg.i.i, align 4
  %218 = ptrtoint ptr %xmt_prod.i.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %xmt_prod.i.i.i, align 2
  %cmp.not.i.i.i = icmp eq i8 %add.i.i42.i, %219
  br i1 %cmp.not.i.i.i, label %while.body.i.i.i.dfx_xmt_flush.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

while.body.i.i.i.dfx_xmt_flush.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_xmt_flush.exit.i.i

dfx_xmt_flush.exit.i.i:                           ; preds = %while.body.i.i.i.dfx_xmt_flush.exit.i.i_crit_edge, %if.then58.i.i.dfx_xmt_flush.exit.i.i_crit_edge
  %.lcssa.i.i.i = phi i8 [ %198, %if.then58.i.i.dfx_xmt_flush.exit.i.i_crit_edge ], [ %add.i.i42.i, %while.body.i.i.i.dfx_xmt_flush.exit.i.i_crit_edge ]
  %220 = ptrtoint ptr %cons_block_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %cons_block_virt.i.i, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile i32, ptr %221, align 4
  %and.i.i43.i = and i32 %223, -16711681
  %conv17.i.i.i = zext i8 %.lcssa.i.i.i to i32
  %shl.i.i.i = shl nuw nsw i32 %conv17.i.i.i, 16
  %or.i.i.i = or i32 %and.i.i43.i, %shl.i.i.i
  store volatile i32 %or.i.i.i, ptr %221, align 4
  %call60.i.i = tail call fastcc i32 @dfx_hw_port_ctrl_req(ptr noundef %add.ptr.i, i32 noundef 512, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %dfx_xmt_flush.exit.i.i, %if.end55.i.i.if.end61.i.i_crit_edge
  %and62.i.i = and i32 %storemerge.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i.i)
  %tobool63.not.i.i = icmp eq i32 %and62.i.i, 0
  br i1 %tobool63.not.i.i, label %if.end61.i.i.dfx_int_common.exit_crit_edge, label %if.then64.i.i

if.end61.i.i.dfx_int_common.exit_crit_edge:       ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_int_common.exit

if.then64.i.i:                                    ; preds = %if.end61.i.i
  %224 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i.i.i44.i = icmp eq i8 %225, 0
  br i1 %tobool.not.i.i.i44.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %226 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %227, i32 20
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !232
  %229 = tail call i32 @llvm.bswap.i32(i32 %228) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  br label %dfx_hw_adap_state_rd.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %230 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %base.i6.i96, align 4
  %add.i.i.i.i.i = add i32 %231, 20
  %and.i.i.i.i.i = and i32 %add.i.i.i.i.i, 1048575
  %add1.i.i.i.i.i = or i32 %and.i.i.i.i.i, -18874368
  %232 = inttoptr i32 %add1.i.i.i.i.i to ptr
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %232) #5, !srcloc !232
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %dfx_hw_adap_state_rd.exit.i.i

dfx_hw_adap_state_rd.exit.i.i:                    ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %storemerge.i.i.i.i = phi i32 [ %229, %if.then.i.i.i.i ], [ %234, %if.else.i.i.i.i ]
  %and.i158.i.i = lshr i32 %storemerge.i.i.i.i, 8
  %shr.i.i45.i = and i32 %and.i158.i.i, 7
  %235 = zext i32 %shr.i.i45.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i45.i, label %dfx_hw_adap_state_rd.exit.i.i.dfx_int_common.exit_crit_edge [
    i32 6, label %do.end70.i.i
    i32 4, label %if.then107.i.i
  ]

dfx_hw_adap_state_rd.exit.i.i.dfx_int_common.exit_crit_edge: ; preds = %dfx_hw_adap_state_rd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_int_common.exit

do.end70.i.i:                                     ; preds = %dfx_hw_adap_state_rd.exit.i.i
  %dev72.i.i = getelementptr i8, ptr %dev_id, i32 4860
  %236 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev72.i.i, align 4
  %call75.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %237) #8
  %238 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool.not.i.i58.i = icmp eq i8 %239, 0
  br i1 %tobool.not.i.i58.i, label %if.else.i.i66.i, label %if.then.i.i61.i

if.then.i.i61.i:                                  ; preds = %do.end70.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %240 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i.i60.i = getelementptr i8, ptr %241, i32 20
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i60.i) #5, !srcloc !232
  %243 = tail call i32 @llvm.bswap.i32(i32 %242) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  br label %dfx_port_read_long.exit.i68.i

if.else.i.i66.i:                                  ; preds = %do.end70.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %244 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %base.i6.i96, align 4
  %add.i.i.i63.i = add i32 %245, 20
  %and.i.i.i64.i = and i32 %add.i.i.i63.i, 1048575
  %add1.i.i.i65.i = or i32 %and.i.i.i64.i, -18874368
  %246 = inttoptr i32 %add1.i.i.i65.i to ptr
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %246) #5, !srcloc !232
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %dfx_port_read_long.exit.i68.i

dfx_port_read_long.exit.i68.i:                    ; preds = %if.else.i.i66.i, %if.then.i.i61.i
  %storemerge.i.i67.i = phi i32 [ %243, %if.then.i.i61.i ], [ %248, %if.else.i.i66.i ]
  %trunc.i.i = trunc i32 %storemerge.i.i67.i to i8
  %249 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %trunc.i.i, label %do.end75.i.i [
    i8 0, label %do.end.i71.i
    i8 1, label %do.end4.i.i
    i8 2, label %do.end13.i.i
    i8 3, label %do.end22.i.i
    i8 4, label %do.end31.i.i
    i8 5, label %do.end40.i74.i
    i8 6, label %do.end49.i76.i
    i8 7, label %do.end58.i.i
    i8 8, label %do.end67.i.i
  ]

do.end.i71.i:                                     ; preds = %dfx_port_read_long.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %250 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev72.i.i, align 4
  %call.i70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %251) #8
  br label %dfx_int_pr_halt_id.exit.i

do.end4.i.i:                                      ; preds = %dfx_port_read_long.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %252 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dev72.i.i, align 4
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %253) #8
  br label %dfx_int_pr_halt_id.exit.i

do.end13.i.i:                                     ; preds = %dfx_port_read_long.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %254 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev72.i.i, align 4
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %255) #8
  br label %dfx_int_pr_halt_id.exit.i

do.end22.i.i:                                     ; preds = %dfx_port_read_long.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %256 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev72.i.i, align 4
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %257) #8
  br label %dfx_int_pr_halt_id.exit.i

do.end31.i.i:                                     ; preds = %dfx_port_read_long.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %258 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev72.i.i, align 4
  %call36.i72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %259) #8
  br label %dfx_int_pr_halt_id.exit.i

do.end40.i74.i:                                   ; preds = %dfx_port_read_long.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %260 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev72.i.i, align 4
  %call45.i73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %261) #8
  br label %dfx_int_pr_halt_id.exit.i

do.end49.i76.i:                                   ; preds = %dfx_port_read_long.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %262 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev72.i.i, align 4
  %call54.i75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %263) #8
  br label %dfx_int_pr_halt_id.exit.i

do.end58.i.i:                                     ; preds = %dfx_port_read_long.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %264 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev72.i.i, align 4
  %call63.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %265) #8
  br label %dfx_int_pr_halt_id.exit.i

do.end67.i.i:                                     ; preds = %dfx_port_read_long.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %266 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev72.i.i, align 4
  %call72.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %267) #8
  br label %dfx_int_pr_halt_id.exit.i

do.end75.i.i:                                     ; preds = %dfx_port_read_long.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i77.i = and i32 %storemerge.i.i67.i, 255
  %268 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev72.i.i, align 4
  %call80.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %269, i32 noundef %and.i77.i) #8
  br label %dfx_int_pr_halt_id.exit.i

dfx_int_pr_halt_id.exit.i:                        ; preds = %do.end75.i.i, %do.end67.i.i, %do.end58.i.i, %do.end49.i76.i, %do.end40.i74.i, %do.end31.i.i, %do.end22.i.i, %do.end13.i.i, %do.end4.i.i, %do.end.i71.i
  %link_available76.i.i = getelementptr i8, ptr %dev_id, i32 2760
  %270 = ptrtoint ptr %link_available76.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %link_available76.i.i, align 4
  %reset_type77.i.i = getelementptr i8, ptr %dev_id, i32 2764
  %271 = ptrtoint ptr %reset_type77.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %reset_type77.i.i, align 4
  %272 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev72.i.i, align 4
  %call85.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %273) #8
  %call86.i.i = tail call fastcc i32 @dfx_adap_init(ptr noundef %add.ptr.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %cmp87.not.i.i = icmp eq i32 %call86.i.i, 0
  %274 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev72.i.i, align 4
  br i1 %cmp87.not.i.i, label %do.end100.i.i, label %do.end91.i.i

do.end91.i.i:                                     ; preds = %dfx_int_pr_halt_id.exit.i
  %call96.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %275) #8
  %276 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool.not.i47.i = icmp eq i8 %277, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i47.i, label %if.else.i54.i, label %if.then.i50.i

if.then.i50.i:                                    ; preds = %do.end91.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %278 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i49.i = getelementptr i8, ptr %279, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49.i, i32 0) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_int_common.exit

if.else.i54.i:                                    ; preds = %do.end91.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %280 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %base.i6.i96, align 4
  %add.i.i51.i = add i32 %281, 28
  %and.i.i52.i = and i32 %add.i.i51.i, 1048575
  %add1.i.i53.i = or i32 %and.i.i52.i, -18874368
  %282 = inttoptr i32 %add1.i.i53.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %282, i32 0) #5, !srcloc !229
  br label %dfx_int_common.exit

do.end100.i.i:                                    ; preds = %dfx_int_pr_halt_id.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call105.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %275) #8
  br label %dfx_int_common.exit

if.then107.i.i:                                   ; preds = %dfx_hw_adap_state_rd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %link_available108.i.i = getelementptr i8, ptr %dev_id, i32 2760
  %283 = ptrtoint ptr %link_available108.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 1, ptr %link_available108.i.i, align 4
  br label %dfx_int_common.exit

dfx_int_common.exit:                              ; preds = %if.then107.i.i, %do.end100.i.i, %if.else.i54.i, %if.then.i50.i, %dfx_hw_adap_state_rd.exit.i.i.dfx_int_common.exit_crit_edge, %if.end61.i.i.dfx_int_common.exit_crit_edge, %do.end49.i.i, %if.else.i156.i.i, %if.then.i152.i.i, %dfx_port_read_long.exit.i.dfx_int_common.exit_crit_edge
  %284 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool.not.i109 = icmp eq i8 %285, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i109, label %if.else.i116, label %if.then.i112

if.then.i112:                                     ; preds = %dfx_int_common.exit
  call void @__sanitizer_cov_trace_pc() #7
  %286 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i111 = getelementptr i8, ptr %287, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i111, i32 268435456) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit118

if.else.i116:                                     ; preds = %dfx_int_common.exit
  call void @__sanitizer_cov_trace_pc() #7
  %288 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %base.i6.i96, align 4
  %add.i.i113 = add i32 %289, 68
  %and.i.i114 = and i32 %add.i.i113, 1048575
  %add1.i.i115 = or i32 %and.i.i114, -18874368
  %290 = inttoptr i32 %add1.i.i115 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %290, i32 268435456) #5, !srcloc !229
  br label %dfx_port_write_long.exit118

dfx_port_write_long.exit118:                      ; preds = %if.else.i116, %if.then.i112
  %291 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool.not.i120 = icmp eq i8 %292, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i120, label %if.else.i127, label %if.then.i123

if.then.i123:                                     ; preds = %dfx_port_write_long.exit118
  call void @__sanitizer_cov_trace_pc() #7
  %293 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %base.i6.i96, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %294, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i122, i32 83886080) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit129

if.else.i127:                                     ; preds = %dfx_port_write_long.exit118
  call void @__sanitizer_cov_trace_pc() #7
  %295 = ptrtoint ptr %base.i6.i96 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %base.i6.i96, align 4
  %add.i.i124 = add i32 %296, 64
  %and.i.i125 = and i32 %add.i.i124, 1048575
  %add1.i.i126 = or i32 %and.i.i125, -18874368
  %297 = inttoptr i32 %add1.i.i126 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %297, i32 83886080) #5, !srcloc !229
  br label %dfx_port_write_long.exit129

dfx_port_write_long.exit129:                      ; preds = %if.else.i127, %if.then.i123
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br label %cleanup62

cleanup62:                                        ; preds = %dfx_port_write_long.exit129, %dfx_port_read_long.exit.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.5 = phi i32 [ 1, %dfx_port_write_long.exit129 ], [ 1, %entry.cleanup62_crit_edge ], [ 0, %dfx_port_read_long.exit.cleanup62_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfx_adap_init(ptr noundef %bp, i32 noundef %get_buffers) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 29
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %base.i6.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 27
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i6.i, align 4
  %add.i.i = add i32 %5, 28
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 0) #5, !srcloc !229
  br label %dfx_port_write_long.exit

dfx_port_write_long.exit:                         ; preds = %if.else.i, %if.then.i
  %reset_type = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 22
  %7 = ptrtoint ptr %reset_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset_type, align 4
  %call = tail call fastcc i32 @dfx_hw_dma_uninit(ptr noundef %bp, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %dfx_port_write_long.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 26
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %10) #8
  br label %return

if.end:                                           ; preds = %dfx_port_write_long.exit
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i203 = icmp eq i8 %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i203, label %if.else.i210, label %if.then.i206

if.then.i206:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i205, i32 -16777216) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit211

if.else.i210:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i6.i, align 4
  %add.i.i207 = add i32 %16, 24
  %and.i.i208 = and i32 %add.i.i207, 1048575
  %add1.i.i209 = or i32 %and.i.i208, -18874368
  %17 = inttoptr i32 %add1.i.i209 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 -16777216) #5, !srcloc !229
  br label %dfx_port_write_long.exit211

dfx_port_write_long.exit211:                      ; preds = %if.else.i210, %if.then.i206
  %cmd_req_reg = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 12
  %18 = ptrtoint ptr %cmd_req_reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cmd_req_reg, align 4
  %cmd_rsp_reg = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 13
  %19 = ptrtoint ptr %cmd_rsp_reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cmd_rsp_reg, align 4
  %rcv_xmt_reg = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 14
  %20 = ptrtoint ptr %rcv_xmt_reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rcv_xmt_reg, align 4
  %cons_block_virt = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 10
  %21 = ptrtoint ptr %cons_block_virt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cons_block_virt, align 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 40)
  %burst_size = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 32
  %24 = ptrtoint ptr %burst_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %burst_size, align 4
  %call2 = tail call fastcc i32 @dfx_hw_port_ctrl_req(ptr noundef %bp, i32 noundef 1, i32 noundef 2, i32 noundef %25, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end12, label %do.end6

do.end6:                                          ; preds = %dfx_port_write_long.exit211
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 26
  %26 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev8, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %27) #8
  br label %return

if.end12:                                         ; preds = %dfx_port_write_long.exit211
  %cons_block_phys = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 11
  %28 = ptrtoint ptr %cons_block_phys to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cons_block_phys, align 4
  %call13 = tail call fastcc i32 @dfx_hw_port_ctrl_req(ptr noundef %bp, i32 noundef 64, i32 noundef %29, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end23, label %do.end17

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev19 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 26
  %30 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev19, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %31) #8
  br label %return

if.end23:                                         ; preds = %if.end12
  %descr_block_phys = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 3
  %32 = ptrtoint ptr %descr_block_phys to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %descr_block_phys, align 4
  %or = or i32 %33, 3
  %call24 = tail call fastcc i32 @dfx_hw_port_ctrl_req(ptr noundef %bp, i32 noundef 256, i32 noundef %or, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end34, label %do.end28

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %dev30 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 26
  %34 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev30, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %35) #8
  br label %return

if.end34:                                         ; preds = %if.end23
  %cmd_req_virt = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 4
  %36 = ptrtoint ptr %cmd_req_virt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmd_req_virt, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %37, align 4
  %39 = load ptr, ptr %cmd_req_virt, align 4
  %item = getelementptr inbounds %struct.PI_CMD_CHARS_SET_REQ, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 32, ptr %item, align 4
  %41 = load ptr, ptr %cmd_req_virt, align 4
  %value = getelementptr inbounds %struct.PI_CMD_CHARS_SET_REQ, ptr %41, i32 0, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %value, align 4
  %43 = load ptr, ptr %cmd_req_virt, align 4
  %item_index = getelementptr inbounds %struct.PI_CMD_CHARS_SET_REQ, ptr %43, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %item_index to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %item_index, align 4
  %45 = load ptr, ptr %cmd_req_virt, align 4
  %arrayidx44 = getelementptr %struct.PI_CMD_CHARS_SET_REQ, ptr %45, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx44, align 4
  %call46 = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end56, label %do.end50

do.end50:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %dev52 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 26
  %47 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev52, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %48) #8
  br label %return

if.end56:                                         ; preds = %if.end34
  %49 = ptrtoint ptr %cmd_req_virt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmd_req_virt, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 14, ptr %50, align 4
  %52 = load ptr, ptr %cmd_req_virt, align 4
  %item59 = getelementptr inbounds %struct.PI_CMD_SNMP_SET_REQ, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %item59 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 44, ptr %item59, align 4
  %full_duplex_enb = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 30
  %54 = ptrtoint ptr %full_duplex_enb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %full_duplex_enb, align 4
  %56 = load ptr, ptr %cmd_req_virt, align 4
  %value65 = getelementptr inbounds %struct.PI_CMD_SNMP_SET_REQ, ptr %56, i32 0, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %value65 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %55, ptr %value65, align 4
  %58 = load ptr, ptr %cmd_req_virt, align 4
  %item_index69 = getelementptr inbounds %struct.PI_CMD_SNMP_SET_REQ, ptr %58, i32 0, i32 1, i32 0, i32 2
  %59 = ptrtoint ptr %item_index69 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %item_index69, align 4
  %60 = load ptr, ptr %cmd_req_virt, align 4
  %arrayidx72 = getelementptr %struct.PI_CMD_SNMP_SET_REQ, ptr %60, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 41, ptr %arrayidx72, align 4
  %req_ttrt = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 31
  %62 = ptrtoint ptr %req_ttrt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %req_ttrt, align 4
  %64 = load ptr, ptr %cmd_req_virt, align 4
  %value77 = getelementptr %struct.PI_CMD_SNMP_SET_REQ, ptr %64, i32 0, i32 1, i32 1, i32 1
  %65 = ptrtoint ptr %value77 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %63, ptr %value77, align 4
  %66 = load ptr, ptr %cmd_req_virt, align 4
  %item_index81 = getelementptr %struct.PI_CMD_SNMP_SET_REQ, ptr %66, i32 0, i32 1, i32 1, i32 2
  %67 = ptrtoint ptr %item_index81 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %item_index81, align 4
  %68 = load ptr, ptr %cmd_req_virt, align 4
  %arrayidx84 = getelementptr %struct.PI_CMD_SNMP_SET_REQ, ptr %68, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %arrayidx84, align 4
  %call86 = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87.not = icmp eq i32 %call86, 0
  br i1 %cmp87.not, label %if.end96, label %do.end90

do.end90:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %dev92 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 26
  %70 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev92, align 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %71) #8
  br label %return

if.end96:                                         ; preds = %if.end56
  %72 = ptrtoint ptr %cmd_req_virt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cmd_req_virt, align 4
  %74 = call ptr @memset(ptr %73, i32 0, i32 512)
  %75 = load ptr, ptr %cmd_req_virt, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 7, ptr %75, align 4
  %77 = load ptr, ptr %cmd_req_virt, align 4
  %entry3.i = getelementptr inbounds %struct.PI_CMD_ADDR_FILTER_SET_REQ, ptr %77, i32 0, i32 1
  %uc_count.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 16
  %78 = ptrtoint ptr %uc_count.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %uc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp41.i = icmp sgt i32 %79, 0
  br i1 %cmp41.i, label %if.end96.for.body.i_crit_edge, label %if.end96.for.cond6.preheader.i_crit_edge

if.end96.for.cond6.preheader.i_crit_edge:         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6.preheader.i

if.end96.for.body.i_crit_edge:                    ; preds = %if.end96
  br label %for.body.i

for.cond6.preheader.i:                            ; preds = %for.inc.i.for.cond6.preheader.i_crit_edge, %if.end96.for.cond6.preheader.i_crit_edge
  %p_addr.0.lcssa.i = phi ptr [ %entry3.i, %if.end96.for.cond6.preheader.i_crit_edge ], [ %p_addr.1.i, %for.inc.i.for.cond6.preheader.i_crit_edge ]
  %mc_count.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 18
  %80 = ptrtoint ptr %mc_count.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp745.i = icmp sgt i32 %81, 0
  br i1 %cmp745.i, label %for.cond6.preheader.i.for.body8.i_crit_edge, label %for.cond6.preheader.i.dfx_ctl_update_cam.exit_crit_edge

for.cond6.preheader.i.dfx_ctl_update_cam.exit_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_ctl_update_cam.exit

for.cond6.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body8.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end96.for.body.i_crit_edge
  %p_addr.044.i = phi ptr [ %p_addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %entry3.i, %if.end96.for.body.i_crit_edge ]
  %i.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end96.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.042.i)
  %cmp4.i = icmp ult i32 %i.042.i, 62
  br i1 %cmp4.i, label %if.then.i212, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i212:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = mul nuw nsw i32 %i.042.i, 6
  %arrayidx5.i = getelementptr %struct.DFX_board_tag, ptr %bp, i32 0, i32 15, i32 %mul.i
  %82 = call ptr @memcpy(ptr %p_addr.044.i, ptr %arrayidx5.i, i32 6)
  %incdec.ptr.i = getelementptr %struct.PI_LAN_ADDR, ptr %p_addr.044.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i212, %for.body.i.for.inc.i_crit_edge
  %p_addr.1.i = phi ptr [ %incdec.ptr.i, %if.then.i212 ], [ %p_addr.044.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %83 = ptrtoint ptr %uc_count.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %uc_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %84
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond6.preheader.i_crit_edge

for.inc.i.for.cond6.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body8.i:                                      ; preds = %for.inc16.i.for.body8.i_crit_edge, %for.cond6.preheader.i.for.body8.i_crit_edge
  %p_addr.248.i = phi ptr [ %p_addr.3.i, %for.inc16.i.for.body8.i_crit_edge ], [ %p_addr.0.lcssa.i, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %i.146.i = phi i32 [ %inc17.i, %for.inc16.i.for.body8.i_crit_edge ], [ 0, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %85 = ptrtoint ptr %uc_count.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %uc_count.i, align 4
  %add.i = add i32 %86, %i.146.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %add.i)
  %cmp10.i = icmp ult i32 %add.i, 62
  br i1 %cmp10.i, label %if.then11.i, label %for.body8.i.for.inc16.i_crit_edge

for.body8.i.for.inc16.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc16.i

if.then11.i:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul12.i = mul i32 %i.146.i, 6
  %arrayidx13.i = getelementptr %struct.DFX_board_tag, ptr %bp, i32 0, i32 17, i32 %mul12.i
  %87 = call ptr @memcpy(ptr %p_addr.248.i, ptr %arrayidx13.i, i32 6)
  %incdec.ptr14.i = getelementptr %struct.PI_LAN_ADDR, ptr %p_addr.248.i, i32 1
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %if.then11.i, %for.body8.i.for.inc16.i_crit_edge
  %p_addr.3.i = phi ptr [ %incdec.ptr14.i, %if.then11.i ], [ %p_addr.248.i, %for.body8.i.for.inc16.i_crit_edge ]
  %inc17.i = add nuw nsw i32 %i.146.i, 1
  %88 = ptrtoint ptr %mc_count.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mc_count.i, align 4
  %cmp7.i = icmp slt i32 %inc17.i, %89
  br i1 %cmp7.i, label %for.inc16.i.for.body8.i_crit_edge, label %for.inc16.i.dfx_ctl_update_cam.exit_crit_edge

for.inc16.i.dfx_ctl_update_cam.exit_crit_edge:    ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dfx_ctl_update_cam.exit

for.inc16.i.for.body8.i_crit_edge:                ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i

dfx_ctl_update_cam.exit:                          ; preds = %for.inc16.i.dfx_ctl_update_cam.exit_crit_edge, %for.cond6.preheader.i.dfx_ctl_update_cam.exit_crit_edge
  %call.i = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %bp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp19.not.i.not, label %if.end107, label %do.end101

do.end101:                                        ; preds = %dfx_ctl_update_cam.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev103 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 26
  %90 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev103, align 4
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %91) #8
  br label %return

if.end107:                                        ; preds = %dfx_ctl_update_cam.exit
  %92 = ptrtoint ptr %cmd_req_virt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cmd_req_virt, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %93, align 4
  %95 = load ptr, ptr %cmd_req_virt, align 4
  %item.i = getelementptr inbounds %struct.PI_CMD_FILTERS_SET_REQ, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %item.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 9, ptr %item.i, align 4
  %97 = load ptr, ptr %cmd_req_virt, align 4
  %value.i = getelementptr inbounds %struct.PI_CMD_FILTERS_SET_REQ, ptr %97, i32 0, i32 1, i32 0, i32 1
  %98 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %value.i, align 4
  %99 = load ptr, ptr %cmd_req_virt, align 4
  %arrayidx7.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %99, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 7, ptr %arrayidx7.i, align 4
  %ind_group_prom.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 19
  %101 = ptrtoint ptr %ind_group_prom.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ind_group_prom.i, align 4
  %103 = load ptr, ptr %cmd_req_virt, align 4
  %value13.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %103, i32 0, i32 1, i32 1, i32 1
  %104 = ptrtoint ptr %value13.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %102, ptr %value13.i, align 4
  %105 = load ptr, ptr %cmd_req_virt, align 4
  %arrayidx16.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %105, i32 0, i32 1, i32 2
  %106 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 8, ptr %arrayidx16.i, align 4
  %group_prom.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 20
  %107 = ptrtoint ptr %group_prom.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %group_prom.i, align 4
  %109 = load ptr, ptr %cmd_req_virt, align 4
  %value22.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %109, i32 0, i32 1, i32 2, i32 1
  %110 = ptrtoint ptr %value22.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %108, ptr %value22.i, align 4
  %111 = load ptr, ptr %cmd_req_virt, align 4
  %arrayidx25.i = getelementptr %struct.PI_CMD_FILTERS_SET_REQ, ptr %111, i32 0, i32 1, i32 3
  %112 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %arrayidx25.i, align 4
  %call.i214 = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %bp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %cmp.not.i.not = icmp eq i32 %call.i214, 0
  br i1 %cmp.not.i.not, label %if.end118, label %do.end112

do.end112:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  %dev114 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 26
  %113 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev114, align 4
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %114) #8
  br label %return

if.end118:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %get_buffers)
  %tobool.not = icmp eq i32 %get_buffers, 0
  br i1 %tobool.not, label %if.end118.if.end24.i_crit_edge, label %if.then119

if.end118.if.end24.i_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then119:                                       ; preds = %if.end118
  %rcv_bufs_to_post.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 33
  %115 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rcv_bufs_to_post.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp33.i = icmp sgt i32 %116, 0
  br i1 %cmp33.i, label %for.cond1.preheader.lr.ph.i, label %if.then119.if.end24.i_crit_edge

if.then119.if.end24.i_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

for.cond1.preheader.lr.ph.i:                      ; preds = %if.then119
  %bus_dev.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 28
  %descr_block_virt.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 2
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc12.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc.i219, %for.inc12.i.for.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.034.i)
  %cmp230.i = icmp ult i32 %i.034.i, 256
  br i1 %cmp230.i, label %for.cond1.preheader.i.for.body3.i_crit_edge, label %for.cond1.preheader.i.for.inc12.i_crit_edge

for.cond1.preheader.i.for.inc12.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %add32.i = phi i32 [ %add.i218, %if.end.i.for.body3.i_crit_edge ], [ %i.034.i, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %j.031.i = phi i32 [ %add11.i, %if.end.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.DFX_board_tag, ptr %bp, i32 0, i32 23, i32 %add32.i
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i216 = icmp eq ptr %118, null
  br i1 %tobool.not.i216, label %for.body3.i.if.end.i_crit_edge, label %if.then.i217

for.body3.i.if.end.i_crit_edge:                   ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i217:                                     ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %bus_dev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bus_dev.i, align 4
  %121 = ptrtoint ptr %descr_block_virt.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %descr_block_virt.i, align 4
  %long_1.i = getelementptr [256 x %struct.PI_RCV_DESCR], ptr %122, i32 0, i32 %add32.i, i32 1
  %123 = ptrtoint ptr %long_1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %long_1.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %120, i32 noundef %124, i32 noundef 4608, i32 noundef 2, i32 noundef 0) #5
  tail call void @consume_skb(ptr noundef nonnull %118) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i217, %for.body3.i.if.end.i_crit_edge
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %arrayidx.i, align 4
  %126 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rcv_bufs_to_post.i, align 4
  %add11.i = add i32 %127, %j.031.i
  %add.i218 = add i32 %add11.i, %i.034.i
  %cmp2.i = icmp slt i32 %add.i218, 256
  br i1 %cmp2.i, label %if.end.i.for.body3.i_crit_edge, label %if.end.i.for.inc12.i_crit_edge

if.end.i.for.inc12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i

if.end.i.for.body3.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

for.inc12.i:                                      ; preds = %if.end.i.for.inc12.i_crit_edge, %for.cond1.preheader.i.for.inc12.i_crit_edge
  %inc.i219 = add nuw nsw i32 %i.034.i, 1
  %128 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rcv_bufs_to_post.i, align 4
  %cmp.i220 = icmp slt i32 %inc.i219, %129
  br i1 %cmp.i220, label %for.inc12.i.for.cond1.preheader.i_crit_edge, label %for.cond.preheader.i

for.inc12.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i

for.cond.preheader.i:                             ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp73.i = icmp sgt i32 %129, 0
  br i1 %cmp73.i, label %for.cond1.preheader.lr.ph.i225, label %for.cond.preheader.i.if.end24.i_crit_edge

for.cond.preheader.i.if.end24.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

for.cond1.preheader.lr.ph.i225:                   ; preds = %for.cond.preheader.i
  %dev.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 26
  %bus_dev.i223 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 28
  %descr_block_virt.i224 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 2
  br label %for.cond1.preheader.i226

for.cond1.preheader.i226:                         ; preds = %for.inc22.i.for.cond1.preheader.i226_crit_edge, %for.cond1.preheader.lr.ph.i225
  %i.074.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i225 ], [ %inc.i237, %for.inc22.i.for.cond1.preheader.i226_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.074.i)
  %cmp270.i = icmp ult i32 %i.074.i, 256
  br i1 %cmp270.i, label %for.cond1.preheader.i226.for.body3.i228_crit_edge, label %for.cond1.preheader.i226.for.inc22.i_crit_edge

for.cond1.preheader.i226.for.inc22.i_crit_edge:   ; preds = %for.cond1.preheader.i226
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22.i

for.cond1.preheader.i226.for.body3.i228_crit_edge: ; preds = %for.cond1.preheader.i226
  br label %for.body3.i228

for.body3.i228:                                   ; preds = %if.end11.i.for.body3.i228_crit_edge, %for.cond1.preheader.i226.for.body3.i228_crit_edge
  %add72.i = phi i32 [ %add.i235, %if.end11.i.for.body3.i228_crit_edge ], [ %i.074.i, %for.cond1.preheader.i226.for.body3.i228_crit_edge ]
  %j.071.i = phi i32 [ %add21.i, %if.end11.i.for.body3.i228_crit_edge ], [ 0, %for.cond1.preheader.i226.for.body3.i228_crit_edge ]
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 4
  %call.i227 = tail call ptr @__netdev_alloc_skb(ptr noundef %131, i32 noundef 4736, i32 noundef 3072) #5
  %tobool4.not.i = icmp eq ptr %call.i227, null
  br i1 %tobool4.not.i, label %for.body3.i228.if.then132_crit_edge, label %if.end.i231

for.body3.i228.if.then132_crit_edge:              ; preds = %for.body3.i228
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then132

if.end.i231:                                      ; preds = %for.body3.i228
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i227, i32 0, i32 19
  %132 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i.i, align 4
  %134 = ptrtoint ptr %133 to i32
  %add.i.i229 = add i32 %134, 127
  %and.i.i230 = and i32 %add.i.i229, -128
  %sub2.i.i = sub i32 %and.i.i230, %134
  %add.ptr.i.i.i = getelementptr i8, ptr %133, i32 %sub2.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i227, i32 0, i32 16
  %135 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %136, i32 %sub2.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %137 = ptrtoint ptr %bus_dev.i223 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bus_dev.i223, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #5
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i231
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !235

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %138) #5
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %140, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %138, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %142, %if.end.i.i.i ], [ %140, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #5
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %143 = ptrtoint ptr %bus_dev.i223 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bus_dev.i223, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %144, i32 noundef -1) #5
  br label %if.then10.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i231
  tail call void @debug_dma_map_single(ptr noundef %138, ptr noundef %add.ptr.i.i.i, i32 noundef 4608) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %145 = load ptr, ptr @mem_map, align 4
  %146 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i.i = add i32 %146, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i232 = getelementptr %struct.page, ptr %145, i32 %shr.i.i
  %and.i54.i = and i32 %146, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %138, ptr noundef %add.ptr.i.i232, i32 noundef %and.i54.i, i32 noundef 4608, i32 noundef 2, i32 noundef 0) #5
  %147 = ptrtoint ptr %bus_dev.i223 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bus_dev.i223, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %148, i32 noundef %call41.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then10.i_crit_edge, label %if.end11.i

dma_map_single_attrs.exit.i.if.then10.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then10.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then10.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @consume_skb(ptr noundef nonnull %call.i227) #5
  br label %if.then132

if.end11.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %149 = ptrtoint ptr %descr_block_virt.i224 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %descr_block_virt.i224, align 4
  %arrayidx.i233 = getelementptr [256 x %struct.PI_RCV_DESCR], ptr %150, i32 0, i32 %add72.i
  %151 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1845493760, ptr %arrayidx.i233, align 4
  %152 = load ptr, ptr %descr_block_virt.i224, align 4
  %long_1.i234 = getelementptr [256 x %struct.PI_RCV_DESCR], ptr %152, i32 0, i32 %add72.i, i32 1
  %153 = ptrtoint ptr %long_1.i234 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %call41.i.i, ptr %long_1.i234, align 4
  %arrayidx18.i = getelementptr %struct.DFX_board_tag, ptr %bp, i32 0, i32 23, i32 %add72.i
  %154 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call.i227, ptr %arrayidx18.i, align 4
  %155 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rcv_bufs_to_post.i, align 4
  %add21.i = add i32 %156, %j.071.i
  %add.i235 = add i32 %add21.i, %i.074.i
  %cmp2.i236 = icmp slt i32 %add.i235, 256
  br i1 %cmp2.i236, label %if.end11.i.for.body3.i228_crit_edge, label %if.end11.i.for.inc22.i_crit_edge

if.end11.i.for.inc22.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22.i

if.end11.i.for.body3.i228_crit_edge:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i228

for.inc22.i:                                      ; preds = %if.end11.i.for.inc22.i_crit_edge, %for.cond1.preheader.i226.for.inc22.i_crit_edge
  %inc.i237 = add nuw nsw i32 %i.074.i, 1
  %157 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rcv_bufs_to_post.i, align 4
  %cmp.i238 = icmp slt i32 %inc.i237, %158
  br i1 %cmp.i238, label %for.inc22.i.for.cond1.preheader.i226_crit_edge, label %for.inc22.i.if.end24.i_crit_edge

for.inc22.i.if.end24.i_crit_edge:                 ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

for.inc22.i.for.cond1.preheader.i226_crit_edge:   ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i226

if.end24.i:                                       ; preds = %for.inc22.i.if.end24.i_crit_edge, %for.cond.preheader.i.if.end24.i_crit_edge, %if.then119.if.end24.i_crit_edge, %if.end118.if.end24.i_crit_edge
  %rcv_bufs_to_post25.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 33
  %159 = ptrtoint ptr %rcv_bufs_to_post25.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rcv_bufs_to_post25.i, align 4
  %conv.i = trunc i32 %160 to i8
  %rcv_prod.i = getelementptr inbounds %struct.anon.124, ptr %rcv_xmt_reg, i32 0, i32 3
  %161 = ptrtoint ptr %rcv_prod.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv.i, ptr %rcv_prod.i, align 1
  %162 = ptrtoint ptr %rcv_xmt_reg to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rcv_xmt_reg, align 4
  %164 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i.i = icmp eq i8 %165, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %166 = tail call i32 @llvm.bswap.i32(i32 %163) #5
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i56.i

if.then.i56.i:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %167 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i55.i = getelementptr i8, ptr %168, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55.i, i32 %166) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %if.end134

if.else.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %169 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %base.i6.i, align 4
  %add.i.i.i = add i32 %170, 36
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %171 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %171, i32 %166) #5, !srcloc !229
  br label %if.end134

if.then132:                                       ; preds = %if.then10.i, %for.body3.i228.if.then132_crit_edge
  %172 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i, align 4
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %173) #8
  %174 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %rcv_bufs_to_post.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp33.i240 = icmp sgt i32 %175, 0
  br i1 %cmp33.i240, label %if.then132.for.cond1.preheader.i246_crit_edge, label %if.then132.return_crit_edge

if.then132.return_crit_edge:                      ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then132.for.cond1.preheader.i246_crit_edge:    ; preds = %if.then132
  br label %for.cond1.preheader.i246

for.cond1.preheader.i246:                         ; preds = %for.inc12.i260.for.cond1.preheader.i246_crit_edge, %if.then132.for.cond1.preheader.i246_crit_edge
  %i.034.i244 = phi i32 [ %inc.i258, %for.inc12.i260.for.cond1.preheader.i246_crit_edge ], [ 0, %if.then132.for.cond1.preheader.i246_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.034.i244)
  %cmp230.i245 = icmp ult i32 %i.034.i244, 256
  br i1 %cmp230.i245, label %for.cond1.preheader.i246.for.body3.i251_crit_edge, label %for.cond1.preheader.i246.for.inc12.i260_crit_edge

for.cond1.preheader.i246.for.inc12.i260_crit_edge: ; preds = %for.cond1.preheader.i246
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i260

for.cond1.preheader.i246.for.body3.i251_crit_edge: ; preds = %for.cond1.preheader.i246
  br label %for.body3.i251

for.body3.i251:                                   ; preds = %if.end.i257.for.body3.i251_crit_edge, %for.cond1.preheader.i246.for.body3.i251_crit_edge
  %add32.i247 = phi i32 [ %add.i255, %if.end.i257.for.body3.i251_crit_edge ], [ %i.034.i244, %for.cond1.preheader.i246.for.body3.i251_crit_edge ]
  %j.031.i248 = phi i32 [ %add11.i254, %if.end.i257.for.body3.i251_crit_edge ], [ 0, %for.cond1.preheader.i246.for.body3.i251_crit_edge ]
  %arrayidx.i249 = getelementptr %struct.DFX_board_tag, ptr %bp, i32 0, i32 23, i32 %add32.i247
  %176 = ptrtoint ptr %arrayidx.i249 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx.i249, align 4
  %tobool.not.i250 = icmp eq ptr %177, null
  br i1 %tobool.not.i250, label %for.body3.i251.if.end.i257_crit_edge, label %if.then.i253

for.body3.i251.if.end.i257_crit_edge:             ; preds = %for.body3.i251
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i257

if.then.i253:                                     ; preds = %for.body3.i251
  call void @__sanitizer_cov_trace_pc() #7
  %178 = ptrtoint ptr %bus_dev.i223 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bus_dev.i223, align 4
  %180 = ptrtoint ptr %descr_block_virt.i224 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %descr_block_virt.i224, align 4
  %long_1.i252 = getelementptr [256 x %struct.PI_RCV_DESCR], ptr %181, i32 0, i32 %add32.i247, i32 1
  %182 = ptrtoint ptr %long_1.i252 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %long_1.i252, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %179, i32 noundef %183, i32 noundef 4608, i32 noundef 2, i32 noundef 0) #5
  tail call void @consume_skb(ptr noundef nonnull %177) #5
  br label %if.end.i257

if.end.i257:                                      ; preds = %if.then.i253, %for.body3.i251.if.end.i257_crit_edge
  %184 = ptrtoint ptr %arrayidx.i249 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %arrayidx.i249, align 4
  %185 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rcv_bufs_to_post.i, align 4
  %add11.i254 = add i32 %186, %j.031.i248
  %add.i255 = add i32 %add11.i254, %i.034.i244
  %cmp2.i256 = icmp slt i32 %add.i255, 256
  br i1 %cmp2.i256, label %if.end.i257.for.body3.i251_crit_edge, label %if.end.i257.for.inc12.i260_crit_edge

if.end.i257.for.inc12.i260_crit_edge:             ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i260

if.end.i257.for.body3.i251_crit_edge:             ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i251

for.inc12.i260:                                   ; preds = %if.end.i257.for.inc12.i260_crit_edge, %for.cond1.preheader.i246.for.inc12.i260_crit_edge
  %inc.i258 = add nuw nsw i32 %i.034.i244, 1
  %187 = ptrtoint ptr %rcv_bufs_to_post.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %rcv_bufs_to_post.i, align 4
  %cmp.i259 = icmp slt i32 %inc.i258, %188
  br i1 %cmp.i259, label %for.inc12.i260.for.cond1.preheader.i246_crit_edge, label %for.inc12.i260.return_crit_edge

for.inc12.i260.return_crit_edge:                  ; preds = %for.inc12.i260
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

for.inc12.i260.for.cond1.preheader.i246_crit_edge: ; preds = %for.inc12.i260
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i246

if.end134:                                        ; preds = %if.else.i.i, %if.then.i56.i
  %189 = ptrtoint ptr %cmd_req_virt to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cmd_req_virt, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %190, align 4
  %call136 = tail call fastcc i32 @dfx_hw_dma_cmd_req(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137.not = icmp eq i32 %call136, 0
  br i1 %cmp137.not, label %if.end149, label %do.end140

do.end140:                                        ; preds = %if.end134
  %dev142 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 26
  %192 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev142, align 4
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %193) #8
  br i1 %tobool.not, label %do.end140.return_crit_edge, label %if.then147

do.end140.return_crit_edge:                       ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then147:                                       ; preds = %do.end140
  %194 = ptrtoint ptr %rcv_bufs_to_post25.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rcv_bufs_to_post25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp33.i263 = icmp sgt i32 %195, 0
  br i1 %cmp33.i263, label %for.cond1.preheader.lr.ph.i266, label %if.then147.return_crit_edge

if.then147.return_crit_edge:                      ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

for.cond1.preheader.lr.ph.i266:                   ; preds = %if.then147
  %bus_dev.i264 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 28
  %descr_block_virt.i265 = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 2
  br label %for.cond1.preheader.i269

for.cond1.preheader.i269:                         ; preds = %for.inc12.i283.for.cond1.preheader.i269_crit_edge, %for.cond1.preheader.lr.ph.i266
  %i.034.i267 = phi i32 [ 0, %for.cond1.preheader.lr.ph.i266 ], [ %inc.i281, %for.inc12.i283.for.cond1.preheader.i269_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.034.i267)
  %cmp230.i268 = icmp ult i32 %i.034.i267, 256
  br i1 %cmp230.i268, label %for.cond1.preheader.i269.for.body3.i274_crit_edge, label %for.cond1.preheader.i269.for.inc12.i283_crit_edge

for.cond1.preheader.i269.for.inc12.i283_crit_edge: ; preds = %for.cond1.preheader.i269
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i283

for.cond1.preheader.i269.for.body3.i274_crit_edge: ; preds = %for.cond1.preheader.i269
  br label %for.body3.i274

for.body3.i274:                                   ; preds = %if.end.i280.for.body3.i274_crit_edge, %for.cond1.preheader.i269.for.body3.i274_crit_edge
  %add32.i270 = phi i32 [ %add.i278, %if.end.i280.for.body3.i274_crit_edge ], [ %i.034.i267, %for.cond1.preheader.i269.for.body3.i274_crit_edge ]
  %j.031.i271 = phi i32 [ %add11.i277, %if.end.i280.for.body3.i274_crit_edge ], [ 0, %for.cond1.preheader.i269.for.body3.i274_crit_edge ]
  %arrayidx.i272 = getelementptr %struct.DFX_board_tag, ptr %bp, i32 0, i32 23, i32 %add32.i270
  %196 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx.i272, align 4
  %tobool.not.i273 = icmp eq ptr %197, null
  br i1 %tobool.not.i273, label %for.body3.i274.if.end.i280_crit_edge, label %if.then.i276

for.body3.i274.if.end.i280_crit_edge:             ; preds = %for.body3.i274
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i280

if.then.i276:                                     ; preds = %for.body3.i274
  call void @__sanitizer_cov_trace_pc() #7
  %198 = ptrtoint ptr %bus_dev.i264 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %bus_dev.i264, align 4
  %200 = ptrtoint ptr %descr_block_virt.i265 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %descr_block_virt.i265, align 4
  %long_1.i275 = getelementptr [256 x %struct.PI_RCV_DESCR], ptr %201, i32 0, i32 %add32.i270, i32 1
  %202 = ptrtoint ptr %long_1.i275 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %long_1.i275, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %199, i32 noundef %203, i32 noundef 4608, i32 noundef 2, i32 noundef 0) #5
  tail call void @consume_skb(ptr noundef nonnull %197) #5
  br label %if.end.i280

if.end.i280:                                      ; preds = %if.then.i276, %for.body3.i274.if.end.i280_crit_edge
  %204 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %arrayidx.i272, align 4
  %205 = ptrtoint ptr %rcv_bufs_to_post25.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %rcv_bufs_to_post25.i, align 4
  %add11.i277 = add i32 %206, %j.031.i271
  %add.i278 = add i32 %add11.i277, %i.034.i267
  %cmp2.i279 = icmp slt i32 %add.i278, 256
  br i1 %cmp2.i279, label %if.end.i280.for.body3.i274_crit_edge, label %if.end.i280.for.inc12.i283_crit_edge

if.end.i280.for.inc12.i283_crit_edge:             ; preds = %if.end.i280
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i283

if.end.i280.for.body3.i274_crit_edge:             ; preds = %if.end.i280
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i274

for.inc12.i283:                                   ; preds = %if.end.i280.for.inc12.i283_crit_edge, %for.cond1.preheader.i269.for.inc12.i283_crit_edge
  %inc.i281 = add nuw nsw i32 %i.034.i267, 1
  %207 = ptrtoint ptr %rcv_bufs_to_post25.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %rcv_bufs_to_post25.i, align 4
  %cmp.i282 = icmp slt i32 %inc.i281, %208
  br i1 %cmp.i282, label %for.inc12.i283.for.cond1.preheader.i269_crit_edge, label %for.inc12.i283.return_crit_edge

for.inc12.i283.return_crit_edge:                  ; preds = %for.inc12.i283
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

for.inc12.i283.for.cond1.preheader.i269_crit_edge: ; preds = %for.inc12.i283
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i269

if.end149:                                        ; preds = %if.end134
  %209 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool.not.i286 = icmp eq i8 %210, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i286, label %if.else.i293, label %if.then.i289

if.then.i289:                                     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  %211 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i288 = getelementptr i8, ptr %212, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i288, i32 520093888) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %return

if.else.i293:                                     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  %213 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %base.i6.i, align 4
  %add.i.i290 = add i32 %214, 28
  %and.i.i291 = and i32 %add.i.i290, 1048575
  %add1.i.i292 = or i32 %and.i.i291, -18874368
  %215 = inttoptr i32 %add1.i.i292 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %215, i32 520093888) #5, !srcloc !229
  br label %return

return:                                           ; preds = %if.else.i293, %if.then.i289, %for.inc12.i283.return_crit_edge, %if.then147.return_crit_edge, %do.end140.return_crit_edge, %for.inc12.i260.return_crit_edge, %if.then132.return_crit_edge, %do.end112, %do.end101, %do.end90, %do.end50, %do.end28, %do.end17, %do.end6, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.end6 ], [ 1, %do.end17 ], [ 1, %do.end28 ], [ 1, %do.end50 ], [ 1, %do.end90 ], [ 1, %do.end101 ], [ 1, %do.end112 ], [ 1, %do.end140.return_crit_edge ], [ 1, %if.then132.return_crit_edge ], [ 1, %if.then147.return_crit_edge ], [ 0, %if.then.i289 ], [ 0, %if.else.i293 ], [ 1, %for.inc12.i283.return_crit_edge ], [ 1, %for.inc12.i260.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fddi_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfx_hw_port_ctrl_req(ptr nocapture noundef readonly %bp, i32 noundef %command, i32 noundef %data_a, i32 noundef %data_b, ptr noundef writeonly %host_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %command, 32768
  %mmio.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 29
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %data_a) #5
  %base.i6.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 27
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i6.i, align 4
  %add.i.i = add i32 %6, 12
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %2) #5, !srcloc !229
  br label %dfx_port_write_long.exit

dfx_port_write_long.exit:                         ; preds = %if.else.i, %if.then.i
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i20 = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %data_b) #5
  br i1 %tobool.not.i20, label %if.else.i27, label %if.then.i23

if.then.i23:                                      ; preds = %dfx_port_write_long.exit
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22, i32 %10) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit28

if.else.i27:                                      ; preds = %dfx_port_write_long.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base.i6.i, align 4
  %add.i.i24 = add i32 %14, 16
  %and.i.i25 = and i32 %add.i.i24, 1048575
  %add1.i.i26 = or i32 %and.i.i25, -18874368
  %15 = inttoptr i32 %add1.i.i26 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %10) #5, !srcloc !229
  br label %dfx_port_write_long.exit28

dfx_port_write_long.exit28:                       ; preds = %if.else.i27, %if.then.i23
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i30 = icmp eq i8 %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  br i1 %tobool.not.i30, label %if.else.i37, label %if.then.i33

if.then.i33:                                      ; preds = %dfx_port_write_long.exit28
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 %18) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %for.body.preheader

if.else.i37:                                      ; preds = %dfx_port_write_long.exit28
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base.i6.i, align 4
  %add.i.i34 = add i32 %22, 8
  %and.i.i35 = and i32 %add.i.i34, 1048575
  %add1.i.i36 = or i32 %and.i.i35, -18874368
  %23 = inttoptr i32 %add1.i.i36 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %18) #5, !srcloc !229
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else.i37, %if.then.i33
  br label %for.body

for.body:                                         ; preds = %if.end3.for.body_crit_edge, %for.body.preheader
  %timeout_cnt.163 = phi i32 [ %dec, %if.end3.for.body_crit_edge ], [ 20000, %for.body.preheader ]
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i40 = icmp eq i8 %25, 0
  br i1 %tobool.not.i40, label %if.else.i47, label %if.then.i42

if.then.i42:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #5, !srcloc !232
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  br label %dfx_port_read_long.exit

if.else.i47:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base.i6.i, align 4
  %add.i.i44 = add i32 %31, 8
  %and.i.i45 = and i32 %add.i.i44, 1048575
  %add1.i.i46 = or i32 %and.i.i45, -18874368
  %32 = inttoptr i32 %add1.i.i46 to ptr
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %32) #5, !srcloc !232
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %dfx_port_read_long.exit

dfx_port_read_long.exit:                          ; preds = %if.else.i47, %if.then.i42
  %storemerge.i = phi i32 [ %29, %if.then.i42 ], [ %34, %if.else.i47 ]
  %and = and i32 %storemerge.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.end3

if.end3:                                          ; preds = %dfx_port_read_long.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 21474800) #5
  %dec = add nsw i32 %timeout_cnt.163, -1
  %cmp1 = icmp ugt i32 %timeout_cnt.163, 1
  br i1 %cmp1, label %if.end3.for.body_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end6:                                          ; preds = %dfx_port_read_long.exit
  %cmp7.not = icmp eq ptr %host_data, null
  br i1 %cmp7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mmio.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i49 = icmp eq i8 %37, 0
  br i1 %tobool.not.i49, label %if.else.i57, label %if.then.i52

if.then.i52:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51) #5, !srcloc !232
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  br label %dfx_port_read_long.exit59

if.else.i57:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base.i6.i, align 4
  %add.i.i54 = add i32 %43, 4
  %and.i.i55 = and i32 %add.i.i54, 1048575
  %add1.i.i56 = or i32 %and.i.i55, -18874368
  %44 = inttoptr i32 %add1.i.i56 to ptr
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %44) #5, !srcloc !232
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %dfx_port_read_long.exit59

dfx_port_read_long.exit59:                        ; preds = %if.else.i57, %if.then.i52
  %storemerge.i58 = phi i32 [ %41, %if.then.i52 ], [ %46, %if.else.i57 ]
  %47 = ptrtoint ptr %host_data to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %storemerge.i58, ptr %host_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %dfx_port_read_long.exit59, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dfx_port_read_long.exit59 ], [ 0, %if.end6.cleanup_crit_edge ], [ 3, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfx_hw_dma_uninit(ptr nocapture noundef readonly %bp, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 29
  %0 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmio.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %type) #5
  %base.i6.i.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 27
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i6.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %2) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i6.i.i, align 4
  %add.i.i.i = add i32 %6, 12
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %7 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %2) #5, !srcloc !229
  br label %dfx_port_write_long.exit.i

dfx_port_write_long.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mmio.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i4.i = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i4.i, label %if.else.i9.i, label %if.then.i6.i

if.then.i6.i:                                     ; preds = %dfx_port_write_long.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i6.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 16777216) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit10.i

if.else.i9.i:                                     ; preds = %dfx_port_write_long.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i6.i.i, align 4
  %and.i.i7.i = and i32 %13, 1048575
  %add1.i.i8.i = or i32 %and.i.i7.i, -18874368
  %14 = inttoptr i32 %add1.i.i8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 16777216) #5, !srcloc !229
  br label %dfx_port_write_long.exit10.i

dfx_port_write_long.exit10.i:                     ; preds = %if.else.i9.i, %if.then.i6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 4294960) #5
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mmio.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i12.i = icmp eq i8 %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i12.i, label %if.else.i17.i, label %if.then.i14.i

if.then.i14.i:                                    ; preds = %dfx_port_write_long.exit10.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i6.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %for.body.preheader

if.else.i17.i:                                    ; preds = %dfx_port_write_long.exit10.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base.i6.i.i, align 4
  %and.i.i15.i = and i32 %21, 1048575
  %add1.i.i16.i = or i32 %and.i.i15.i, -18874368
  %22 = inttoptr i32 %add1.i.i16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 0) #5, !srcloc !229
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else.i17.i, %if.then.i14.i
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %timeout_cnt.017 = phi i32 [ %dec, %if.end.for.body_crit_edge ], [ 100000, %for.body.preheader ]
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mmio.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i9 = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i9, label %if.else.i.i16, label %if.then.i.i11

if.then.i.i11:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i6.i.i, align 4
  %add.ptr.i.i.i10 = getelementptr i8, ptr %26, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i10) #5, !srcloc !232
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  br label %dfx_hw_adap_state_rd.exit

if.else.i.i16:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base.i6.i.i, align 4
  %add.i.i.i13 = add i32 %30, 20
  %and.i.i.i14 = and i32 %add.i.i.i13, 1048575
  %add1.i.i.i15 = or i32 %and.i.i.i14, -18874368
  %31 = inttoptr i32 %add1.i.i.i15 to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %31) #5, !srcloc !232
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %dfx_hw_adap_state_rd.exit

dfx_hw_adap_state_rd.exit:                        ; preds = %if.else.i.i16, %if.then.i.i11
  %storemerge.i.i = phi i32 [ %28, %if.then.i.i11 ], [ %33, %if.else.i.i16 ]
  %34 = and i32 %storemerge.i.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %34)
  %cmp1 = icmp eq i32 %34, 512
  br i1 %cmp1, label %dfx_hw_adap_state_rd.exit.for.end_crit_edge, label %if.end

dfx_hw_adap_state_rd.exit.for.end_crit_edge:      ; preds = %dfx_hw_adap_state_rd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %dfx_hw_adap_state_rd.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 21474800) #5
  %dec = add nsw i32 %timeout_cnt.017, -1
  %cmp = icmp ugt i32 %timeout_cnt.017, 1
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %dfx_hw_adap_state_rd.exit.for.end_crit_edge
  %36 = phi i32 [ 0, %dfx_hw_adap_state_rd.exit.for.end_crit_edge ], [ 3, %if.end.for.end_crit_edge ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfx_hw_dma_cmd_req(ptr nocapture noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 29
  %0 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmio.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %base.i.i.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 27
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !232
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  br label %dfx_hw_adap_state_rd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base.i6.i.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 27
  %6 = ptrtoint ptr %base.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i6.i.i, align 4
  %add.i.i.i = add i32 %7, 20
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #5, !srcloc !232
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %dfx_hw_adap_state_rd.exit

dfx_hw_adap_state_rd.exit:                        ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i.i = phi i32 [ %5, %if.then.i.i ], [ %10, %if.else.i.i ]
  %and.i = lshr i32 %storemerge.i.i, 8
  %shr.i = and i32 %and.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i)
  %.not = icmp eq i32 %shr.i, 7
  br i1 %.not, label %dfx_hw_adap_state_rd.exit.if.end_crit_edge, label %switch.hole_check

dfx_hw_adap_state_rd.exit.if.end_crit_edge:       ; preds = %dfx_hw_adap_state_rd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %switch.hole_check.if.end_crit_edge, %dfx_hw_adap_state_rd.exit.if.end_crit_edge
  %descr_block_virt = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 2
  %11 = ptrtoint ptr %descr_block_virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %descr_block_virt, align 4
  %cmd_rsp_reg = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 13
  %prod = getelementptr inbounds %struct.anon.123, ptr %cmd_rsp_reg, i32 0, i32 3
  %13 = ptrtoint ptr %prod to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %prod, align 1
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr %struct.PI_DESCR_BLOCK, ptr %12, i32 0, i32 4, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -2113929216, ptr %arrayidx, align 4
  %cmd_rsp_phys = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 7
  %16 = ptrtoint ptr %cmd_rsp_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd_rsp_phys, align 4
  %18 = load ptr, ptr %descr_block_virt, align 4
  %19 = load i8, ptr %prod, align 1
  %idxprom10 = zext i8 %19 to i32
  %long_1 = getelementptr %struct.PI_DESCR_BLOCK, ptr %18, i32 0, i32 4, i32 %idxprom10, i32 1
  %20 = ptrtoint ptr %long_1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %long_1, align 4
  %21 = load i8, ptr %prod, align 1
  %add = add i8 %21, 1
  %22 = and i8 %add, 15
  store i8 %22, ptr %prod, align 1
  %23 = ptrtoint ptr %cmd_rsp_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd_rsp_reg, align 4
  %25 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mmio.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  %base.i6.i = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 27
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %27) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base.i6.i, align 4
  %add.i.i = add i32 %31, 40
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %32 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 %27) #5, !srcloc !229
  br label %dfx_port_write_long.exit

dfx_port_write_long.exit:                         ; preds = %if.else.i, %if.then.i
  %33 = ptrtoint ptr %descr_block_virt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %descr_block_virt, align 4
  %cmd_req_reg = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 12
  %prod21 = getelementptr inbounds %struct.anon.123, ptr %cmd_req_reg, i32 0, i32 3
  %35 = ptrtoint ptr %prod21 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %prod21, align 1
  %idxprom22 = zext i8 %36 to i32
  %arrayidx23 = getelementptr %struct.PI_DESCR_BLOCK, ptr %34, i32 0, i32 5, i32 %idxprom22
  %37 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1040187392, ptr %arrayidx23, align 4
  %cmd_req_phys = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 5
  %38 = ptrtoint ptr %cmd_req_phys to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cmd_req_phys, align 4
  %40 = load ptr, ptr %descr_block_virt, align 4
  %41 = load i8, ptr %prod21, align 1
  %idxprom29 = zext i8 %41 to i32
  %long_131 = getelementptr %struct.PI_DESCR_BLOCK, ptr %40, i32 0, i32 5, i32 %idxprom29, i32 1
  %42 = ptrtoint ptr %long_131 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %long_131, align 4
  %43 = load i8, ptr %prod21, align 1
  %add35 = add i8 %43, 1
  %44 = and i8 %add35, 15
  store i8 %44, ptr %prod21, align 1
  %45 = ptrtoint ptr %cmd_req_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmd_req_reg, align 4
  %47 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mmio.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i142 = icmp eq i8 %48, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  br i1 %tobool.not.i142, label %if.else.i149, label %if.then.i145

if.then.i145:                                     ; preds = %dfx_port_write_long.exit
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i144 = getelementptr i8, ptr %51, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i144, i32 %49) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %dfx_port_write_long.exit150

if.else.i149:                                     ; preds = %dfx_port_write_long.exit
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base.i6.i, align 4
  %add.i.i146 = add i32 %53, 44
  %and.i.i147 = and i32 %add.i.i146, 1048575
  %add1.i.i148 = or i32 %and.i.i147, -18874368
  %54 = inttoptr i32 %add1.i.i148 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %54, i32 %49) #5, !srcloc !229
  br label %dfx_port_write_long.exit150

dfx_port_write_long.exit150:                      ; preds = %if.else.i149, %if.then.i145
  %cons_block_virt = getelementptr inbounds %struct.DFX_board_tag, ptr %bp, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end54.for.body_crit_edge, %dfx_port_write_long.exit150
  %timeout_cnt.0175 = phi i32 [ 20000, %dfx_port_write_long.exit150 ], [ %dec, %if.end54.for.body_crit_edge ]
  %55 = ptrtoint ptr %prod21 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %prod21, align 1
  %57 = ptrtoint ptr %cons_block_virt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cons_block_virt, align 4
  %cmd_req48 = getelementptr inbounds %struct.PI_CONSUMER_BLOCK, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %cmd_req48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %cmd_req48, align 4
  %61 = trunc i32 %60 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %61)
  %cmp51 = icmp eq i8 %56, %61
  br i1 %cmp51, label %if.end58, label %if.end54

if.end54:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 21474800) #5
  %dec = add nsw i32 %timeout_cnt.0175, -1
  %cmp43 = icmp ugt i32 %timeout_cnt.0175, 1
  br i1 %cmp43, label %if.end54.for.body_crit_edge, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end58:                                         ; preds = %for.body
  %comp = getelementptr inbounds %struct.anon.123, ptr %cmd_req_reg, i32 0, i32 2
  %63 = ptrtoint ptr %comp to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %comp, align 2
  %add61 = add i8 %64, 1
  %65 = and i8 %add61, 15
  store i8 %65, ptr %comp, align 2
  %66 = ptrtoint ptr %cmd_req_reg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cmd_req_reg, align 4
  %68 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mmio.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i152 = icmp eq i8 %69, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %70 = tail call i32 @llvm.bswap.i32(i32 %67) #5
  br i1 %tobool.not.i152, label %if.else.i159, label %if.then.i155

if.then.i155:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i154 = getelementptr i8, ptr %72, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i154, i32 %70) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %for.body72.preheader

if.else.i159:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base.i6.i, align 4
  %add.i.i156 = add i32 %74, 44
  %and.i.i157 = and i32 %add.i.i156, 1048575
  %add1.i.i158 = or i32 %and.i.i157, -18874368
  %75 = inttoptr i32 %add1.i.i158 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %75, i32 %70) #5, !srcloc !229
  br label %for.body72.preheader

for.body72.preheader:                             ; preds = %if.else.i159, %if.then.i155
  br label %for.body72

for.body72:                                       ; preds = %if.end83.for.body72_crit_edge, %for.body72.preheader
  %timeout_cnt.1176 = phi i32 [ %dec85, %if.end83.for.body72_crit_edge ], [ 20000, %for.body72.preheader ]
  %76 = ptrtoint ptr %prod to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %prod, align 1
  %78 = ptrtoint ptr %cons_block_virt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cons_block_virt, align 4
  %cmd_rsp77 = getelementptr inbounds %struct.PI_CONSUMER_BLOCK, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %cmd_rsp77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %cmd_rsp77, align 4
  %82 = trunc i32 %81 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %82)
  %cmp80 = icmp eq i8 %77, %82
  br i1 %cmp80, label %if.end90, label %if.end83

if.end83:                                         ; preds = %for.body72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 21474800) #5
  %dec85 = add nsw i32 %timeout_cnt.1176, -1
  %cmp70 = icmp ugt i32 %timeout_cnt.1176, 1
  br i1 %cmp70, label %if.end83.for.body72_crit_edge, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end83.for.body72_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body72

if.end90:                                         ; preds = %for.body72
  %comp92 = getelementptr inbounds %struct.anon.123, ptr %cmd_rsp_reg, i32 0, i32 2
  %84 = ptrtoint ptr %comp92 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %comp92, align 2
  %add94 = add i8 %85, 1
  %86 = and i8 %add94, 15
  store i8 %86, ptr %comp92, align 2
  %87 = ptrtoint ptr %cmd_rsp_reg to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cmd_rsp_reg, align 4
  %89 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %mmio.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i162 = icmp eq i8 %90, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %91 = tail call i32 @llvm.bswap.i32(i32 %88) #5
  br i1 %tobool.not.i162, label %if.else.i169, label %if.then.i165

if.then.i165:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i6.i, align 4
  %add.ptr.i.i164 = getelementptr i8, ptr %93, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i164, i32 %91) #5, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  br label %cleanup

if.else.i169:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %base.i6.i, align 4
  %add.i.i166 = add i32 %95, 40
  %and.i.i167 = and i32 %add.i.i166, 1048575
  %add1.i.i168 = or i32 %and.i.i167, -18874368
  %96 = inttoptr i32 %add1.i.i168 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %96, i32 %91) #5, !srcloc !229
  br label %cleanup

switch.hole_check:                                ; preds = %dfx_hw_adap_state_rd.exit
  %switch.maskindex = trunc i32 %shr.i to i8
  %switch.shifted = lshr i8 71, %switch.maskindex
  %97 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %switch.lobit.not = icmp eq i8 %97, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %if.else.i169, %if.then.i165, %if.end83.cleanup_crit_edge, %if.end54.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.i165 ], [ 0, %if.else.i169 ], [ 2, %switch.hole_check.cleanup_crit_edge ], [ 3, %if.end83.cleanup_crit_edge ], [ 3, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !206, !208, !210, !212, !213, !214, !216}
!llvm.module.flags = !{!218, !219, !220, !221, !222, !223, !224, !225}
!llvm.ident = !{!226}

!0 = !{ptr @__initcall__kmod_defxx__339_3848_dfx_init6, !1, !"__initcall__kmod_defxx__339_3848_dfx_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/defxx.c", i32 3848, i32 1}
!2 = !{ptr @__exitcall_dfx_cleanup, !3, !"__exitcall_dfx_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/net/fddi/defxx.c", i32 3849, i32 1}
!4 = !{ptr @__UNIQUE_ID_author340, !5, !"__UNIQUE_ID_author340", i1 false, i1 false}
!5 = !{!"../drivers/net/fddi/defxx.c", i32 3850, i32 1}
!6 = !{ptr @__UNIQUE_ID_description341, !7, !"__UNIQUE_ID_description341", i1 false, i1 false}
!7 = !{!"../drivers/net/fddi/defxx.c", i32 3851, i32 1}
!8 = !{ptr @__UNIQUE_ID_file342, !9, !"__UNIQUE_ID_file342", i1 false, i1 false}
!9 = !{!"../drivers/net/fddi/defxx.c", i32 3853, i32 1}
!10 = !{ptr @__UNIQUE_ID_license343, !9, !"__UNIQUE_ID_license343", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/fddi/defxx.c", i32 3833, i32 11}
!13 = !{ptr @dfx_pci_driver, !14, !"dfx_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/fddi/defxx.c", i32 3750, i32 26}
!15 = !{ptr @dfx_pci_table, !16, !"dfx_pci_table", i1 false, i1 false}
!16 = !{!"../drivers/net/fddi/defxx.c", i32 3744, i32 35}
!17 = distinct !{null, !18, !"version_disp", i1 false, i1 false}
!18 = !{!"../drivers/net/fddi/defxx.c", i32 532, i32 13}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/fddi/defxx.c", i32 546, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dfx_register._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @dfx_register._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/fddi/defxx.c", i32 551, i32 3}
!26 = !{ptr @dfx_register._entry.3, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dfx_register._entry_ptr.5, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/fddi/defxx.c", i32 560, i32 4}
!30 = !{ptr @dfx_register._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dfx_register._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/fddi/defxx.c", i32 623, i32 4}
!34 = !{ptr @dfx_register._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dfx_register._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/fddi/defxx.c", i32 647, i32 2}
!38 = !{ptr @dfx_register._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dfx_register._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @version, !41, !"version", i1 false, i1 false}
!41 = !{!"../drivers/net/fddi/defxx.c", i32 232, i32 19}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/fddi/defxx.c", i32 498, i32 2}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dfx_register_res_err._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @dfx_register_res_err._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dfx_netdev_ops, !50, !"dfx_netdev_ops", i1 false, i1 false}
!50 = !{!"../drivers/net/fddi/defxx.c", i32 486, i32 36}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/fddi/defxx.c", i32 1462, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dfx_open._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @dfx_open._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @dfx_open.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/fddi/defxx.c", i32 1491, i32 2}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/fddi/defxx.c", i32 1498, i32 3}
!61 = !{ptr @dfx_open._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @dfx_open._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/fddi/defxx.c", i32 3185, i32 6}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dfx_rcv_queue_process._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @dfx_rcv_queue_process._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/fddi/defxx.c", i32 1756, i32 4}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dfx_int_type_0_process._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dfx_int_type_0_process._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/fddi/defxx.c", i32 1761, i32 4}
!79 = !{ptr @dfx_int_type_0_process._entry.31, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @dfx_int_type_0_process._entry_ptr.33, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/fddi/defxx.c", i32 1766, i32 4}
!83 = !{ptr @dfx_int_type_0_process._entry.34, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dfx_int_type_0_process._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/fddi/defxx.c", i32 1772, i32 3}
!87 = !{ptr @dfx_int_type_0_process._entry.37, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @dfx_int_type_0_process._entry_ptr.39, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/fddi/defxx.c", i32 1775, i32 4}
!91 = !{ptr @dfx_int_type_0_process._entry.40, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @dfx_int_type_0_process._entry_ptr.42, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/fddi/defxx.c", i32 1779, i32 3}
!95 = !{ptr @dfx_int_type_0_process._entry.43, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @dfx_int_type_0_process._entry_ptr.45, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/fddi/defxx.c", i32 1813, i32 4}
!99 = !{ptr @dfx_int_type_0_process._entry.46, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @dfx_int_type_0_process._entry_ptr.48, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @dfx_int_type_0_process._entry.49, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/net/fddi/defxx.c", i32 1820, i32 4}
!103 = !{ptr @dfx_int_type_0_process._entry_ptr.50, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @dfx_int_type_0_process._entry.51, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/net/fddi/defxx.c", i32 1823, i32 5}
!106 = !{ptr @dfx_int_type_0_process._entry_ptr.52, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @dfx_int_type_0_process._entry.53, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/net/fddi/defxx.c", i32 1827, i32 4}
!109 = !{ptr @dfx_int_type_0_process._entry_ptr.54, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/fddi/defxx.c", i32 1643, i32 4}
!112 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @dfx_int_pr_halt_id._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @dfx_int_pr_halt_id._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/fddi/defxx.c", i32 1647, i32 4}
!117 = !{ptr @dfx_int_pr_halt_id._entry.57, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @dfx_int_pr_halt_id._entry_ptr.59, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/fddi/defxx.c", i32 1651, i32 4}
!121 = !{ptr @dfx_int_pr_halt_id._entry.60, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @dfx_int_pr_halt_id._entry_ptr.62, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/fddi/defxx.c", i32 1655, i32 4}
!125 = !{ptr @dfx_int_pr_halt_id._entry.63, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @dfx_int_pr_halt_id._entry_ptr.65, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/fddi/defxx.c", i32 1659, i32 4}
!129 = !{ptr @dfx_int_pr_halt_id._entry.66, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @dfx_int_pr_halt_id._entry_ptr.68, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/fddi/defxx.c", i32 1663, i32 4}
!133 = !{ptr @dfx_int_pr_halt_id._entry.69, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @dfx_int_pr_halt_id._entry_ptr.71, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/fddi/defxx.c", i32 1667, i32 4}
!137 = !{ptr @dfx_int_pr_halt_id._entry.72, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @dfx_int_pr_halt_id._entry_ptr.74, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.76, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/fddi/defxx.c", i32 1671, i32 4}
!141 = !{ptr @dfx_int_pr_halt_id._entry.75, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @dfx_int_pr_halt_id._entry_ptr.77, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/fddi/defxx.c", i32 1675, i32 4}
!145 = !{ptr @dfx_int_pr_halt_id._entry.78, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @dfx_int_pr_halt_id._entry_ptr.80, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/fddi/defxx.c", i32 1679, i32 4}
!149 = !{ptr @dfx_int_pr_halt_id._entry.81, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @dfx_int_pr_halt_id._entry_ptr.83, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.84, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/fddi/defxx.c", i32 1265, i32 3}
!153 = !{ptr @.str.85, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @dfx_adap_init._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @dfx_adap_init._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.87, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/fddi/defxx.c", i32 1299, i32 3}
!158 = !{ptr @dfx_adap_init._entry.86, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @dfx_adap_init._entry_ptr.88, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.90, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/fddi/defxx.c", i32 1316, i32 3}
!162 = !{ptr @dfx_adap_init._entry.89, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @dfx_adap_init._entry_ptr.91, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/fddi/defxx.c", i32 1334, i32 3}
!166 = !{ptr @dfx_adap_init._entry.92, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @dfx_adap_init._entry_ptr.94, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.96, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/fddi/defxx.c", i32 1348, i32 3}
!170 = !{ptr @dfx_adap_init._entry.95, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @dfx_adap_init._entry_ptr.97, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @dfx_adap_init._entry.98, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/net/fddi/defxx.c", i32 1364, i32 3}
!174 = !{ptr @dfx_adap_init._entry_ptr.99, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.101, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/fddi/defxx.c", i32 1372, i32 3}
!177 = !{ptr @dfx_adap_init._entry.100, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dfx_adap_init._entry_ptr.102, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.104, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/fddi/defxx.c", i32 1380, i32 3}
!181 = !{ptr @dfx_adap_init._entry.103, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @dfx_adap_init._entry_ptr.105, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.107, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/fddi/defxx.c", i32 1396, i32 3}
!185 = !{ptr @dfx_adap_init._entry.106, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @dfx_adap_init._entry_ptr.108, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.110, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/fddi/defxx.c", i32 1407, i32 3}
!189 = !{ptr @dfx_adap_init._entry.109, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @dfx_adap_init._entry_ptr.111, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.112, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/fddi/defxx.c", i32 3316, i32 3}
!193 = !{ptr @.str.113, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @dfx_xmt_queue_pkt._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @dfx_xmt_queue_pkt._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.114, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/fddi/defxx.c", i32 1097, i32 3}
!198 = !{ptr @.str.115, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @dfx_driver_init._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @dfx_driver_init._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @dfx_driver_init._entry.116, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/net/fddi/defxx.c", i32 1106, i32 3}
!203 = !{ptr @dfx_driver_init._entry_ptr.117, !202, !"_entry_ptr", i1 false, i1 false}
!204 = distinct !{null, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/fddi/defxx.c", i32 1122, i32 16}
!206 = distinct !{null, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/fddi/defxx.c", i32 1124, i32 16}
!208 = !{ptr @.str.120, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/fddi/defxx.c", i32 1126, i32 16}
!210 = !{ptr @.str.122, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/fddi/defxx.c", i32 1127, i32 2}
!212 = !{ptr @dfx_driver_init._entry.121, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @dfx_driver_init._entry_ptr.123, !211, !"_entry_ptr", i1 false, i1 false}
!214 = distinct !{null, !215, !"dfx_eisa_driver", i1 false, i1 false}
!215 = !{!"../drivers/net/fddi/defxx.c", i32 310, i32 27}
!216 = distinct !{null, !217, !"dfx_tc_driver", i1 false, i1 false}
!217 = !{!"../drivers/net/fddi/defxx.c", i32 311, i32 25}
!218 = !{i32 1, !"wchar_size", i32 2}
!219 = !{i32 1, !"min_enum_size", i32 4}
!220 = !{i32 8, !"branch-target-enforcement", i32 0}
!221 = !{i32 8, !"sign-return-address", i32 0}
!222 = !{i32 8, !"sign-return-address-all", i32 0}
!223 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!224 = !{i32 7, !"uwtable", i32 1}
!225 = !{i32 7, !"frame-pointer", i32 2}
!226 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!227 = !{!"auto-init"}
!228 = !{i8 0, i8 2}
!229 = !{i64 6341100}
!230 = !{i64 2156411539}
!231 = !{i64 2156412545}
!232 = !{i64 6341518}
!233 = !{i64 2156413047}
!234 = !{i64 2156413914}
!235 = !{!"branch_weights", i32 2000, i32 1}
