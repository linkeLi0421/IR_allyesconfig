; ModuleID = '/llk/IR_all_yes/drivers/net/wan/wanxl.c_pt.bc'
source_filename = "../drivers/net/wan/wanxl.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.card = type { i32, i8, ptr, ptr, i32, [40 x ptr], ptr, i32, [0 x %struct.port] }
%struct.port = type { ptr, ptr, %struct.spinlock, i32, i32, i32, i32, [10 x ptr] }
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
%struct.desc_t = type { i32, i32, i32 }
%struct.card_status = type { [40 x %struct.desc_t], [4 x %struct.port_status_t] }
%struct.port_status_t = type { i32, i32, i32, i32, i32, i32, i32, [10 x %struct.desc_t] }
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
%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sync_serial_settings = type { i32, i32, i16 }
%struct.if_settings = type { i32, i32, %union.anon.107 }
%union.anon.107 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@wanxl_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @wanxl_pci_tbl, ptr @wanxl_pci_init_one, ptr @wanxl_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author339 = internal constant [46 x i8] c"wanxl.author=Krzysztof Halasa <khc@pm.waw.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [52 x i8] c"wanxl.description=SBE Inc. wanXL serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [33 x i8] c"wanxl.file=drivers/net/wan/wanxl\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [21 x i8] c"wanxl.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_wanxl__343_843_wanxl_init_module6 = internal global ptr @wanxl_init_module, section ".initcall6.init", align 4
@__exitcall_wanxl_cleanup_module = internal global ptr @wanxl_cleanup_module, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wanXL\00", [26 x i8] zeroinitializer }, align 32
@wanxl_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4470, i32 769, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4470, i32 770, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4470, i32 260, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wanxl_pci_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016wanxl: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wanxl_pci_init_one\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/net/wan/wanxl.c\00", [40 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr = internal global ptr @wanxl_pci_init_one._entry, section ".printk_index", align 4
@wanxl_pci_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013wanxl: No usable DMA configuration\0A\00", [58 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.6 = internal global ptr @wanxl_pci_init_one._entry.4, section ".printk_index", align 4
@wanxl_pci_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.8 = internal global ptr @wanxl_pci_init_one._entry.7, section ".printk_index", align 4
@wanxl_pci_init_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013wanxl: ioremap() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.11 = internal global ptr @wanxl_pci_init_one._entry.9, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wanxl_pci_init_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wanxl: %s: timeout waiting for PUTS to complete\0A\00", [45 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.14 = internal global ptr @wanxl_pci_init_one._entry.12, section ".printk_index", align 4
@wanxl_pci_init_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014wanxl: %s: PUTS test 0x%X failed\0A\00", [60 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.17 = internal global ptr @wanxl_pci_init_one._entry.15, section ".printk_index", align 4
@wanxl_pci_init_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014wanxl: %s: no enough on-board RAM (%u bytes detected, %u bytes required)\0A\00", [52 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.20 = internal global ptr @wanxl_pci_init_one._entry.18, section ".printk_index", align 4
@wanxl_pci_init_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014wanxl: %s: unable to Set Byte Swap Mode\0A\00", [53 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.23 = internal global ptr @wanxl_pci_init_one._entry.21, section ".printk_index", align 4
@wanxl_pci_init_one._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.25 = internal global ptr @wanxl_pci_init_one._entry.24, section ".printk_index", align 4
@wanxl_pci_init_one._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014wanxl: %s: unable to Abort and Jump\0A\00", [57 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.28 = internal global ptr @wanxl_pci_init_one._entry.26, section ".printk_index", align 4
@wanxl_pci_init_one._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wanxl: %s: timeout while initializing card firmware\0A\00", [41 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.31 = internal global ptr @wanxl_pci_init_one._entry.29, section ".printk_index", align 4
@wanxl_pci_init_one._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016wanxl: %s: at 0x%X, %u KB of RAM at 0x%X, irq %u\0A\00", [44 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.34 = internal global ptr @wanxl_pci_init_one._entry.32, section ".printk_index", align 4
@wanxl_pci_init_one._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014wanxl: %s: could not allocate IRQ%i\0A\00", [57 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.37 = internal global ptr @wanxl_pci_init_one._entry.35, section ".printk_index", align 4
@wanxl_pci_init_one._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013wanxl: %s: unable to allocate memory\0A\00", [56 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.40 = internal global ptr @wanxl_pci_init_one._entry.38, section ".printk_index", align 4
@wanxl_pci_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@wanxl_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @wanxl_open, ptr @wanxl_close, ptr @hdlc_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wanxl_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wanxl_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013wanxl: %s: unable to register hdlc device\0A\00", [51 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.44 = internal global ptr @wanxl_pci_init_one._entry.42, section ".printk_index", align 4
@wanxl_pci_init_one._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016wanxl: %s: port\00", [46 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.47 = internal global ptr @wanxl_pci_init_one._entry.45, section ".printk_index", align 4
@wanxl_pci_init_one._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.2, ptr @.str.3, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c%s #%i: %s\00", [19 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.50 = internal global ptr @wanxl_pci_init_one._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@wanxl_pci_init_one._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.2, ptr @.str.3, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@wanxl_pci_init_one._entry_ptr.55 = internal global ptr @wanxl_pci_init_one._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wanXL serial card driver version: 0.48\00", [57 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@firmware = internal constant { <{ [2387 x i8], [105 x i8] }>, [612 x i8] } { <{ [2387 x i8], [105 x i8] }> <{ [2387 x i8] c"`\00\00\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\B9@\00\00\00\00\00\10\14B\80J\B0\09\B0\00\00\10\04g\00\00\0E\06\B0@\00\00\00\09\B0\00\00\10\04X\80\0C\80\00\00\00\10f\00\FF\DE!\FC\00\00\16\BC\00l!\FC\00\00\17^\01\00!\FC\00\00\16\DE\01x!\FC\00\00\16\FE\01t!\FC\00\00\17\1E\01p!\FC\00\00\17>\01l!\FC\00\00\18L\02\00#\FCx\00\00\00\FF\FC\15H3\FC\04\80\FF\FC\10&3\FC\01\10\FF\FC\10*#\FC\00\D4\9F@\FF\FC\15@#\FC\00\00\05C\FF\F9\01\00#\FC\00\00\05C\FF\F9\01\14#\FC\00\00\00\00\FF\F9\01\10#\FC\00\00\00\08\FF\F9\01$#\FC\00\00\01\01\FF\F9\01(\00\B9\00\0F\03\00\FF\F9\00\E8#\FC\00\00\00\01\FF\F9\00\D4a\00\06t3\FC\FF\FF\FF\FC\15RBy\FF\FC\15PBy\FF\FC\15d.:\08PB\B9\00\00\19TJ\87f\00\00\0ENr\22\00F\FC'\00`\00\FF\E6B\80B\86\08\07\00\04g\00\00\0A\08\87\00\00a\00\02\A0\08\07\00\00g\00\00\06a\00\006\08\07\00\08g\00\00\06a\00\02\B8\08\07\00\0Cg\00\00\0Aa\00\04\94a\00\03`\E2\8FX\80\0C\80\00\00\00\10f\00\FF\BC#\C6\FF\F9\00\E4`\00\FF\92 p\09\B0\00\00\10\04J\A8\00\00f\00\02N!|\00\00\00\01\00\00B\B0\09\B0\00\00\19XB\B0\09\B0\00\00\19hB\B0\09\B0\00\00\19xB\B0\09\B0\00\00\19\88\229\FF\FC\16\EC\C2\B0\09\B0\00\00\18\F2\0C\A8\00\00\00\04\00\18f\00\00\0E\82\B0\09\B0\00\00\18\E2`\00\00\0A\82\B0\09\B0\00\00\18\D2#\C1\FF\FC\16\EC\00p\10\00\09\B0\00\00\19\AAa\00\05v\220\09\B0\00\00\18\92\22p\09\B0\00\00\18rt\08&<\18\00\00\00\0C\A8\00\00\00\01\00\10g\00\00\06\08\C3\00\1A\22\C3\22\C1\06\81\00\00\05\FCQ\CA\FF\F4\08\C3\00\1D\22\C3\22\C1t\1C\22\FC\90\00\00\00\22\C1\06\81\00\00\05\FCQ\CA\FF\F0\22\FC\B0\00\00\00\22\C1\22p\09\B0\00\00\18b$p\09\B0\00\00\18R%|\00\00\FF\FF\00\10%|\00\00\00\00\00\14\220\09\B0\00\00\18r3A\00\02\06\81\00\00\00P3A\00\00\13|\00\08\00\04\13|\00\08\00\05\0C\A8\00\00\00\05\00\10f\00\00*Bj\00\08#|\00\00\F0\B8\004#|\00\00\FF\FF\0083|\05\FA\00F1\BC\00\02\09\B0\00\00\19\9C`\00\00\BC\0C\A8\00\00\00\07\00\10f\00\00,5|\08\00\00\08#|\DE\BB \E3\004#|\FF\FF\FF\FF\0083|\05\FC\00F1\BC\00\04\09\B0\00\00\19\9C`\00\00\86\0C\A8\00\00\00\04\00\10f\00\00&Bj\00\08#|\00\00\F0\B8\004B\A9\0083|\05\FA\00F1\BC\00\02\09\B0\00\00\19\9C`\00\00V\0C\A8\00\00\00\06\00\10f\00\00(5|\08\00\00\08#|\DE\BB \E3\004B\A9\0083|\05\FC\00F1\BC\00\04\09\B0\00\00\19\9C`\00\00$Bj\00\08#|\00\00\F0\B8\004#|\00\00\FF\FF\0083|\05\F8\00FBp\09\B0\00\00\19\9C%|\00\00\00\03\00\04\0C\A8\00\00\00\02\00\14f\00\00\0E%|\10\04\09\00\00\00`\00\00\0A%|\10\04\00\00\00\003|\05\FC\00\06\22\00\E9\89\00\81\00\00\00\013\C1\FF\FC\15\C0\089\00\00\FF\FC\15\C0f\00\FF\F65|\00\1F\00\14\00\AA\00\00\000\00\00Nu p\09\B0\00\00\18RBh\00\14\02\A8\FF\FF\FF\CF\00\00\02p\EF\FF\09\B0\00\00\19\AAa\00\03p\220\09\B0\00\00\10\04B\B0\19\90Nu\0C\B0\00\00\00\0A\09\B0\00\00\19xg\00\00\A8\220\09\B0\00\00\19h$\01L< \00\00\00\00\0C\D4\B0\09\B0\00\00\10\04\06\82\00\00\00\1C\0C\B0\00\00\00\10)\90f\00\00| p)\A0\00\04\E7\89\D2\B0\09\B0\00\00\18r\22p\19\A0\00\04$0)\A0\00\081\82\19\A0\00\02V\82\02\82\FF\FF\FF\FC#\C8\FF\F9\01\04#\C9\FF\F9\01\08#\C2\FF\F9\01\0C#\FC\00\00\01\03\FF\F9\01(a\00\01\F6\08\F0\00\1F\19\90\220\09\B0\00\00\19hR\81\0C\81\00\00\00\0Af\00\00\04B\81!\81\09\B0\00\00\19hR\B0\09\B0\00\00\19x`\00\FFLNu\220\09\B0\00\00\19\88\E7\89\D2\B0\09\B0\00\00\18\8240\19\90\08\02\00\0Ff\00\01\12\08\02\00\01f\00\00\E6Jp\09\B0\00\00\19\9Cf\00\00\06\08\82\00\02\02B\0C\BC\0CB\0C\00f\00\00\DCB\8360\19\A0\00\02\96p\09\B0\00\00\19\9C\0CC\05\F8n\00\00\C4$:\04\84L< \00\00\00\00\0C\D4\BA\FA\F4\0C\B0\00\00\00\00)\90f\00\00\96!\83)\A0\00\08 p\19\A0\00\04\22p)\A0\00\04J\89g\00\00*V\83\02\83\FF\FF\FF\FC#\C8\FF\F9\01\1C#\C9\FF\F9\01\18#\C3\FF\F9\01 #\FC\00\00\03\01\FF\F9\01(a\00\01,!\B0\09\B0\00\00\18\C2)\90\08\C6\00\04$:\04\1AR\82\0C\82\00\00\00(f\00\00\04B\82#\C2\00\00\19\98\02p\F0\00\19\90\08\F0\00\1F\19\90\220\09\B0\00\00\19\88R\81\0C\81\00\00\00\1Ef\00\00\04B\81!\81\09\B0\00\00\19\88`\00\FE\F8$0\09\B0\00\00\10\04R\B0)\A0\00\08`\00\FF\C2$0\09\B0\00\00\10\04R\B0)\A0\00\0C`\00\FF\B0NuJ\B0\09\B0\00\00\19xg\00\00\86\220\09\B0\00\00\19X$\01\E7\89\D2\B0\09\B0\00\00\18r60\19\90\08\03\00\0Ff\00\00f\8C\B0\09\B0\00\00\18\A2S\B0\09\B0\00\00\19x\220\09\B0\00\00\19XR\81\0C\81\00\00\00\0Af\00\00\04B\81!\81\09\B0\00\00\19XL< \00\00\00\00\0C\D4\B0\09\B0\00\00\10\04\06\82\00\00\00\1C\08\03\00\01f\00\00\0E!\BC\00\00\00 )\90`\00\FF~!\BC\00\00\000)\90`\00\FFrNu/\00@\E7 9\FF\F9\01(\08\00\00\04f\00\00,Nr\22\00F\FC'\00`\00\FF\E8/\00@\E7 9\FF\F9\01(\08\00\00\0Cf\00\00\0ENr\22\00F\FC'\00`\00\FF\E8F\DF \1FNu/\00 9\FF\F9\00\E0#\C0\FF\F9\00\E0\81\B9\00\00\19T#\FC\00\00\09\09\FF\F9\01( \1FNs\00\B9\00\00\00\00\FF\FC\16\10\00\B9\00\00\10\00\00\00\19T#\FC@\00\00\00\FF\FC\15LNs\00\B9\00\00\00\00\FF\FC\160\00\B9\00\00 \00\00\00\19T#\FC \00\00\00\FF\FC\15LNs\00\B9\00\00\00\00\FF\FC\16P\00\B9\00\00@\00\00\00\19T#\FC\10\00\00\00\FF\FC\15LNs\00\B9\00\00\00\00\FF\FC\16p\00\B9\00\00\80\00\00\00\19T#\FC\08\00\00\00\FF\FC\15LNsNs/\00/\01/\02/\08/\09B\80 |\FF\FB\00\002\10\02\81\00\00\00\E7\0CA\00Bf\00\00\0A2<\0E\08`\00\00>\0CA\00cf\00\00\0A2<\04\08`\00\00.\0CA\00\84f\00\00\0A2<\02\08`\00\00\1E\0CA\00\A5f\00\00\0A2<\0D\08`\00\00\0E2<\00\084<\80\E7`\00\00\1440\09\B0\00\00\19\AA\02B0\00\82B4<\80\FF\B2p\09\B0\00\00\19\ACg\00\00\0C1\81\09\B0\00\00\19\AC0\8129\FF\FC\15f\C2p\09\B0\00\00\19\02g\00\00\0C2\10\02A\FF\F7`\00\00\082\10\00A\00\08\C2B\22p\09\B0\00\00\10\04\B2\A9\00\04g\00\00\12#A\00\04#\F0\09\B0\00\00\18\B2\FF\F9\00\E4T\88X\80\0C\80\00\00\00\10f\00\FF4\22_ _$\1F\22\1F \1FNua\00\FF\12Ns\FF\FC\16\00\FF\FC\16 \FF\FC\16@\FF\FC\16`\FF\FC\0C\00\FF\FC\0D\00\FF\FC\0E\00\FF\FC\0F\00\FF\FC\00\00\FF\FC\01@\FF\FC\02\80\FF\FC\03\C0\FF\FC\00P\FF\FC\01\90\FF\FC\02\D0\FF\FC\04\10\00\00@\00\00\01/`\00\02\1E\C0\00\03\0E \00\00\00\01\00\00\00\02\00\00\00\04\00\00\00\08\00\00\00 \00\00\00@\00\00\00\80\00\00\01\00\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00,\00\00>\00\00,\00\00>\00\00\00\00\00\00-\00\00?\00\00-\00\00?\00\00\00\00\00\00\FF\00\00\FF\00\00\FF\00\00\FF\00\00\00\00 \00\00\00\80\00\00\02\00\00\00\08\00wanXL firmware\0ACopyright (C) 2003 Krzysztof Halasa <khc@pm.waw.pl>\0A", [105 x i8] zeroinitializer }>, [612 x i8] zeroinitializer }, align 32
@wanxl_rx_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\012wanxl: %s: received packet for nonexistent port\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wanxl_rx_intr\00", [18 x i8] zeroinitializer }, align 32
@wanxl_rx_intr._entry_ptr = internal global ptr @wanxl_rx_intr._entry, section ".printk_index", align 4
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port already open\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unable to open port\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to close port\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"V.35\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"X.21\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"V.24\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EIA530\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no personality\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid personality\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", DSR ON\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", DSR off\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", carrier ON\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", carrier off\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DCE\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DTE\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s%s module, %s cable%s%s\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wanxl\00", [26 x i8] zeroinitializer }, align 32
@switch.table.wanxl_cable_intr = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.72], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 48]
@__sancov_gen_cov_switch_values.85 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.86 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4101]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"wanxl_pci_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 818, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 819, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"wanxl_pci_tbl\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 808, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 561, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 579, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 631, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 641, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 653, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 665, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 683, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 692, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 709, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 728, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 742, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 752, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 757, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 770, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 778, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [10 x i8] c"wanxl_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 541, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 787, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 796, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 798, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 800, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 35, i32 30 }
@___asan_gen_.228 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 326, i32 6 }
@___asan_gen_.230 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [30 x i8] c"./drivers/net/wan/wanxlfw.inc\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 214, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 401, i32 19 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 423, i32 18 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 447, i32 19 }
@___asan_gen_.252 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 174, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 116, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 119, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 122, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 125, i32 11 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 128, i32 11 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 131, i32 11 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 148, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 152, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 158, i32 39 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 159, i32 5 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 160, i32 39 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 161, i32 5 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 163, i32 38 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 163, i32 47 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 165, i32 25 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private constant [27 x i8] c"../drivers/net/wan/wanxl.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 830, i32 9 }
@___asan_gen_.302 = private unnamed_addr constant [30 x i8] c"switch.table.wanxl_cable_intr\00", align 1
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_wanxl_cleanup_module, ptr @__initcall__kmod_wanxl__343_843_wanxl_init_module6, ptr @wanxl_cleanup_module, ptr @wanxl_pci_init_one._entry, ptr @wanxl_pci_init_one._entry.12, ptr @wanxl_pci_init_one._entry.15, ptr @wanxl_pci_init_one._entry.18, ptr @wanxl_pci_init_one._entry.21, ptr @wanxl_pci_init_one._entry.24, ptr @wanxl_pci_init_one._entry.26, ptr @wanxl_pci_init_one._entry.29, ptr @wanxl_pci_init_one._entry.32, ptr @wanxl_pci_init_one._entry.35, ptr @wanxl_pci_init_one._entry.38, ptr @wanxl_pci_init_one._entry.4, ptr @wanxl_pci_init_one._entry.42, ptr @wanxl_pci_init_one._entry.45, ptr @wanxl_pci_init_one._entry.48, ptr @wanxl_pci_init_one._entry.53, ptr @wanxl_pci_init_one._entry.7, ptr @wanxl_pci_init_one._entry.9, ptr @wanxl_pci_init_one._entry_ptr, ptr @wanxl_pci_init_one._entry_ptr.11, ptr @wanxl_pci_init_one._entry_ptr.14, ptr @wanxl_pci_init_one._entry_ptr.17, ptr @wanxl_pci_init_one._entry_ptr.20, ptr @wanxl_pci_init_one._entry_ptr.23, ptr @wanxl_pci_init_one._entry_ptr.25, ptr @wanxl_pci_init_one._entry_ptr.28, ptr @wanxl_pci_init_one._entry_ptr.31, ptr @wanxl_pci_init_one._entry_ptr.34, ptr @wanxl_pci_init_one._entry_ptr.37, ptr @wanxl_pci_init_one._entry_ptr.40, ptr @wanxl_pci_init_one._entry_ptr.44, ptr @wanxl_pci_init_one._entry_ptr.47, ptr @wanxl_pci_init_one._entry_ptr.50, ptr @wanxl_pci_init_one._entry_ptr.55, ptr @wanxl_pci_init_one._entry_ptr.6, ptr @wanxl_pci_init_one._entry_ptr.8, ptr @wanxl_rx_intr._entry, ptr @wanxl_rx_intr._entry_ptr, ptr @wanxl_pci_driver, ptr @.str, ptr @wanxl_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @wanxl_pci_init_one.__key, ptr @.str.41, ptr @wanxl_ops, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @firmware, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @switch.table.wanxl_cable_intr], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_pci_init_one._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware to i32), i32 2492, i32 3104, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wanxl_rx_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wanxl_cable_intr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wanxl_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @wanxl_pci_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wanxl_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @wanxl_pci_driver, ptr noundef null, ptr noundef nonnull @.str.83) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wanxl_pci_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b470 = load i1, ptr @wanxl_pci_init_one.__already_done, align 1
  br i1 %.b470, label %entry.if.end_crit_edge, label %if.then, !prof !167

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wanxl_pci_init_one.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call12 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup329_crit_edge

if.end.cleanup329_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup329

if.end15:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call16 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 268435455) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end15.do.end24_crit_edge

if.end15.do.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

lor.lhs.false:                                    ; preds = %if.end15
  %call19 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 268435455) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %lor.lhs.false.do.end24_crit_edge

lor.lhs.false.do.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.end24:                                         ; preds = %lor.lhs.false.do.end24_crit_edge, %if.end15.do.end24_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup329

if.end27:                                         ; preds = %lor.lhs.false
  %call28 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup329

if.end31:                                         ; preds = %if.end27
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 770, i16 %1)
  %switch.selectcmp = icmp eq i16 %1, 770
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 769, i16 %1)
  %switch.selectcmp472 = icmp eq i16 %1, 769
  %switch.select473 = select i1 %switch.selectcmp472, i32 1, i32 %switch.select
  %2 = mul nuw nsw i32 %switch.select473, 108
  %spec.select.i569 = add nuw nsw i32 %2, 188
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i569, i32 noundef 3520) #15
  %tobool35.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup329

if.end37:                                         ; preds = %if.end31
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %driver_data.i.i, align 4
  %pdev38 = getelementptr inbounds %struct.card, ptr %call9.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %pdev38 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev38, align 4
  %status_address = getelementptr inbounds %struct.card, ptr %call9.i.i, i32 0, i32 7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 1072, ptr noundef %status_address, i32 noundef 3264, i32 noundef 0) #11
  %status = getelementptr inbounds %struct.card, ptr %call9.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %status, align 4
  %tobool42.not = icmp eq ptr %call.i, null
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

if.end44:                                         ; preds = %if.end37
  %call46 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %if.end44.do.end55_crit_edge

if.end44.do.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

lor.lhs.false48:                                  ; preds = %if.end44
  %call50 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end58, label %lor.lhs.false48.do.end55_crit_edge

lor.lhs.false48.do.end55_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

do.end55:                                         ; preds = %lor.lhs.false48.do.end55_crit_edge, %if.end44.do.end55_crit_edge
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

if.end58:                                         ; preds = %lor.lhs.false48
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource, align 8
  %call59 = tail call ptr @ioremap(i32 noundef %7, i32 noundef 112) #11
  %plx = getelementptr inbounds %struct.card, ptr %call9.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %plx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call59, ptr %plx, align 8
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %do.end65, label %if.end68

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

if.end68:                                         ; preds = %if.end58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 2000
  %10 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plx, align 8
  %add.ptr576 = getelementptr i8, ptr %11, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr576) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not577 = icmp eq i32 %12, 0
  br i1 %cmp.not577, label %if.end68.while.end_crit_edge, label %while.body.preheader

if.end68.while.end_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.preheader:                             ; preds = %if.end68
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  br label %while.body

while.body:                                       ; preds = %sw.epilog93.while.body_crit_edge, %while.body.preheader
  %14 = phi i32 [ %29, %sw.epilog93.while.body_crit_edge ], [ %13, %while.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp74 = icmp slt i32 %sub, 0
  br i1 %cmp74, label %do.end79, label %if.end83

do.end79:                                         ; preds = %while.body
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i474, label %do.end79.pci_name.exit_crit_edge

do.end79.pci_name.exit_crit_edge:                 ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i474:                                    ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i474, %do.end79.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i474 ], [ %17, %do.end79.pci_name.exit_crit_edge ]
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

if.end83:                                         ; preds = %while.body
  %20 = trunc i32 %14 to i8
  %trunc = and i8 %20, -64
  %21 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end88 [
    i8 0, label %if.end83.sw.epilog93_crit_edge
    i8 -128, label %if.end83.sw.epilog93_crit_edge611
  ]

if.end83.sw.epilog93_crit_edge611:                ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog93

if.end83.sw.epilog93_crit_edge:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog93

do.end88:                                         ; preds = %if.end83
  %init_name.i.i475 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i475 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i475, align 8
  %tobool.not.i.i476 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i476, label %if.end.i.i478, label %do.end88.pci_name.exit480_crit_edge

do.end88.pci_name.exit480_crit_edge:              ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit480

if.end.i.i478:                                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %pci_name.exit480

pci_name.exit480:                                 ; preds = %if.end.i.i478, %do.end88.pci_name.exit480_crit_edge
  %retval.0.i.i479 = phi ptr [ %25, %if.end.i.i478 ], [ %23, %do.end88.pci_name.exit480_crit_edge ]
  %and91 = and i32 %14, 48
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i479, i32 noundef %and91) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

sw.epilog93:                                      ; preds = %if.end83.sw.epilog93_crit_edge, %if.end83.sw.epilog93_crit_edge611
  tail call void @schedule() #11
  %26 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plx, align 8
  %add.ptr = getelementptr i8, ptr %27, i32 64
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !168
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  %cmp.not = icmp eq i32 %28, 0
  br i1 %cmp.not, label %sw.epilog93.while.end_crit_edge, label %sw.epilog93.while.body_crit_edge

sw.epilog93.while.body_crit_edge:                 ; preds = %sw.epilog93
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

sw.epilog93.while.end_crit_edge:                  ; preds = %sw.epilog93
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %sw.epilog93.while.end_crit_edge, %if.end68.while.end_crit_edge
  %30 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %plx, align 8
  %add.ptr97 = getelementptr i8, ptr %31, i32 72
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !170
  %33 = and i32 %32, 65535
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %arrayidx103 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %35 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx103, align 8
  %mul = mul nuw nsw i32 %switch.select473, 64160
  %add105 = add nuw nsw i32 %mul, 16384
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add105)
  %cmp106 = icmp ult i32 %34, %add105
  br i1 %cmp106, label %do.end111, label %if.end117

do.end111:                                        ; preds = %while.end
  %init_name.i.i481 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %init_name.i.i481 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i481, align 8
  %tobool.not.i.i482 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i482, label %if.end.i.i484, label %do.end111.pci_name.exit486_crit_edge

do.end111.pci_name.exit486_crit_edge:             ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit486

if.end.i.i484:                                    ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  br label %pci_name.exit486

pci_name.exit486:                                 ; preds = %if.end.i.i484, %do.end111.pci_name.exit486_crit_edge
  %retval.0.i.i485 = phi ptr [ %40, %if.end.i.i484 ], [ %38, %do.end111.pci_name.exit486_crit_edge ]
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i485, i32 noundef %34, i32 noundef %add105) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

if.end117:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %plx, align 8
  %add.ptr.i = getelementptr i8, ptr %43, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 140) #11, !srcloc !172
  %add.neg.i = sub i32 -500, %41
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end.i.do.body1.i_crit_edge, %if.end117
  %44 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %plx, align 8
  %add.ptr3.i = getelementptr i8, ptr %45, i32 68
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i = icmp eq i32 %46, 0
  br i1 %cmp.i, label %do.body1.i.for.body_crit_edge, label %if.end.i

do.body1.i.for.body_crit_edge:                    ; preds = %do.body1.i
  br label %for.body

if.end.i:                                         ; preds = %do.body1.i
  tail call void @schedule() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %47
  %cmp6.i = icmp slt i32 %sub.i, 0
  br i1 %cmp6.i, label %if.end.i.do.body1.i_crit_edge, label %do.end123

if.end.i.do.body1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

do.end123:                                        ; preds = %if.end.i
  %init_name.i.i488 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %48 = ptrtoint ptr %init_name.i.i488 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i488, align 8
  %tobool.not.i.i489 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i489, label %if.end.i.i491, label %do.end123.pci_name.exit493_crit_edge

do.end123.pci_name.exit493_crit_edge:             ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit493

if.end.i.i491:                                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  br label %pci_name.exit493

pci_name.exit493:                                 ; preds = %if.end.i.i491, %do.end123.pci_name.exit493_crit_edge
  %retval.0.i.i492 = phi ptr [ %51, %if.end.i.i491 ], [ %49, %do.end123.pci_name.exit493_crit_edge ]
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i492) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

for.body:                                         ; preds = %if.end139.for.body_crit_edge, %do.body1.i.for.body_crit_edge
  %i.0578 = phi i32 [ %inc, %if.end139.for.body_crit_edge ], [ 0, %do.body1.i.for.body_crit_edge ]
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1604, i32 noundef 2592) #11
  %arrayidx131 = getelementptr %struct.card, ptr %call9.i.i, i32 0, i32 5, i32 %i.0578
  %52 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i, ptr %arrayidx131, align 4
  %tobool132.not = icmp eq ptr %call.i.i, null
  br i1 %tobool132.not, label %for.body.if.end139_crit_edge, label %if.then133

for.body.if.end139_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then133:                                       ; preds = %for.body
  %53 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev38, align 4
  %dev135 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %call.i494 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %56) #11
  br i1 %call.i494, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then133
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !167

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev135) #11
  %init_name.i.i495 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44, i32 3
  %57 = ptrtoint ptr %init_name.i.i495 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i495, align 8
  %tobool.not.i.i496 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i496, label %if.end.i.i497, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i497:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev135, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i497, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i498 = phi ptr [ %60, %if.end.i.i497 ], [ %58, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef %call16.i, ptr noundef %retval.0.i.i498) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev135, ptr noundef %56, i32 noundef 1604) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %61 = load ptr, ptr @mem_map, align 4
  %62 = ptrtoint ptr %56 to i32
  %sub.i499 = add i32 %62, 1073741824
  %shr.i = lshr i32 %sub.i499, 12
  %add.ptr.i500 = getelementptr %struct.page, ptr %61, i32 %shr.i
  %and.i = and i32 %62, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev135, ptr noundef %add.ptr.i500, i32 noundef %and.i, i32 noundef 1604, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i501 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %63 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %status, align 4
  %address = getelementptr [40 x %struct.desc_t], ptr %64, i32 0, i32 %i.0578, i32 1
  %65 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i501, ptr %address, align 4
  br label %if.end139

if.end139:                                        ; preds = %dma_map_single_attrs.exit, %for.body.if.end139_crit_edge
  %inc = add nuw nsw i32 %i.0578, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.end, label %if.end139.for.body_crit_edge

if.end139.for.body_crit_edge:                     ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end139
  %call140 = tail call ptr @ioremap(i32 noundef %36, i32 noundef 6588) #11
  %tobool141.not = icmp eq ptr %call140, null
  br i1 %tobool141.not, label %do.end145, label %for.cond149.preheader

for.cond149.preheader:                            ; preds = %for.end
  %add.ptr157 = getelementptr i8, ptr %call140, i32 4096
  br label %do.body153

do.end145:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

for.cond162.preheader:                            ; preds = %do.body153
  %add.ptr175 = getelementptr i8, ptr %call140, i32 4100
  br label %do.body166

do.body153:                                       ; preds = %do.body153.do.body153_crit_edge, %for.cond149.preheader
  %i.1580 = phi i32 [ 0, %for.cond149.preheader ], [ %add160, %do.body153.do.body153_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  tail call void @arm_heavy_mb() #11
  %add.ptr156 = getelementptr i8, ptr @firmware, i32 %i.1580
  %66 = ptrtoint ptr %add.ptr156 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr156, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %add.ptr158 = getelementptr i8, ptr %add.ptr157, i32 %i.1580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %68) #11, !srcloc !172
  %add160 = add nuw nsw i32 %i.1580, 4
  %cmp150 = icmp ult i32 %i.1580, 2488
  br i1 %cmp150, label %do.body153.do.body153_crit_edge, label %for.cond162.preheader

do.body153.do.body153_crit_edge:                  ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body153

do.body166:                                       ; preds = %do.body166.do.body166_crit_edge, %for.cond162.preheader
  %i.2581 = phi i32 [ 0, %for.cond162.preheader ], [ %inc179, %do.body166.do.body166_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %69 = ptrtoint ptr %status_address to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %status_address, align 8
  %71 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %status, align 4
  %arrayidx171 = getelementptr %struct.card_status, ptr %72, i32 0, i32 1, i32 %i.2581
  %add.ptr172 = getelementptr i8, ptr %arrayidx171, i32 %70
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr172 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %72 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %73 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub)
  %mul176 = shl i32 %i.2581, 2
  %add.ptr177 = getelementptr i8, ptr %add.ptr175, i32 %mul176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %73) #11, !srcloc !172
  %inc179 = add nuw nsw i32 %i.2581, 1
  %exitcond589.not = icmp eq i32 %inc179, %switch.select473
  br i1 %exitcond589.not, label %do.body181, label %do.body166.do.body166_crit_edge

do.body166.do.body166_crit_edge:                  ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body166

do.body181:                                       ; preds = %do.body166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @arm_heavy_mb() #11
  %74 = ptrtoint ptr %status_address to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %status_address, align 8
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %add.ptr186 = getelementptr i8, ptr %call140, i32 4116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 %76) #11, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !177
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call140, i32 1048576) #11, !srcloc !172
  tail call void @iounmap(ptr noundef nonnull %call140) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @arm_heavy_mb() #11
  %77 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %plx, align 8
  %add.ptr194 = getelementptr i8, ptr %78, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 0) #11, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %80 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %plx, align 8
  %add.ptr.i503 = getelementptr i8, ptr %81, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i503, i32 133) #11, !srcloc !172
  %add.neg.i504 = sub i32 -500, %79
  br label %do.body1.i507

do.body1.i507:                                    ; preds = %if.end.i510.do.body1.i507_crit_edge, %do.body181
  %82 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %plx, align 8
  %add.ptr3.i505 = getelementptr i8, ptr %83, i32 68
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i505) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i506 = icmp eq i32 %84, 0
  br i1 %cmp.i506, label %if.end204, label %if.end.i510

if.end.i510:                                      ; preds = %do.body1.i507
  tail call void @schedule() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %sub.i508 = add i32 %add.neg.i504, %85
  %cmp6.i509 = icmp slt i32 %sub.i508, 0
  br i1 %cmp6.i509, label %if.end.i510.do.body1.i507_crit_edge, label %do.end200

if.end.i510.do.body1.i507_crit_edge:              ; preds = %if.end.i510
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i507

do.end200:                                        ; preds = %if.end.i510
  %init_name.i.i513 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %86 = ptrtoint ptr %init_name.i.i513 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i.i513, align 8
  %tobool.not.i.i514 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i514, label %if.end.i.i516, label %do.end200.pci_name.exit519_crit_edge

do.end200.pci_name.exit519_crit_edge:             ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit519

if.end.i.i516:                                    ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  br label %pci_name.exit519

pci_name.exit519:                                 ; preds = %if.end.i.i516, %do.end200.pci_name.exit519_crit_edge
  %retval.0.i.i517 = phi ptr [ %89, %if.end.i.i516 ], [ %87, %do.end200.pci_name.exit519_crit_edge ]
  %call203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %retval.0.i.i517) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

if.end204:                                        ; preds = %do.body1.i507
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %add205.neg = sub i32 -500, %90
  br label %do.body206

do.body206:                                       ; preds = %if.end216.do.body206_crit_edge, %if.end204
  %91 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %plx, align 8
  %add.ptr210 = getelementptr i8, ptr %92, i32 84
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr210) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool214.not = icmp eq i32 %93, 0
  br i1 %tobool214.not, label %if.end216, label %do.end233

if.end216:                                        ; preds = %do.body206
  tail call void @schedule() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %sub218 = add i32 %add205.neg, %94
  %cmp219 = icmp slt i32 %sub218, 0
  br i1 %cmp219, label %if.end216.do.body206_crit_edge, label %do.end226.critedge

if.end216.do.body206_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body206

do.end226.critedge:                               ; preds = %if.end216
  %init_name.i.i520 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %95 = ptrtoint ptr %init_name.i.i520 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i.i520, align 8
  %tobool.not.i.i521 = icmp eq ptr %96, null
  br i1 %tobool.not.i.i521, label %if.end.i.i523, label %do.end226.critedge.pci_name.exit526_crit_edge

do.end226.critedge.pci_name.exit526_crit_edge:    ; preds = %do.end226.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit526

if.end.i.i523:                                    ; preds = %do.end226.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  br label %pci_name.exit526

pci_name.exit526:                                 ; preds = %if.end.i.i523, %do.end226.critedge.pci_name.exit526_crit_edge
  %retval.0.i.i524 = phi ptr [ %98, %if.end.i.i523 ], [ %96, %do.end226.critedge.pci_name.exit526_crit_edge ]
  %call229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i524) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

do.end233:                                        ; preds = %do.body206
  %init_name.i.i527 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %99 = ptrtoint ptr %init_name.i.i527 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i.i527, align 8
  %tobool.not.i.i528 = icmp eq ptr %100, null
  br i1 %tobool.not.i.i528, label %if.end.i.i530, label %do.end233.pci_name.exit533_crit_edge

do.end233.pci_name.exit533_crit_edge:             ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit533

if.end.i.i530:                                    ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  br label %pci_name.exit533

pci_name.exit533:                                 ; preds = %if.end.i.i530, %do.end233.pci_name.exit533_crit_edge
  %retval.0.i.i531 = phi ptr [ %102, %if.end.i.i530 ], [ %100, %do.end233.pci_name.exit533_crit_edge ]
  %div471 = lshr exact i32 %34, 10
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %103 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq, align 4
  %call236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %retval.0.i.i531, i32 noundef %7, i32 noundef %div471, i32 noundef %36, i32 noundef %104) #14
  %105 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %irq, align 4
  %call.i534 = tail call i32 @request_threaded_irq(i32 noundef %106, ptr noundef nonnull @wanxl_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i534)
  %tobool239.not = icmp eq i32 %call.i534, 0
  br i1 %tobool239.not, label %if.end248, label %do.end243

do.end243:                                        ; preds = %pci_name.exit533
  %107 = ptrtoint ptr %init_name.i.i527 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_name.i.i527, align 8
  %tobool.not.i.i536 = icmp eq ptr %108, null
  br i1 %tobool.not.i.i536, label %if.end.i.i538, label %do.end243.pci_name.exit541_crit_edge

do.end243.pci_name.exit541_crit_edge:             ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit541

if.end.i.i538:                                    ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 4
  br label %pci_name.exit541

pci_name.exit541:                                 ; preds = %if.end.i.i538, %do.end243.pci_name.exit541_crit_edge
  %retval.0.i.i539 = phi ptr [ %110, %if.end.i.i538 ], [ %108, %do.end243.pci_name.exit541_crit_edge ]
  %111 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %irq, align 4
  %call247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %retval.0.i.i539, i32 noundef %112) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

if.end248:                                        ; preds = %pci_name.exit533
  %113 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %irq, align 4
  %conv250 = trunc i32 %114 to i8
  %irq251 = getelementptr inbounds %struct.card, ptr %call9.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %irq251 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv250, ptr %irq251, align 4
  br label %for.body255

for.body255:                                      ; preds = %for.inc290.for.body255_crit_edge, %if.end248
  %i.3582 = phi i32 [ 0, %if.end248 ], [ %inc291, %for.inc290.for.body255_crit_edge ]
  %arrayidx257 = getelementptr %struct.card, ptr %call9.i.i, i32 0, i32 8, i32 %i.3582
  %call259 = tail call ptr @alloc_hdlcdev(ptr noundef %arrayidx257) #11
  %tobool260.not = icmp eq ptr %call259, null
  br i1 %tobool260.not, label %do.end264, label %if.end268

do.end264:                                        ; preds = %for.body255
  %116 = ptrtoint ptr %init_name.i.i527 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %init_name.i.i527, align 8
  %tobool.not.i.i543 = icmp eq ptr %117, null
  br i1 %tobool.not.i.i543, label %if.end.i.i545, label %do.end264.pci_name.exit548_crit_edge

do.end264.pci_name.exit548_crit_edge:             ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit548

if.end.i.i545:                                    ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 4
  br label %pci_name.exit548

pci_name.exit548:                                 ; preds = %if.end.i.i545, %do.end264.pci_name.exit548_crit_edge
  %retval.0.i.i546 = phi ptr [ %119, %if.end.i.i545 ], [ %117, %do.end264.pci_name.exit548_crit_edge ]
  %call267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %retval.0.i.i546) #14
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

if.end268:                                        ; preds = %for.body255
  %120 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call259, ptr %arrayidx257, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call259, i32 2304
  %lock = getelementptr %struct.card, ptr %call9.i.i, i32 0, i32 8, i32 %i.3582, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @wanxl_pci_init_one.__key, i16 noundef signext 3) #11
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %call259, i32 0, i32 107
  %121 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 50, ptr %tx_queue_len, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call259, i32 0, i32 16
  %122 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @wanxl_ops, ptr %netdev_ops, align 8
  %123 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @wanxl_attach, ptr %add.ptr.i.i, align 4
  %xmit = getelementptr i8, ptr %call259, i32 2308
  %124 = ptrtoint ptr %xmit to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @wanxl_xmit, ptr %xmit, align 4
  %card275 = getelementptr %struct.card, ptr %call9.i.i, i32 0, i32 8, i32 %i.3582, i32 1
  %125 = ptrtoint ptr %card275 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call9.i.i, ptr %card275, align 4
  %node = getelementptr %struct.card, ptr %call9.i.i, i32 0, i32 8, i32 %i.3582, i32 3
  %126 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %i.3582, ptr %node, align 4
  %127 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %status, align 4
  %clocking = getelementptr %struct.card_status, ptr %128, i32 0, i32 1, i32 %i.3582, i32 6
  %129 = ptrtoint ptr %clocking to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %clocking, align 4
  %call277 = tail call i32 @register_netdev(ptr noundef nonnull %call259) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %for.inc290, label %do.end282

do.end282:                                        ; preds = %if.end268
  %130 = ptrtoint ptr %init_name.i.i527 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %init_name.i.i527, align 8
  %tobool.not.i.i550 = icmp eq ptr %131, null
  br i1 %tobool.not.i.i550, label %if.end.i.i552, label %do.end282.pci_name.exit555_crit_edge

do.end282.pci_name.exit555_crit_edge:             ; preds = %do.end282
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit555

if.end.i.i552:                                    ; preds = %do.end282
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 4
  br label %pci_name.exit555

pci_name.exit555:                                 ; preds = %if.end.i.i552, %do.end282.pci_name.exit555_crit_edge
  %retval.0.i.i553 = phi ptr [ %133, %if.end.i.i552 ], [ %131, %do.end282.pci_name.exit555_crit_edge ]
  %call285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %retval.0.i.i553) #14
  tail call void @free_netdev(ptr noundef nonnull %call259) #11
  tail call void @wanxl_pci_remove_one(ptr noundef %pdev)
  br label %cleanup329

for.inc290:                                       ; preds = %if.end268
  %134 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %call9.i.i, align 128
  %inc287 = add i32 %135, 1
  store i32 %inc287, ptr %call9.i.i, align 128
  %inc291 = add nuw nsw i32 %i.3582, 1
  %exitcond591.not = icmp eq i32 %inc291, %switch.select473
  br i1 %exitcond591.not, label %do.end295, label %for.inc290.for.body255_crit_edge

for.inc290.for.body255_crit_edge:                 ; preds = %for.inc290
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body255

do.end295:                                        ; preds = %for.inc290
  %136 = ptrtoint ptr %init_name.i.i527 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %init_name.i.i527, align 8
  %tobool.not.i.i557 = icmp eq ptr %137, null
  br i1 %tobool.not.i.i557, label %if.end.i.i559, label %do.end295.pci_name.exit562_crit_edge

do.end295.pci_name.exit562_crit_edge:             ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit562

if.end.i.i559:                                    ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev, align 4
  br label %pci_name.exit562

pci_name.exit562:                                 ; preds = %if.end.i.i559, %do.end295.pci_name.exit562_crit_edge
  %retval.0.i.i560 = phi ptr [ %139, %if.end.i.i559 ], [ %137, %do.end295.pci_name.exit562_crit_edge ]
  %call298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %retval.0.i.i560) #14
  br label %do.end305

do.end305:                                        ; preds = %do.end305.do.end305_crit_edge, %pci_name.exit562
  %i.4583 = phi i32 [ 0, %pci_name.exit562 ], [ %inc313, %do.end305.do.end305_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4583)
  %tobool307.not = icmp eq i32 %i.4583, 0
  %cond = select i1 %tobool307.not, ptr @.str.52, ptr @.str.51
  %arrayidx309 = getelementptr %struct.card, ptr %call9.i.i, i32 0, i32 8, i32 %i.4583
  %140 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx309, align 4
  %call311 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull %cond, i32 noundef %i.4583, ptr noundef %141) #14
  %inc313 = add nuw nsw i32 %i.4583, 1
  %exitcond593.not = icmp eq i32 %inc313, %switch.select473
  br i1 %exitcond593.not, label %do.end317, label %do.end305.do.end305_crit_edge

do.end305.do.end305_crit_edge:                    ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end305

do.end317:                                        ; preds = %do.end305
  %call319 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #14
  br label %for.body323

for.body323:                                      ; preds = %for.body323.for.body323_crit_edge, %do.end317
  %i.5584 = phi i32 [ 0, %do.end317 ], [ %inc327, %for.body323.for.body323_crit_edge ]
  %arrayidx325 = getelementptr %struct.card, ptr %call9.i.i, i32 0, i32 8, i32 %i.5584
  tail call fastcc void @wanxl_cable_intr(ptr noundef %arrayidx325)
  %inc327 = add nuw nsw i32 %i.5584, 1
  %exitcond594.not = icmp eq i32 %inc327, %switch.select473
  br i1 %exitcond594.not, label %for.body323.cleanup329_crit_edge, label %for.body323.for.body323_crit_edge

for.body323.for.body323_crit_edge:                ; preds = %for.body323
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body323

for.body323.cleanup329_crit_edge:                 ; preds = %for.body323
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup329

cleanup329:                                       ; preds = %for.body323.cleanup329_crit_edge, %pci_name.exit555, %pci_name.exit548, %pci_name.exit541, %pci_name.exit526, %pci_name.exit519, %do.end145, %pci_name.exit493, %pci_name.exit486, %pci_name.exit480, %pci_name.exit, %do.end65, %do.end55, %if.then43, %if.then36, %if.then30, %do.end24, %if.end.cleanup329_crit_edge
  %retval.2 = phi i32 [ -5, %do.end24 ], [ %call28, %if.then30 ], [ -5, %do.end55 ], [ -19, %pci_name.exit ], [ -19, %pci_name.exit480 ], [ -19, %pci_name.exit486 ], [ -19, %pci_name.exit493 ], [ -19, %pci_name.exit519 ], [ -16, %pci_name.exit541 ], [ -19, %pci_name.exit526 ], [ -14, %do.end145 ], [ -14, %do.end65 ], [ -105, %if.then43 ], [ -105, %if.then36 ], [ %call12, %if.end.cleanup329_crit_edge ], [ -12, %pci_name.exit548 ], [ -105, %pci_name.exit555 ], [ 0, %for.body323.cleanup329_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wanxl_pci_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp61 = icmp sgt i32 %3, 0
  br i1 %cmp61, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.062 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.card, ptr %1, i32 0, i32 8, i32 %i.062
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @unregister_hdlc_device(ptr noundef %5) #11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @free_netdev(ptr noundef %7) #11
  %inc = add nuw nsw i32 %i.062, 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %irq = getelementptr inbounds %struct.card, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %11 to i32
  %call5 = tail call ptr @free_irq(i32 noundef %conv, ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %plx.i = getelementptr inbounds %struct.card, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %plx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 108
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  %15 = and i32 %14, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %plx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %plx.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 -2147483648) #11, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  %18 = or i32 %14, 64
  %19 = ptrtoint ptr %plx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %plx.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %20, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %18) #11, !srcloc !172
  %21 = ptrtoint ptr %plx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %plx.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %22, i32 108
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %plx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %plx.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %26, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %15) #11, !srcloc !172
  %27 = ptrtoint ptr %plx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %plx.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %28, i32 108
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  %pdev13 = getelementptr inbounds %struct.card, ptr %1, i32 0, i32 3
  %status = getelementptr inbounds %struct.card, ptr %1, i32 0, i32 6
  br label %for.body9

for.body9:                                        ; preds = %for.inc19.for.body9_crit_edge, %if.end
  %i.163 = phi i32 [ 0, %if.end ], [ %inc20, %for.inc19.for.body9_crit_edge ]
  %arrayidx10 = getelementptr %struct.card, ptr %1, i32 0, i32 5, i32 %i.163
  %30 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %31, null
  br i1 %tobool11.not, label %for.body9.for.inc19_crit_edge, label %if.then12

for.body9.for.inc19_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19

if.then12:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %status, align 4
  %address = getelementptr [40 x %struct.desc_t], ptr %35, i32 0, i32 %i.163, i32 1
  %36 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %address, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev14, i32 noundef %37, i32 noundef 1604, i32 noundef 2, i32 noundef 0) #11
  %38 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx10, align 4
  tail call void @consume_skb(ptr noundef %39) #11
  br label %for.inc19

for.inc19:                                        ; preds = %if.then12, %for.body9.for.inc19_crit_edge
  %inc20 = add nuw nsw i32 %i.163, 1
  %exitcond.not = icmp eq i32 %inc20, 40
  br i1 %exitcond.not, label %for.end21, label %for.inc19.for.body9_crit_edge

for.inc19.for.body9_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9

for.end21:                                        ; preds = %for.inc19
  %40 = ptrtoint ptr %plx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %plx.i, align 4
  %tobool22.not = icmp eq ptr %41, null
  br i1 %tobool22.not, label %for.end21.if.end25_crit_edge, label %if.then23

for.end21.if.end25_crit_edge:                     ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iounmap(ptr noundef nonnull %41) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end21.if.end25_crit_edge
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %status, align 4
  %tobool27.not = icmp eq ptr %43, null
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %status_address = getelementptr inbounds %struct.card, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %status_address to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status_address, align 4
  tail call void @dma_free_attrs(ptr noundef %dev29, i32 noundef 1072, ptr noundef nonnull %43, i32 noundef %45, i32 noundef 0) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wanxl_intr(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %plx = getelementptr inbounds %struct.card, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plx, align 4
  %add.ptr41 = getelementptr i8, ptr %1, i32 100
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not42 = icmp eq i32 %2, 0
  br i1 %cmp.not42, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %status.i = getelementptr inbounds %struct.card, ptr %dev_id, i32 0, i32 6
  %rx_in.i = getelementptr inbounds %struct.card, ptr %dev_id, i32 0, i32 4
  %pdev12.i = getelementptr inbounds %struct.card, ptr %dev_id, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %3, %while.body.lr.ph ], [ %124, %if.end16.while.body_crit_edge ]
  %5 = phi i32 [ %2, %while.body.lr.ph ], [ %123, %if.end16.while.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plx, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #11, !srcloc !172
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp437 = icmp sgt i32 %9, 0
  br i1 %cmp437, label %while.body.for.body_crit_edge, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.038
  %and = and i32 %shl, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.card, ptr %dev_id, i32 0, i32 8, i32 %i.038
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %card.i.i = getelementptr %struct.card, ptr %dev_id, i32 0, i32 8, i32 %i.038, i32 1
  %node.i.i = getelementptr %struct.card, ptr %dev_id, i32 0, i32 8, i32 %i.038, i32 3
  %tx_in.i = getelementptr %struct.card, ptr %dev_id, i32 0, i32 8, i32 %i.038, i32 5
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 5
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 18
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %sw.epilog.i, %if.then
  %12 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.card, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %status.i.i, align 4
  %16 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node.i.i, align 4
  %18 = ptrtoint ptr %tx_in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_in.i, align 4
  %arrayidx.i = getelementptr %struct.card_status, ptr %15, i32 0, i32 1, i32 %17, i32 7, i32 %19
  %arrayidx3.i = getelementptr %struct.card, ptr %dev_id, i32 0, i32 8, i32 %i.038, i32 7, i32 %19
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3.i, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %23, label %sw.default.i [
    i32 16, label %while.cond.i.wanxl_tx_intr.exit_crit_edge
    i32 0, label %while.cond.i.wanxl_tx_intr.exit_crit_edge43
    i32 48, label %sw.bb4.i
  ]

while.cond.i.wanxl_tx_intr.exit_crit_edge43:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wanxl_tx_intr.exit

while.cond.i.wanxl_tx_intr.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wanxl_tx_intr.exit

sw.bb4.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %27 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc6.i = add i32 %28, 1
  store i32 %inc6.i, ptr %tx_fifo_errors.i, align 8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_packets.i, align 4
  %inc8.i = add i32 %30, 1
  store i32 %inc8.i, ptr %tx_packets.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %33 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %34, %32
  store i32 %add.i, ptr %tx_bytes.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb4.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %arrayidx.i, align 4
  %36 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card.i.i, align 4
  %pdev.i = getelementptr inbounds %struct.card, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %address.i = getelementptr %struct.card_status, ptr %15, i32 0, i32 1, i32 %17, i32 7, i32 %19, i32 1
  %40 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %address.i, align 4
  %len12.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %42 = ptrtoint ptr %len12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len12.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev11.i, i32 noundef %41, i32 noundef %43, i32 noundef 1, i32 noundef 0) #11
  tail call void @__dev_kfree_skb_irq(ptr noundef %21, i32 noundef 0) #11
  %44 = ptrtoint ptr %tx_in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_in.i, align 4
  %add14.i = add i32 %45, 1
  %rem.i = srem i32 %add14.i, 10
  store i32 %rem.i, ptr %tx_in.i, align 4
  br label %while.cond.i

wanxl_tx_intr.exit:                               ; preds = %while.cond.i.wanxl_tx_intr.exit_crit_edge, %while.cond.i.wanxl_tx_intr.exit_crit_edge43
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %46 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %47) #11
  br label %if.end

if.end:                                           ; preds = %wanxl_tx_intr.exit, %for.body.if.end_crit_edge
  %shl6 = shl i32 32, %i.038
  %and7 = and i32 %shl6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %if.then9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx11 = getelementptr %struct.card, ptr %dev_id, i32 0, i32 8, i32 %i.038
  tail call fastcc void @wanxl_cable_intr(ptr noundef %arrayidx11)
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %48 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dev_id, align 4
  %cmp4 = icmp slt i32 %inc, %49
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  %and13 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.end.if.end16_crit_edge, label %if.then15

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %for.end
  %50 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %status.i, align 4
  %52 = ptrtoint ptr %rx_in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_in.i, align 4
  %arrayidx73.i = getelementptr [40 x %struct.desc_t], ptr %51, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx73.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not74.i = icmp eq i32 %55, 0
  br i1 %cmp.not74.i, label %if.then15.if.end16_crit_edge, label %if.then15.while.body.i_crit_edge

if.then15.while.body.i_crit_edge:                 ; preds = %if.then15
  br label %while.body.i

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %if.then15.while.body.i_crit_edge
  %arrayidx75.i = phi ptr [ %arrayidx.i36, %if.end32.i.while.body.i_crit_edge ], [ %arrayidx73.i, %if.then15.while.body.i_crit_edge ]
  %56 = phi i32 [ %rem.i35, %if.end32.i.while.body.i_crit_edge ], [ %53, %if.then15.while.body.i_crit_edge ]
  %57 = phi ptr [ %118, %if.end32.i.while.body.i_crit_edge ], [ %51, %if.then15.while.body.i_crit_edge ]
  %58 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx75.i, align 4
  %and.i = and i32 %59, 3
  %60 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %61)
  %cmp2.i = icmp ugt i32 %and.i, %61
  br i1 %cmp2.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %while.body.i
  %62 = ptrtoint ptr %pdev12.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev12.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44, i32 3
  %64 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %66 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %67, %if.end.i.i.i ], [ %65, %do.end.i.pci_name.exit.i_crit_edge ]
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %retval.0.i.i.i) #14
  br label %if.end32.i

if.else.i:                                        ; preds = %while.body.i
  %arrayidx5.i = getelementptr %struct.card, ptr %dev_id, i32 0, i32 5, i32 %56
  %68 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx5.i, align 4
  %70 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %arrayidx75.i, align 4
  %and7.i = and i32 %71, 3
  %arrayidx8.i = getelementptr %struct.card, ptr %dev_id, i32 0, i32 8, i32 %and7.i
  %72 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx8.i, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %if.then10.i, label %if.else11.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 36, i32 6
  %74 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_dropped.i, align 8
  %inc.i31 = add i32 %75, 1
  store i32 %inc.i31, ptr %rx_dropped.i, align 8
  br label %if.then21.i

if.else11.i:                                      ; preds = %if.else.i
  %76 = ptrtoint ptr %pdev12.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev12.i, align 4
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %address.i32 = getelementptr [40 x %struct.desc_t], ptr %57, i32 0, i32 %56, i32 1
  %78 = ptrtoint ptr %address.i32 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %address.i32, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev13.i, i32 noundef %79, i32 noundef 1604, i32 noundef 2, i32 noundef 0) #11
  %length.i = getelementptr [40 x %struct.desc_t], ptr %57, i32 0, i32 %56, i32 2
  %80 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %length.i, align 4
  %call14.i = tail call ptr @skb_put(ptr noundef nonnull %69, i32 noundef %81) #11
  %stats15.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 36
  %82 = ptrtoint ptr %stats15.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %stats15.i, align 8
  %inc16.i = add i32 %83, 1
  store i32 %inc16.i, ptr %stats15.i, align 8
  %len.i33 = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 6
  %84 = ptrtoint ptr %len.i33 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len.i33, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 36, i32 2
  %86 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_bytes.i, align 8
  %add.i34 = add i32 %87, %85
  store i32 %add.i34, ptr %rx_bytes.i, align 8
  %88 = getelementptr inbounds %struct.anon.44, ptr %69, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %73, ptr %88, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 19
  %90 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 18
  %92 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 15, i32 0, i32 21
  %94 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %proto.i.i = getelementptr i8, ptr %73, i32 2312
  %95 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %proto.i.i, align 4
  %type_trans.i.i = getelementptr inbounds %struct.hdlc_proto, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %type_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %type_trans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %98, null
  br i1 %tobool.not.i.i, label %if.else11.i.hdlc_type_trans.exit.i_crit_edge, label %if.then.i.i

if.else11.i.hdlc_type_trans.exit.i_crit_edge:     ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdlc_type_trans.exit.i

if.then.i.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = tail call zeroext i16 %98(ptr noundef nonnull %69, ptr noundef %73) #11
  br label %hdlc_type_trans.exit.i

hdlc_type_trans.exit.i:                           ; preds = %if.then.i.i, %if.else11.i.hdlc_type_trans.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %call3.i.i, %if.then.i.i ], [ 25, %if.else11.i.hdlc_type_trans.exit.i_crit_edge ]
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 15, i32 0, i32 18
  %99 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %retval.0.i.i, ptr %protocol.i, align 8
  %call19.i = tail call i32 @netif_rx(ptr noundef nonnull %69) #11
  br label %if.then21.i

if.then21.i:                                      ; preds = %hdlc_type_trans.exit.i, %if.then10.i
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1604, i32 noundef 2592) #11
  %tobool23.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool23.not.i, label %if.then21.i.cond.end.i_crit_edge, label %cond.true.i

if.then21.i.cond.end.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then21.i
  %100 = ptrtoint ptr %pdev12.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev12.i, align 4
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %102 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %103) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %cond.true.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cond.end.i_crit_edge, label %if.then.i69.i, !prof !167

land.rhs.i.i.cond.end.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

if.then.i69.i:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev25.i) #11
  %init_name.i.i67.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44, i32 3
  %104 = ptrtoint ptr %init_name.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i.i67.i, align 8
  %tobool.not.i.i68.i = icmp eq ptr %105, null
  br i1 %tobool.not.i.i68.i, label %if.end.i.i70.i, label %if.then.i69.i.dev_name.exit.i.i_crit_edge

if.then.i69.i.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i70.i:                                   ; preds = %if.then.i69.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev25.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i70.i, %if.then.i69.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i71.i = phi ptr [ %107, %if.end.i.i70.i ], [ %105, %if.then.i69.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i71.i) #11
  br label %cond.end.i

if.end39.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev25.i, ptr noundef %103, i32 noundef 1604) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %108 = load ptr, ptr @mem_map, align 4
  %109 = ptrtoint ptr %103 to i32
  %sub.i.i = add i32 %109, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %108, i32 %shr.i.i
  %and.i.i = and i32 %109, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev25.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 1604, i32 noundef 2, i32 noundef 0) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.cond.end.i_crit_edge, %if.then21.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ 0, %if.then21.i.cond.end.i_crit_edge ], [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.cond.end.i_crit_edge ]
  %address27.i = getelementptr [40 x %struct.desc_t], ptr %57, i32 0, i32 %56, i32 1
  %110 = ptrtoint ptr %address27.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %cond.i, ptr %address27.i, align 4
  %111 = ptrtoint ptr %rx_in.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_in.i, align 4
  %arrayidx30.i = getelementptr %struct.card, ptr %dev_id, i32 0, i32 5, i32 %112
  %113 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i.i.i, ptr %arrayidx30.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %cond.end.i, %pci_name.exit.i
  %114 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 0, ptr %arrayidx75.i, align 4
  %115 = ptrtoint ptr %rx_in.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_in.i, align 4
  %add35.i = add i32 %116, 1
  %rem.i35 = srem i32 %add35.i, 40
  store i32 %rem.i35, ptr %rx_in.i, align 4
  %117 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %status.i, align 4
  %arrayidx.i36 = getelementptr [40 x %struct.desc_t], ptr %118, i32 0, i32 %rem.i35
  %119 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %arrayidx.i36, align 4
  %cmp.not.i = icmp eq i32 %120, 0
  br i1 %cmp.not.i, label %if.end32.i.if.end16_crit_edge, label %if.end32.i.while.body.i_crit_edge

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end32.i.if.end16_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %if.end32.i.if.end16_crit_edge, %if.then15.if.end16_crit_edge, %for.end.if.end16_crit_edge
  %121 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %plx, align 4
  %add.ptr = getelementptr i8, ptr %122, i32 100
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !168
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  %cmp.not = icmp eq i32 %123, 0
  br i1 %cmp.not, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %entry.while.end_crit_edge
  %tobool17.not.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 1, %if.end16.while.end_crit_edge ]
  ret i32 %tobool17.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_hdlcdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wanxl_attach(ptr nocapture noundef readonly %dev, i16 noundef zeroext %encoding, i16 noundef zeroext %parity) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %conv = zext i16 %encoding to i32
  %encoding.off = add i16 %encoding, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %encoding.off)
  %switch = icmp ult i16 %encoding.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i16 %parity to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %parity, label %if.end.cleanup_crit_edge [
    i16 1, label %if.end.if.end25_crit_edge
    i16 7, label %if.end.if.end25_crit_edge44
    i16 5, label %if.end.if.end25_crit_edge45
    i16 6, label %if.end.if.end25_crit_edge46
    i16 4, label %if.end.if.end25_crit_edge47
  ]

if.end.if.end25_crit_edge47:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.if.end25_crit_edge46:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.if.end25_crit_edge45:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.if.end25_crit_edge44:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.end.if.end25_crit_edge, %if.end.if.end25_crit_edge44, %if.end.if.end25_crit_edge45, %if.end.if.end25_crit_edge46, %if.end.if.end25_crit_edge47
  %conv5 = zext i16 %parity to i32
  %card.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card.i, align 4
  %status.i = getelementptr inbounds %struct.card, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %status.i, align 4
  %node.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %node.i, align 4
  %encoding28 = getelementptr %struct.card_status, ptr %6, i32 0, i32 1, i32 %8, i32 5
  %9 = ptrtoint ptr %encoding28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %encoding28, align 4
  %10 = load ptr, ptr %card.i, align 4
  %status.i41 = getelementptr inbounds %struct.card, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %status.i41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %status.i41, align 4
  %13 = load i32, ptr %node.i, align 4
  %parity31 = getelementptr %struct.card_status, ptr %12, i32 0, i32 1, i32 %13, i32 4
  %14 = ptrtoint ptr %parity31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv5, ptr %parity31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wanxl_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %lock = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %card.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %status.i = getelementptr inbounds %struct.card, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status.i, align 4
  %node.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node.i, align 4
  %tx_out = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %tx_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_out, align 4
  %arrayidx = getelementptr %struct.card_status, ptr %5, i32 0, i32 1, i32 %7, i32 7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %arrayidx4 = getelementptr %struct.port, ptr %1, i32 0, i32 7, i32 %9
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %skb, ptr %arrayidx4, align 4
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %pdev = getelementptr inbounds %struct.card, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %18) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !167

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev5) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev5, ptr noundef %18, i32 noundef %20) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %18 to i32
  %sub.i = add i32 %26, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %25, i32 %shr.i
  %and.i = and i32 %26, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %20, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %address = getelementptr %struct.card_status, ptr %5, i32 0, i32 1, i32 %7, i32 7, i32 %9, i32 1
  %27 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i, ptr %address, align 4
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %length = getelementptr %struct.card_status, ptr %5, i32 0, i32 1, i32 %7, i32 7, i32 %9, i32 2
  %30 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %29, ptr %length, align 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 16, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %node.i, align 4
  %add = add i32 %33, 8
  %shl = shl nuw i32 1, %add
  %34 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %35 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card.i, align 4
  %plx = getelementptr inbounds %struct.card, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %plx, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %34) #11, !srcloc !172
  %39 = ptrtoint ptr %tx_out to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_out, align 4
  %add11 = add i32 %40, 1
  %rem = srem i32 %add11, 10
  store i32 %rem, ptr %tx_out, align 4
  %41 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card.i, align 4
  %status.i45 = getelementptr inbounds %struct.card, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %status.i45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %status.i45, align 4
  %45 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %node.i, align 4
  %arrayidx16 = getelementptr %struct.card_status, ptr %44, i32 0, i32 1, i32 %46, i32 7, i32 %rem
  %47 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp18.not = icmp eq i32 %48, 0
  br i1 %cmp18.not, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %dma_map_single_attrs.exit.cleanup.sink.split_crit_edge

dma_map_single_attrs.exit.cleanup.sink.split_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %dma_map_single_attrs.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 16, %entry.cleanup.sink.split_crit_edge ], [ 0, %dma_map_single_attrs.exit.cleanup.sink.split_crit_edge ]
  %_tx.i.i48 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %49 = ptrtoint ptr %_tx.i.i48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i48, align 128
  %state.i.i49 = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i49) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %dma_map_single_attrs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wanxl_cable_intr(ptr nocapture noundef readonly %port) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %card.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card.i, align 4
  %status.i = getelementptr inbounds %struct.card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status.i, align 4
  %node.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 3
  %4 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node.i, align 4
  %cable = getelementptr %struct.card_status, ptr %3, i32 0, i32 1, i32 %5, i32 1
  %6 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cable, align 4
  %and = and i32 %7, 7
  %switch.tableidx = add nsw i32 %and, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 6
  br i1 %8, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.wanxl_cable_intr, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %cable1.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.73, %entry.sw.epilog_crit_edge ]
  %shr = lshr i32 %7, 5
  %and6 = and i32 %shr, 7
  %10 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %and6, label %sw.default12 [
    i32 2, label %sw.epilog.if.then_crit_edge
    i32 3, label %sw.bb8
    i32 4, label %sw.bb9
    i32 5, label %sw.bb10
    i32 7, label %sw.epilog.if.end26_crit_edge
  ]

sw.epilog.if.end26_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sw.default12:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then:                                          ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %sw.epilog.if.then_crit_edge
  %pm.0.ph = phi ptr [ @.str.68, %sw.epilog.if.then_crit_edge ], [ @.str.69, %sw.bb8 ], [ @.str.70, %sw.bb9 ], [ @.str.71, %sw.bb10 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and6)
  %cmp = icmp eq i32 %and, %and6
  br i1 %cmp, label %if.then17, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %and18 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %cond = select i1 %tobool19.not, ptr @.str.77, ptr @.str.76
  %and20 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.79, ptr @.str.78
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then.if.end_crit_edge
  %dsr.0 = phi ptr [ %cond, %if.then17 ], [ @.str.52, %if.then.if.end_crit_edge ]
  %dcd.0 = phi ptr [ %cond22, %if.then17 ], [ @.str.52, %if.then.if.end_crit_edge ]
  %and23 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cond25 = select i1 %tobool24.not, ptr @.str.81, ptr @.str.80
  br label %if.end26

if.end26:                                         ; preds = %if.end, %sw.default12, %sw.epilog.if.end26_crit_edge
  %pm.046 = phi ptr [ %pm.0.ph, %if.end ], [ @.str.75, %sw.default12 ], [ @.str.74, %sw.epilog.if.end26_crit_edge ]
  %dte.0 = phi ptr [ %cond25, %if.end ], [ @.str.52, %sw.default12 ], [ @.str.52, %sw.epilog.if.end26_crit_edge ]
  %dsr.1 = phi ptr [ %dsr.0, %if.end ], [ @.str.52, %sw.default12 ], [ @.str.52, %sw.epilog.if.end26_crit_edge ]
  %dcd.1 = phi ptr [ %dcd.0, %if.end ], [ @.str.52, %sw.default12 ], [ @.str.52, %sw.epilog.if.end26_crit_edge ]
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %12, ptr noundef nonnull @.str.82, ptr noundef nonnull %pm.046, ptr noundef nonnull %dte.0, ptr noundef nonnull %cable1.0, ptr noundef %dsr.1, ptr noundef %dcd.1) #14
  %and27 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 4
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_carrier_on(ptr noundef %14) #11
  br label %if.end32

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_carrier_off(ptr noundef %14) #11
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then29
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wanxl_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %card = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %plx = getelementptr inbounds %struct.card, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 96
  %status.i = getelementptr inbounds %struct.card, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %status.i, align 4
  %node.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node.i, align 4
  %arrayidx.i = getelementptr %struct.card_status, ptr %7, i32 0, i32 1, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @hdlc_open(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tx_out = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %tx_out to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tx_out, align 4
  %tx_in = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %tx_in to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_in, align 4
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %status.i43 = getelementptr inbounds %struct.card, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %status.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %status.i43, align 4
  %18 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node.i, align 4
  %arrayidx = getelementptr %struct.card_status, ptr %17, i32 0, i32 1, i32 %19, i32 7, i32 0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %arrayidx, align 4
  %21 = load ptr, ptr %card, align 4
  %status.i43.1 = getelementptr inbounds %struct.card, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %status.i43.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %status.i43.1, align 4
  %24 = load i32, ptr %node.i, align 4
  %arrayidx.1 = getelementptr %struct.card_status, ptr %23, i32 0, i32 1, i32 %24, i32 7, i32 1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %arrayidx.1, align 4
  %26 = load ptr, ptr %card, align 4
  %status.i43.2 = getelementptr inbounds %struct.card, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %status.i43.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %status.i43.2, align 4
  %29 = load i32, ptr %node.i, align 4
  %arrayidx.2 = getelementptr %struct.card_status, ptr %28, i32 0, i32 1, i32 %29, i32 7, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %arrayidx.2, align 4
  %31 = load ptr, ptr %card, align 4
  %status.i43.3 = getelementptr inbounds %struct.card, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %status.i43.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %status.i43.3, align 4
  %34 = load i32, ptr %node.i, align 4
  %arrayidx.3 = getelementptr %struct.card_status, ptr %33, i32 0, i32 1, i32 %34, i32 7, i32 3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %arrayidx.3, align 4
  %36 = load ptr, ptr %card, align 4
  %status.i43.4 = getelementptr inbounds %struct.card, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %status.i43.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %status.i43.4, align 4
  %39 = load i32, ptr %node.i, align 4
  %arrayidx.4 = getelementptr %struct.card_status, ptr %38, i32 0, i32 1, i32 %39, i32 7, i32 4
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %arrayidx.4, align 4
  %41 = load ptr, ptr %card, align 4
  %status.i43.5 = getelementptr inbounds %struct.card, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %status.i43.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %status.i43.5, align 4
  %44 = load i32, ptr %node.i, align 4
  %arrayidx.5 = getelementptr %struct.card_status, ptr %43, i32 0, i32 1, i32 %44, i32 7, i32 5
  %45 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %arrayidx.5, align 4
  %46 = load ptr, ptr %card, align 4
  %status.i43.6 = getelementptr inbounds %struct.card, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %status.i43.6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %status.i43.6, align 4
  %49 = load i32, ptr %node.i, align 4
  %arrayidx.6 = getelementptr %struct.card_status, ptr %48, i32 0, i32 1, i32 %49, i32 7, i32 6
  %50 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %arrayidx.6, align 4
  %51 = load ptr, ptr %card, align 4
  %status.i43.7 = getelementptr inbounds %struct.card, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %status.i43.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %status.i43.7, align 4
  %54 = load i32, ptr %node.i, align 4
  %arrayidx.7 = getelementptr %struct.card_status, ptr %53, i32 0, i32 1, i32 %54, i32 7, i32 7
  %55 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %arrayidx.7, align 4
  %56 = load ptr, ptr %card, align 4
  %status.i43.8 = getelementptr inbounds %struct.card, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %status.i43.8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %status.i43.8, align 4
  %59 = load i32, ptr %node.i, align 4
  %arrayidx.8 = getelementptr %struct.card_status, ptr %58, i32 0, i32 1, i32 %59, i32 7, i32 8
  %60 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 0, ptr %arrayidx.8, align 4
  %61 = load ptr, ptr %card, align 4
  %status.i43.9 = getelementptr inbounds %struct.card, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %status.i43.9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %status.i43.9, align 4
  %64 = load i32, ptr %node.i, align 4
  %arrayidx.9 = getelementptr %struct.card_status, ptr %63, i32 0, i32 1, i32 %64, i32 7, i32 9
  %65 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 0, ptr %arrayidx.9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  %66 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %node.i, align 4
  %shl = shl nuw i32 1, %67
  %68 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %68) #11, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %70 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card, align 4
  %status.i47 = getelementptr inbounds %struct.card, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %status.i47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %status.i47, align 4
  %74 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %node.i, align 4
  %arrayidx.i49 = getelementptr %struct.card_status, ptr %73, i32 0, i32 1, i32 %75
  %add7.neg = sub i32 -100, %69
  br label %do.body8

do.body8:                                         ; preds = %do.cond14.do.body8_crit_edge, %if.end5
  %76 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %arrayidx.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool11.not = icmp eq i32 %77, 0
  br i1 %tobool11.not, label %do.cond14, label %if.then12

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %78 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %79, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %cleanup

do.cond14:                                        ; preds = %do.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add7.neg, %80
  %cmp15 = icmp slt i32 %sub, 0
  br i1 %cmp15, label %do.cond14.do.body8_crit_edge, label %do.end16

do.cond14.do.body8_crit_edge:                     ; preds = %do.cond14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

do.end16:                                         ; preds = %do.cond14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %81 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %node.i, align 4
  %add21 = add i32 %82, 4
  %shl22 = shl nuw i32 1, %add21
  %83 = tail call i32 @llvm.bswap.i32(i32 %shl22)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %83) #11, !srcloc !172
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.then12, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %if.then12 ], [ -14, %do.end16 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wanxl_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  tail call void @hdlc_close(ptr noundef %dev) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @arm_heavy_mb() #11
  %node = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node, align 4
  %add = add i32 %3, 4
  %shl = shl nuw i32 1, %add
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %card = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %plx = getelementptr inbounds %struct.card, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %plx, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #11, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %status.i = getelementptr inbounds %struct.card, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %status.i, align 4
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node, align 4
  %arrayidx.i = getelementptr %struct.card_status, ptr %13, i32 0, i32 1, i32 %15
  %add1.neg = sub i32 -100, %9
  br label %do.body2

do.body2:                                         ; preds = %do.cond4.do.body2_crit_edge, %entry
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.body2.do.end5_crit_edge, label %do.cond4

do.body2.do.end5_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.cond4:                                         ; preds = %do.body2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add1.neg, %18
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.cond4.do.body2_crit_edge, label %do.cond4.do.end5_crit_edge

do.cond4.do.end5_crit_edge:                       ; preds = %do.cond4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.cond4.do.body2_crit_edge:                      ; preds = %do.cond4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.end5:                                          ; preds = %do.cond4.do.end5_crit_edge, %do.body2.do.end5_crit_edge
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %do.end5.if.end10_crit_edge, label %if.then9

do.end5.if.end10_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.64) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.end5.if.end10_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %if.end10
  %i.046 = phi i32 [ 0, %if.end10 ], [ %inc, %if.end21.for.body_crit_edge ]
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %status.i43 = getelementptr inbounds %struct.card, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %status.i43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %status.i43, align 4
  %27 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %node, align 4
  %arrayidx = getelementptr %struct.card_status, ptr %26, i32 0, i32 1, i32 %28, i32 7, i32 %i.046
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp13.not = icmp eq i32 %30, 0
  br i1 %cmp13.not, label %for.body.if.end21_crit_edge, label %if.then14

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card, align 4
  %pdev = getelementptr inbounds %struct.card, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %address = getelementptr %struct.card_status, ptr %26, i32 0, i32 1, i32 %28, i32 7, i32 %i.046, i32 1
  %36 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %address, align 4
  %arrayidx18 = getelementptr %struct.port, ptr %1, i32 0, i32 7, i32 %i.046
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx18, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev17, i32 noundef %37, i32 noundef %41, i32 noundef 1, i32 noundef 0) #11
  %42 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx18, align 4
  tail call void @consume_skb(ptr noundef %43) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %for.body.if.end21_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wanxl_ioctl(ptr noundef %dev, ptr noundef %ifs) #2 align 64 {
entry:
  %line = alloca %struct.sync_serial_settings, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %line) #11
  %0 = call ptr @memset(ptr %line, i32 255, i32 12)
  %priv.i = getelementptr i8, ptr %dev, i32 2372
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %3 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifs, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 4101, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4101, ptr %ifs, align 4
  %size2 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %7 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp = icmp ult i32 %8, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %size2, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %10 = call ptr @memset(ptr %line, i32 0, i32 12)
  %card.i = getelementptr inbounds %struct.port, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card.i, align 4
  %status.i = getelementptr inbounds %struct.card, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %status.i, align 4
  %node.i = getelementptr inbounds %struct.port, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %node.i, align 4
  %clocking = getelementptr %struct.card_status, ptr %14, i32 0, i32 1, i32 %16, i32 6
  %17 = ptrtoint ptr %clocking to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clocking, align 4
  %clock_type = getelementptr inbounds %struct.sync_serial_settings, ptr %line, i32 0, i32 1
  %19 = ptrtoint ptr %clock_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %clock_type, align 4
  %20 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %line, align 4
  %loopback = getelementptr inbounds %struct.sync_serial_settings, ptr %line, i32 0, i32 2
  %21 = ptrtoint ptr %loopback to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %loopback, align 4
  %ifs_ifsu = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %22 = ptrtoint ptr %ifs_ifsu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ifs_ifsu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 12, i32 -1226833920) #16, !srcloc !192
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %line, i32 noundef 12) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef nonnull %line, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %call9 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call9, label %if.end11, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %sw.bb8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 8
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %ifs_ifsu15 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %27 = ptrtoint ptr %ifs_ifsu15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ifs_ifsu15, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 156) #11
  %call.i.i48 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i48, label %if.end14.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end14.if.then11.i.i_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end14
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 12, i32 -1226833920) #16, !srcloc !193
  %asmresult.i.i50 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i50)
  %cmp.i.i51 = icmp eq i32 %asmresult.i.i50, 0
  br i1 %cmp.i.i51, label %if.end.i.i53, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !167

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i53:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i52 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %line, i32 noundef 12) #11
  %30 = call i32 @llvm.read_register.i32(metadata !157) #11
  %and.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !194
  %and.i.i.i.i = and i32 %32, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %line, ptr noundef %28, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #11, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end19, label %if.end.i.i53.if.then11.i.i_crit_edge, !prof !167

if.end.i.i53.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i53.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end14.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i53.if.then11.i.i_crit_edge ], [ 12, %if.end14.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %line, i32 %sub.i.i
  %33 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end19:                                         ; preds = %if.end.i.i53
  %clock_type20 = getelementptr inbounds %struct.sync_serial_settings, ptr %line, i32 0, i32 1
  %34 = ptrtoint ptr %clock_type20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clock_type20, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %35, label %if.end19.cleanup_crit_edge [
    i32 1, label %if.end19.if.end25_crit_edge
    i32 4, label %if.end19.if.end25_crit_edge63
  ]

if.end19.if.end25_crit_edge63:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.end19.if.end25_crit_edge, %if.end19.if.end25_crit_edge63
  %loopback26 = getelementptr inbounds %struct.sync_serial_settings, ptr %line, i32 0, i32 2
  %37 = ptrtoint ptr %loopback26 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %loopback26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp27.not = icmp eq i16 %38, 0
  br i1 %cmp27.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %card.i55 = getelementptr inbounds %struct.port, ptr %2, i32 0, i32 1
  %39 = ptrtoint ptr %card.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card.i55, align 4
  %status.i56 = getelementptr inbounds %struct.card, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %status.i56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %status.i56, align 4
  %node.i57 = getelementptr inbounds %struct.port, ptr %2, i32 0, i32 3
  %43 = ptrtoint ptr %node.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %node.i57, align 4
  %clocking33 = getelementptr %struct.card_status, ptr %42, i32 0, i32 1, i32 %44, i32 6
  %45 = ptrtoint ptr %clocking33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %35, ptr %clocking33, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 @hdlc_ioctl(ptr noundef %dev, ptr noundef %ifs) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end30, %if.end25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then11.i.i, %if.end11.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call34, %sw.default ], [ 0, %if.end30 ], [ -105, %if.then ], [ -1, %sw.bb8.cleanup_crit_edge ], [ -16, %if.end11.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %if.end25.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @wanxl_get_stats(ptr noundef %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %card.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %status.i = getelementptr inbounds %struct.card, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status.i, align 4
  %node.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node.i, align 4
  %rx_overruns = getelementptr %struct.card_status, ptr %5, i32 0, i32 1, i32 %7, i32 2
  %8 = ptrtoint ptr %rx_overruns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %rx_overruns, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %10 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rx_over_errors, align 4
  %11 = load ptr, ptr %card.i, align 4
  %status.i19 = getelementptr inbounds %struct.card, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %status.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %status.i19, align 4
  %14 = load i32, ptr %node.i, align 4
  %rx_frame_errors = getelementptr %struct.card_status, ptr %13, i32 0, i32 1, i32 %14, i32 3
  %15 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %rx_frame_errors, align 4
  %rx_frame_errors4 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %17 = ptrtoint ptr %rx_frame_errors4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rx_frame_errors4, align 4
  %add = add i32 %16, %9
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %18 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %rx_errors, align 8
  ret ptr %stats
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdlc_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hdlc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !91, !93, !94, !95, !97, !99, !101, !102, !103, !105, !107, !108, !109, !110, !112, !114, !116, !118, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155}
!llvm.named.register.sp = !{!157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__UNIQUE_ID_author339, !1, !"__UNIQUE_ID_author339", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/wanxl.c", i32 838, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../drivers/net/wan/wanxl.c", i32 839, i32 1}
!4 = !{ptr @__UNIQUE_ID_file341, !5, !"__UNIQUE_ID_file341", i1 false, i1 false}
!5 = !{!"../drivers/net/wan/wanxl.c", i32 840, i32 1}
!6 = !{ptr @__UNIQUE_ID_license342, !5, !"__UNIQUE_ID_license342", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_wanxl__343_843_wanxl_init_module6, !8, !"__initcall__kmod_wanxl__343_843_wanxl_init_module6", i1 false, i1 false}
!8 = !{!"../drivers/net/wan/wanxl.c", i32 843, i32 1}
!9 = !{ptr @__exitcall_wanxl_cleanup_module, !10, !"__exitcall_wanxl_cleanup_module", i1 false, i1 false}
!10 = !{!"../drivers/net/wan/wanxl.c", i32 844, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wan/wanxl.c", i32 819, i32 11}
!13 = !{ptr @wanxl_pci_driver, !14, !"wanxl_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/wan/wanxl.c", i32 818, i32 26}
!15 = !{ptr @wanxl_pci_tbl, !16, !"wanxl_pci_tbl", i1 false, i1 false}
!16 = !{!"../drivers/net/wan/wanxl.c", i32 808, i32 35}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wan/wanxl.c", i32 561, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wanxl_pci_init_one._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @wanxl_pci_init_one._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wan/wanxl.c", i32 579, i32 3}
!26 = !{ptr @wanxl_pci_init_one._entry.4, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wanxl_pci_init_one._entry_ptr.6, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @wanxl_pci_init_one._entry.7, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/net/wan/wanxl.c", i32 631, i32 3}
!30 = !{ptr @wanxl_pci_init_one._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wan/wanxl.c", i32 641, i32 3}
!33 = !{ptr @wanxl_pci_init_one._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @wanxl_pci_init_one._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wan/wanxl.c", i32 653, i32 4}
!37 = !{ptr @wanxl_pci_init_one._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @wanxl_pci_init_one._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wan/wanxl.c", i32 665, i32 4}
!41 = !{ptr @wanxl_pci_init_one._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @wanxl_pci_init_one._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wan/wanxl.c", i32 683, i32 3}
!45 = !{ptr @wanxl_pci_init_one._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @wanxl_pci_init_one._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wan/wanxl.c", i32 692, i32 3}
!49 = !{ptr @wanxl_pci_init_one._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @wanxl_pci_init_one._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @wanxl_pci_init_one._entry.24, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/net/wan/wanxl.c", i32 709, i32 3}
!53 = !{ptr @wanxl_pci_init_one._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wan/wanxl.c", i32 728, i32 3}
!56 = !{ptr @wanxl_pci_init_one._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @wanxl_pci_init_one._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wan/wanxl.c", i32 742, i32 3}
!60 = !{ptr @wanxl_pci_init_one._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @wanxl_pci_init_one._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wan/wanxl.c", i32 752, i32 2}
!64 = !{ptr @wanxl_pci_init_one._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @wanxl_pci_init_one._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wan/wanxl.c", i32 757, i32 3}
!68 = !{ptr @wanxl_pci_init_one._entry.35, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @wanxl_pci_init_one._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wan/wanxl.c", i32 770, i32 4}
!72 = !{ptr @wanxl_pci_init_one._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @wanxl_pci_init_one._entry_ptr.40, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @wanxl_pci_init_one.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/wan/wanxl.c", i32 778, i32 3}
!76 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wan/wanxl.c", i32 787, i32 4}
!79 = !{ptr @wanxl_pci_init_one._entry.42, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @wanxl_pci_init_one._entry_ptr.44, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wan/wanxl.c", i32 796, i32 2}
!83 = !{ptr @wanxl_pci_init_one._entry.45, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wanxl_pci_init_one._entry_ptr.47, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wan/wanxl.c", i32 798, i32 3}
!87 = !{ptr @wanxl_pci_init_one._entry.48, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @wanxl_pci_init_one._entry_ptr.50, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wan/wanxl.c", i32 800, i32 2}
!93 = !{ptr @wanxl_pci_init_one._entry.53, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @wanxl_pci_init_one._entry_ptr.55, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wan/wanxl.c", i32 35, i32 30}
!97 = distinct !{null, !98, !"version", i1 false, i1 false}
!98 = !{!"../drivers/net/wan/wanxl.c", i32 35, i32 20}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!101 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @firmware, !104, !"firmware", i1 false, i1 false}
!104 = !{!"./drivers/net/wan/wanxlfw.inc", i32 1, i32 11}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wan/wanxl.c", i32 214, i32 4}
!107 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @wanxl_rx_intr._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @wanxl_rx_intr._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @wanxl_ops, !111, !"wanxl_ops", i1 false, i1 false}
!111 = !{!"../drivers/net/wan/wanxl.c", i32 541, i32 36}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wan/wanxl.c", i32 401, i32 19}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wan/wanxl.c", i32 423, i32 18}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wan/wanxl.c", i32 447, i32 19}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!120 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!125 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wan/wanxl.c", i32 116, i32 11}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wan/wanxl.c", i32 119, i32 11}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wan/wanxl.c", i32 122, i32 11}
!131 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wan/wanxl.c", i32 125, i32 11}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wan/wanxl.c", i32 128, i32 11}
!135 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wan/wanxl.c", i32 131, i32 11}
!137 = !{ptr @.str.74, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wan/wanxl.c", i32 148, i32 8}
!139 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wan/wanxl.c", i32 152, i32 8}
!141 = !{ptr @.str.76, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wan/wanxl.c", i32 158, i32 39}
!143 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wan/wanxl.c", i32 159, i32 5}
!145 = !{ptr @.str.78, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wan/wanxl.c", i32 160, i32 39}
!147 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wan/wanxl.c", i32 161, i32 5}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wan/wanxl.c", i32 163, i32 38}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wan/wanxl.c", i32 163, i32 47}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wan/wanxl.c", i32 165, i32 25}
!155 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wan/wanxl.c", i32 830, i32 9}
!157 = !{!"sp"}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{i64 5053471}
!169 = !{i64 2156288075}
!170 = !{i64 2156292528}
!171 = !{i64 2156261954}
!172 = !{i64 5053053}
!173 = !{i64 2156262667}
!174 = !{i64 2156298986}
!175 = !{i64 2156299639}
!176 = !{i64 2156300353}
!177 = !{i64 2156300789}
!178 = !{i64 2156301207}
!179 = !{i64 2156303655}
!180 = !{i64 2156263545}
!181 = !{i64 2156263799}
!182 = !{i64 2156264255}
!183 = !{i64 2156265025}
!184 = !{i64 2156265809}
!185 = !{i64 2156266540}
!186 = !{i64 2156258225}
!187 = !{i64 2156258468}
!188 = !{i64 2156259068}
!189 = !{i64 2156259649}
!190 = !{i64 2156260448}
!191 = !{i64 2156260938}
!192 = !{i64 2153814064, i64 2153814089}
!193 = !{i64 2153813383, i64 2153813408}
!194 = !{i64 6308938}
!195 = !{i64 6309135}
!196 = !{i64 2153794368}
