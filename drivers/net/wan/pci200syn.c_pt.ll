; ModuleID = '/llk/IR_all_yes/drivers/net/wan/pci200syn.c_pt.bc'
source_filename = "../drivers/net/wan/pci200syn.c"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.card_s = type { ptr, ptr, ptr, i16, i16, i16, i8, [2 x %struct.port_s] }
%struct.port_s = type { %struct.napi_struct, ptr, ptr, %struct.spinlock, %struct.sync_serial_settings, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.sync_serial_settings = type { i32, i32, i16 }
%struct.plx9052 = type { [4 x i32], i32, [4 x i32], i32, [4 x i32], i32, [4 x i32], i32, i32 }
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
%struct.pkt_desc = type { i32, i32, i16, i8, i8 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.if_settings = type { i32, i32, %union.anon.107 }
%union.anon.107 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pci200_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pci200_pci_tbl, ptr @pci200_pci_init_one, ptr @pci200_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author341 = internal constant [50 x i8] c"pci200syn.author=Krzysztof Halasa <khc@pm.waw.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [58 x i8] c"pci200syn.description=Goramo PCI200SYN serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [41 x i8] c"pci200syn.file=drivers/net/wan/pci200syn\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [25 x i8] c"pci200syn.license=GPL v2\00", section ".modinfo", align 1
@__param_str_pci_clock_freq = internal constant [25 x i8] c"pci200syn.pci_clock_freq\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pci_clock_freq = internal global { i32, [28 x i8] } { i32 33000000, [28 x i8] zeroinitializer }, align 32
@__param_pci_clock_freq = internal constant %struct.kernel_param { ptr @__param_str_pci_clock_freq, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @pci_clock_freq } }, section "__param", align 4
@__UNIQUE_ID_pci_clock_freqtype345 = internal constant [38 x i8] c"pci200syn.parmtype=pci_clock_freq:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pci_clock_freq346 = internal constant [63 x i8] c"pci200syn.parm=pci_clock_freq:System PCI clock frequency in Hz\00", section ".modinfo", align 1
@__initcall__kmod_pci200syn__347_432_pci200_init_module6 = internal global ptr @pci200_init_module, section ".initcall6.init", align 4
@__exitcall_pci200_cleanup_module = internal global ptr @pci200_cleanup_module, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCI200SYN\00", [22 x i8] zeroinitializer }, align 32
@pci200_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 12694, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pci200_pci_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013pci200syn: unable to allocate memory\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci200_pci_init_one\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/wan/pci200syn.c\00", [36 x i8] zeroinitializer }, align 32
@pci200_pci_init_one._entry_ptr = internal global ptr @pci200_pci_init_one._entry, section ".printk_index", align 4
@pci200_pci_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013pci200syn: invalid card EEPROM parameters\0A\00", [51 x i8] zeroinitializer }, align 32
@pci200_pci_init_one._entry_ptr.6 = internal global ptr @pci200_pci_init_one._entry.4, section ".printk_index", align 4
@pci200_pci_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013pci200syn: ioremap() failed\0A\00", [33 x i8] zeroinitializer }, align 32
@pci200_pci_init_one._entry_ptr.9 = internal global ptr @pci200_pci_init_one._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pci200_pci_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016pci200syn: %u KB RAM at 0x%x, IRQ%u, using %u TX + %u RX packets rings\0A\00", [54 x i8] zeroinitializer }, align 32
@pci200_pci_init_one._entry_ptr.12 = internal global ptr @pci200_pci_init_one._entry.10, section ".printk_index", align 4
@pci200_pci_init_one._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013pci200syn: RAM test failed\0A\00", [34 x i8] zeroinitializer }, align 32
@pci200_pci_init_one._entry_ptr.15 = internal global ptr @pci200_pci_init_one._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci200syn\00", [22 x i8] zeroinitializer }, align 32
@pci200_pci_init_one._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014pci200syn: could not allocate IRQ%d\0A\00", [57 x i8] zeroinitializer }, align 32
@pci200_pci_init_one._entry_ptr.19 = internal global ptr @pci200_pci_init_one._entry.17, section ".printk_index", align 4
@pci200_pci_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@pci200_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @pci200_open, ptr @pci200_close, ptr @hdlc_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci200_ioctl, ptr @pci200_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@pci200_pci_init_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013pci200syn: unable to register hdlc device\0A\00", [51 x i8] zeroinitializer }, align 32
@pci200_pci_init_one._entry_ptr.23 = internal global ptr @pci200_pci_init_one._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PCI200SYN channel %d\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sca_dump_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017RX ring: CDA=%u EDA=%u DSR=%02X in=%u %sactive\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sca_dump_rings\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/wan/hd64572.c\00", [38 x i8] zeroinitializer }, align 32
@sca_dump_rings._entry_ptr = internal global ptr @sca_dump_rings._entry, section ".printk_index", align 4
@.str.31 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@sca_dump_rings._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.30, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02X\00", [24 x i8] zeroinitializer }, align 32
@sca_dump_rings._entry_ptr.35 = internal global ptr @sca_dump_rings._entry.33, section ".printk_index", align 4
@sca_dump_rings._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.30, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@sca_dump_rings._entry_ptr.38 = internal global ptr @sca_dump_rings._entry.36, section ".printk_index", align 4
@sca_dump_rings._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.30, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017TX ring: CDA=%u EDA=%u DSR=%02X in=%u last=%u %sactive\00", [39 x i8] zeroinitializer }, align 32
@sca_dump_rings._entry_ptr.41 = internal global ptr @sca_dump_rings._entry.39, section ".printk_index", align 4
@sca_dump_rings._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.30, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sca_dump_rings._entry_ptr.43 = internal global ptr @sca_dump_rings._entry.42, section ".printk_index", align 4
@sca_dump_rings._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.30, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sca_dump_rings._entry_ptr.45 = internal global ptr @sca_dump_rings._entry.44, section ".printk_index", align 4
@sca_dump_rings._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.29, ptr @.str.30, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\017MSCI: MD: %02x %02x %02x, ST: %02x %02x %02x %02x %02x, FST: %02x CST: %02x %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@sca_dump_rings._entry_ptr.48 = internal global ptr @sca_dump_rings._entry.46, section ".printk_index", align 4
@sca_dump_rings._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.29, ptr @.str.30, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017ILAR: %02x ISR: %08x %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@sca_dump_rings._entry_ptr.51 = internal global ptr @sca_dump_rings._entry.49, section ".printk_index", align 4
@pci200_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013pci200syn: Invalid PCI clock frequency\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci200_init_module\00", [45 x i8] zeroinitializer }, align 32
@pci200_init_module._entry_ptr = internal global ptr @pci200_init_module._entry, section ".printk_index", align 4
@switch.table.pci200_open = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\84\85\80\87\80\86", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4096, i64 4101]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"pci200_pci_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 405, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"pci_clock_freq\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 42, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 406, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"pci200_pci_tbl\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 399, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 294, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 302, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 317, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 343, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 348, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 358, i32 52 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 359, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 374, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [11 x i8] c"pci200_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 255, i32 36 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 386, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 392, i32 20 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 174, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 524, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 530, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 531, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 533, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 541, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 542, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 544, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [29 x i8] c"../drivers/net/wan/hd64572.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 558, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [31 x i8] c"../drivers/net/wan/pci200syn.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 415, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [25 x i8] c"switch.table.pci200_open\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_pci_clock_freq346, ptr @__UNIQUE_ID_pci_clock_freqtype345, ptr @__exitcall_pci200_cleanup_module, ptr @__initcall__kmod_pci200syn__347_432_pci200_init_module6, ptr @__param_pci_clock_freq, ptr @pci200_cleanup_module, ptr @pci200_init_module._entry, ptr @pci200_init_module._entry_ptr, ptr @pci200_pci_init_one._entry, ptr @pci200_pci_init_one._entry.10, ptr @pci200_pci_init_one._entry.13, ptr @pci200_pci_init_one._entry.17, ptr @pci200_pci_init_one._entry.21, ptr @pci200_pci_init_one._entry.4, ptr @pci200_pci_init_one._entry.7, ptr @pci200_pci_init_one._entry_ptr, ptr @pci200_pci_init_one._entry_ptr.12, ptr @pci200_pci_init_one._entry_ptr.15, ptr @pci200_pci_init_one._entry_ptr.19, ptr @pci200_pci_init_one._entry_ptr.23, ptr @pci200_pci_init_one._entry_ptr.6, ptr @pci200_pci_init_one._entry_ptr.9, ptr @sca_dump_rings._entry, ptr @sca_dump_rings._entry.33, ptr @sca_dump_rings._entry.36, ptr @sca_dump_rings._entry.39, ptr @sca_dump_rings._entry.42, ptr @sca_dump_rings._entry.44, ptr @sca_dump_rings._entry.46, ptr @sca_dump_rings._entry.49, ptr @sca_dump_rings._entry_ptr, ptr @sca_dump_rings._entry_ptr.35, ptr @sca_dump_rings._entry_ptr.38, ptr @sca_dump_rings._entry_ptr.41, ptr @sca_dump_rings._entry_ptr.43, ptr @sca_dump_rings._entry_ptr.45, ptr @sca_dump_rings._entry_ptr.48, ptr @sca_dump_rings._entry_ptr.51, ptr @pci200_pci_driver, ptr @pci_clock_freq, ptr @.str, ptr @pci200_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @pci200_pci_init_one.__key, ptr @.str.20, ptr @pci200_ops, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @switch.table.pci200_open], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_clock_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_pci_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_pci_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_pci_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_pci_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_pci_init_one._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_pci_init_one._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_pci_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_pci_init_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca_dump_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca_dump_rings._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca_dump_rings._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca_dump_rings._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca_dump_rings._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca_dump_rings._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca_dump_rings._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca_dump_rings._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci200_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pci200_open to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci200_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @pci200_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci200_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pci_clock_freq, align 4
  %1 = add i32 %0, -80000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -79000001, i32 %1)
  %2 = icmp ult i32 %1, -79000001
  br i1 %2, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @__pci_register_driver(ptr noundef nonnull @pci200_pci_driver, ptr noundef null, ptr noundef nonnull @.str.16) #9
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci200_pci_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup253_crit_edge

entry.cleanup253_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup253

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %cleanup253

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 648) #13
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %cleanup253

if.end8:                                          ; preds = %if.end4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %ports = getelementptr inbounds %struct.card_s, ptr %call7.i.i, i32 0, i32 7
  %call9 = tail call ptr @alloc_hdlcdev(ptr noundef %ports) #9
  %netdev = getelementptr inbounds %struct.card_s, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %netdev, align 8
  %arrayidx13 = getelementptr %struct.card_s, ptr %call7.i.i, i32 0, i32 7, i32 1
  %call14 = tail call ptr @alloc_hdlcdev(ptr noundef %arrayidx13) #9
  %netdev17 = getelementptr %struct.card_s, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %3 = ptrtoint ptr %netdev17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call14, ptr %netdev17, align 8
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 8
  %tobool21.not = icmp eq ptr %5, null
  %tobool25.not = icmp eq ptr %call14, null
  %or.cond = select i1 %tobool21.not, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %do.end, label %if.end28

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  tail call void @pci200_pci_remove_one(ptr noundef %pdev)
  br label %cleanup253

if.end28:                                         ; preds = %if.end8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end28.do.end75_crit_edge, label %cond.false

if.end28.do.end75_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

cond.false:                                       ; preds = %if.end28
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub)
  %phi.cmp = icmp eq i32 %sub, 127
  br i1 %phi.cmp, label %lor.lhs.false36, label %cond.false.do.end75_crit_edge

cond.false.do.end75_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

lor.lhs.false36:                                  ; preds = %cond.false
  %arrayidx38 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %end39 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %10 = ptrtoint ptr %end39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp40 = icmp eq i32 %11, 0
  br i1 %cmp40, label %lor.lhs.false36.do.end75_crit_edge, label %cond.false42

lor.lhs.false36.do.end75_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

cond.false42:                                     ; preds = %lor.lhs.false36
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx38, align 8
  %sub49 = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub49)
  %phi.cmp366 = icmp eq i32 %sub49, 1023
  br i1 %phi.cmp366, label %lor.lhs.false54, label %cond.false42.do.end75_crit_edge

cond.false42.do.end75_crit_edge:                  ; preds = %cond.false42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

lor.lhs.false54:                                  ; preds = %cond.false42
  %arrayidx56 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %end57 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %14 = ptrtoint ptr %end57 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp58 = icmp eq i32 %15, 0
  br i1 %cmp58, label %lor.lhs.false54.do.end75_crit_edge, label %cond.false60

lor.lhs.false54.do.end75_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

cond.false60:                                     ; preds = %lor.lhs.false54
  %16 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx56, align 8
  %sub67 = add i32 %15, 1
  %add68 = sub i32 %sub67, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add68)
  %phi.cmp367 = icmp ult i32 %add68, 16384
  br i1 %phi.cmp367, label %cond.false60.do.end75_crit_edge, label %if.end78

cond.false60.do.end75_crit_edge:                  ; preds = %cond.false60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

do.end75:                                         ; preds = %cond.false60.do.end75_crit_edge, %lor.lhs.false54.do.end75_crit_edge, %cond.false42.do.end75_crit_edge, %lor.lhs.false36.do.end75_crit_edge, %cond.false.do.end75_crit_edge, %if.end28.do.end75_crit_edge
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  tail call void @pci200_pci_remove_one(ptr noundef %pdev)
  br label %cleanup253

if.end78:                                         ; preds = %cond.false60
  %and = and i32 %9, -16
  %call82 = tail call ptr @ioremap(i32 noundef %and, i32 noundef 128) #9
  %plxbase = getelementptr inbounds %struct.card_s, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %plxbase to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call82, ptr %plxbase, align 8
  %19 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx38, align 8
  %and86 = and i32 %20, -16
  %call87 = tail call ptr @ioremap(i32 noundef %and86, i32 noundef 1024) #9
  %scabase = getelementptr inbounds %struct.card_s, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %scabase to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call87, ptr %scabase, align 4
  %22 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx56, align 8
  %and91 = and i32 %23, -16
  %call92 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 3) #9
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call92, ptr %call7.i.i, align 8
  %25 = ptrtoint ptr %plxbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %plxbase, align 8
  %tobool94.not = icmp eq ptr %26, null
  br i1 %tobool94.not, label %if.end78.do.end104_crit_edge, label %lor.lhs.false95

if.end78.do.end104_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104

lor.lhs.false95:                                  ; preds = %if.end78
  %27 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scabase, align 4
  %tobool97.not = icmp eq ptr %28, null
  %tobool100.not = icmp eq ptr %call92, null
  %or.cond371 = select i1 %tobool97.not, i1 true, i1 %tobool100.not
  br i1 %or.cond371, label %lor.lhs.false95.do.end104_crit_edge, label %if.end107

lor.lhs.false95.do.end104_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104

do.end104:                                        ; preds = %lor.lhs.false95.do.end104_crit_edge, %if.end78.do.end104_crit_edge
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  tail call void @pci200_pci_remove_one(ptr noundef %pdev)
  br label %cleanup253

if.end107:                                        ; preds = %lor.lhs.false95
  %init_ctrl = getelementptr inbounds %struct.plx9052, ptr %26, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %init_ctrl) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  %30 = or i32 %29, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %init_ctrl, i32 %30) #9, !srcloc !123
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %init_ctrl) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %init_ctrl) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %34 = and i32 %33, -65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %init_ctrl, i32 %34) #9, !srcloc !123
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %init_ctrl) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #9
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call7.i.i, align 8
  %39 = ptrtoint ptr %end57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp138 = icmp eq i32 %40, 0
  br i1 %cmp138, label %if.end107.cond.end149_crit_edge, label %cond.false140

if.end107.cond.end149_crit_edge:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end149

cond.false140:                                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx56, align 8
  %sub147 = add i32 %40, 1
  %add148 = sub i32 %sub147, %42
  br label %cond.end149

cond.end149:                                      ; preds = %cond.false140, %if.end107.cond.end149_crit_edge
  %cond150 = phi i32 [ %add148, %cond.false140 ], [ 0, %if.end107.cond.end149_crit_edge ]
  %call151 = tail call fastcc i32 @sca_detect_ram(ptr noundef %38, i32 noundef %cond150)
  %div = udiv i32 %call151, 3224
  call void @__sanitizer_cov_trace_const_cmp4(i32 64480, i32 %call151)
  %cmp154 = icmp ult i32 %call151, 64480
  %div152 = udiv i32 %call151, 6448
  %phi.cast = trunc i32 %div152 to i16
  %cond158 = select i1 %cmp154, i16 %phi.cast, i16 10
  %tx_ring_buffers = getelementptr inbounds %struct.card_s, ptr %call7.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %tx_ring_buffers to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %cond158, ptr %tx_ring_buffers, align 2
  %44 = trunc i32 %div to i16
  %conv162 = sub i16 %44, %cond158
  %rx_ring_buffers = getelementptr inbounds %struct.card_s, ptr %call7.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %rx_ring_buffers to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv162, ptr %rx_ring_buffers, align 4
  %mul = mul i16 %44, 24
  %buff_offset = getelementptr inbounds %struct.card_s, ptr %call7.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %buff_offset to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %mul, ptr %buff_offset, align 8
  %div173368 = lshr i32 %call151, 10
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  %conv175 = zext i16 %cond158 to i32
  %conv177 = zext i16 %conv162 to i32
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %div173368, i32 noundef %and91, i32 noundef %48, i32 noundef %conv175, i32 noundef %conv177) #12
  %49 = ptrtoint ptr %tx_ring_buffers to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tx_ring_buffers, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp181 = icmp eq i16 %50, 0
  br i1 %cmp181, label %do.end186, label %if.end189

do.end186:                                        ; preds = %cond.end149
  call void @__sanitizer_cov_trace_pc() #11
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  tail call void @pci200_pci_remove_one(ptr noundef %pdev)
  br label %cleanup253

if.end189:                                        ; preds = %cond.end149
  %51 = ptrtoint ptr %plxbase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %plxbase, align 8
  %intr_ctrl_stat = getelementptr inbounds %struct.plx9052, ptr %52, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %intr_ctrl_stat) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %54 = or i16 %53, 16384
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %intr_ctrl_stat, i16 %54) #9, !srcloc !131
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %56, ptr noundef nonnull @sca_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.16, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool204.not = icmp eq i32 %call.i, 0
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  br i1 %tobool204.not, label %if.end212, label %do.end208

do.end208:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  %call211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %58) #12
  tail call void @pci200_pci_remove_one(ptr noundef %pdev)
  br label %cleanup253

if.end212:                                        ; preds = %if.end189
  %conv214 = trunc i32 %58 to i8
  %irq215 = getelementptr inbounds %struct.card_s, ptr %call7.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %irq215 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv214, ptr %irq215, align 2
  tail call fastcc void @sca_init(ptr noundef nonnull %call7.i.i)
  %add230 = add i32 %and91, -1
  %sub231 = add i32 %add230, %call151
  br label %for.body

for.body:                                         ; preds = %if.end242.for.body_crit_edge, %if.end212
  %cmp216 = phi i1 [ true, %if.end212 ], [ false, %if.end242.for.body_crit_edge ]
  %i.0373 = phi i32 [ 0, %if.end212 ], [ 1, %if.end242.for.body_crit_edge ]
  %arrayidx219 = getelementptr %struct.card_s, ptr %call7.i.i, i32 0, i32 7, i32 %i.0373
  %netdev220 = getelementptr %struct.card_s, ptr %call7.i.i, i32 0, i32 7, i32 %i.0373, i32 1
  %60 = ptrtoint ptr %netdev220 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %netdev220, align 8
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 2304
  %conv222 = trunc i32 %i.0373 to i8
  %chan = getelementptr %struct.card_s, ptr %call7.i.i, i32 0, i32 7, i32 %i.0373, i32 14
  %62 = ptrtoint ptr %chan to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv222, ptr %chan, align 1
  %lock = getelementptr %struct.card_s, ptr %call7.i.i, i32 0, i32 7, i32 %i.0373, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @pci200_pci_init_one.__key, i16 noundef signext 3) #9
  %63 = ptrtoint ptr %irq215 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %irq215, align 2
  %conv228 = zext i8 %64 to i32
  %irq229 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 64
  %65 = ptrtoint ptr %irq229 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv228, ptr %irq229, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 4
  %66 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and91, ptr %mem_start, align 4
  %mem_end = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 3
  %67 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub231, ptr %mem_end, align 8
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 107
  %68 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 50, ptr %tx_queue_len, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 16
  %69 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @pci200_ops, ptr %netdev_ops, align 8
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @sca_attach, ptr %add.ptr.i.i, align 4
  %xmit = getelementptr i8, ptr %61, i32 2308
  %71 = ptrtoint ptr %xmit to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @sca_xmit, ptr %xmit, align 4
  %clock_type = getelementptr %struct.card_s, ptr %call7.i.i, i32 0, i32 7, i32 %i.0373, i32 4, i32 1
  %72 = ptrtoint ptr %clock_type to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %clock_type, align 8
  %card232 = getelementptr %struct.card_s, ptr %call7.i.i, i32 0, i32 7, i32 %i.0373, i32 2
  %73 = ptrtoint ptr %card232 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i, ptr %card232, align 4
  tail call fastcc void @sca_init_port(ptr noundef %arrayidx219)
  %call233 = tail call i32 @register_netdev(ptr noundef %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end242, label %do.end238

do.end238:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  %74 = ptrtoint ptr %card232 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %card232, align 4
  tail call void @pci200_pci_remove_one(ptr noundef %pdev)
  br label %cleanup253

if.end242:                                        ; preds = %for.body
  %75 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %chan, align 1
  %conv244 = zext i8 %76 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %61, ptr noundef nonnull @.str.24, i32 noundef %conv244) #12
  br i1 %cmp216, label %if.end242.for.body_crit_edge, label %for.end

if.end242.for.body_crit_edge:                     ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %scabase, align 4
  %add.ptr = getelementptr i8, ptr %78, i32 116
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  br label %cleanup253

cleanup253:                                       ; preds = %for.end, %do.end238, %do.end208, %do.end186, %do.end104, %do.end75, %do.end, %if.then7, %if.then3, %entry.cleanup253_crit_edge
  %retval.2 = phi i32 [ %call1, %if.then3 ], [ -14, %do.end75 ], [ -14, %do.end186 ], [ -16, %do.end208 ], [ 0, %for.end ], [ -14, %do.end104 ], [ -12, %do.end ], [ -105, %if.then7 ], [ %call, %entry.cleanup253_crit_edge ], [ -105, %do.end238 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci200_pci_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %card1 = getelementptr %struct.card_s, ptr %1, i32 0, i32 7, i32 0, i32 2
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr %struct.card_s, ptr %1, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 8
  tail call void @unregister_hdlc_device(ptr noundef %5) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %card1.1 = getelementptr %struct.card_s, ptr %1, i32 0, i32 7, i32 1, i32 2
  %6 = ptrtoint ptr %card1.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card1.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.1 = getelementptr %struct.card_s, ptr %1, i32 0, i32 7, i32 1, i32 1
  %8 = ptrtoint ptr %netdev.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev.1, align 8
  tail call void @unregister_hdlc_device(ptr noundef %9) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %irq = getelementptr inbounds %struct.card_s, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %irq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %for.inc.1.if.end8_crit_edge, label %if.then5

for.inc.1.if.end8_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %11 to i32
  %call7 = tail call ptr @free_irq(i32 noundef %conv, ptr noundef %1) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %for.inc.1.if.end8_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %13) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %scabase = getelementptr inbounds %struct.card_s, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scabase, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %15) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %plxbase = getelementptr inbounds %struct.card_s, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %plxbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %plxbase, align 8
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %17) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  %netdev23 = getelementptr inbounds %struct.card_s, ptr %1, i32 0, i32 7, i32 0, i32 1
  %18 = ptrtoint ptr %netdev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev23, align 8
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %if.end20.if.end29_crit_edge, label %if.then25

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_netdev(ptr noundef nonnull %19) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end20.if.end29_crit_edge
  %netdev32 = getelementptr %struct.card_s, ptr %1, i32 0, i32 7, i32 1, i32 1
  %20 = ptrtoint ptr %netdev32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev32, align 8
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %if.end29.if.end38_crit_edge, label %if.then34

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_netdev(ptr noundef nonnull %21) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end29.if.end38_crit_edge
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_hdlcdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sca_detect_ram(ptr noundef %rambase, i32 noundef %ramsize) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ramsize, -4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ %and, %entry ], [ %sub, %do.body.do.body_crit_edge ]
  %sub = add i32 %i.0, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %xor = xor i32 %sub, 305419896
  %0 = tail call i32 @llvm.bswap.i32(i32 %xor)
  %add.ptr = getelementptr i8, ptr %rambase, i32 %sub
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !123
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %for.cond.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.cond.preheader:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp41.not = icmp eq i32 %and, 0
  br i1 %cmp41.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.12 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr5 = getelementptr i8, ptr %rambase, i32 %i.12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !121
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  %xor7 = xor i32 %i.12, 305419896
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %xor7)
  %cmp8.not = icmp eq i32 %2, %xor7
  br i1 %cmp8.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %add = add nuw i32 %i.12, 4
  %cmp4 = icmp ult i32 %add, %and
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.12, %for.body.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  ret i32 %i.1.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca_intr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scabase = getelementptr inbounds %struct.card_s, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scabase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !121
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %arrayidx = getelementptr %struct.card_s, ptr %dev_id, i32 0, i32 7, i32 0
  %tobool.not = icmp eq ptr %arrayidx, null
  %and = and i32 %3, 524322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %card.i = getelementptr %struct.card_s, ptr %dev_id, i32 0, i32 7, i32 0, i32 2
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %scabase.i = getelementptr inbounds %struct.card_s, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scabase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 116
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !121
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %chan.i = getelementptr %struct.card_s, ptr %dev_id, i32 0, i32 7, i32 0, i32 14
  %10 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %cond.i = select i1 %tobool.not.i, i32 -16711936, i32 16711935
  %and.i = and i32 %cond.i, %9
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %scabase3.i = getelementptr inbounds %struct.card_s, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %scabase3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scabase3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %16, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %12) #9, !srcloc !123
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef nonnull %arrayidx) #9
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef nonnull %arrayidx) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %handled.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.then.i ]
  %arrayidx.1 = getelementptr %struct.card_s, ptr %dev_id, i32 0, i32 7, i32 1
  %tobool.not.1 = icmp eq ptr %arrayidx.1, null
  %and.1 = and i32 %3, 134226432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool3.not.1 = icmp eq i32 %and.1, 0
  %or.cond15 = select i1 %tobool.not.1, i1 true, i1 %tobool3.not.1
  br i1 %or.cond15, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %card.i.1 = getelementptr %struct.card_s, ptr %dev_id, i32 0, i32 7, i32 1, i32 2
  %17 = ptrtoint ptr %card.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i.1, align 4
  %scabase.i.1 = getelementptr inbounds %struct.card_s, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %scabase.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scabase.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %20, i32 116
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #9, !srcloc !121
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %chan.i.1 = getelementptr %struct.card_s, ptr %dev_id, i32 0, i32 7, i32 1, i32 14
  %23 = ptrtoint ptr %chan.i.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %chan.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.1 = icmp eq i8 %24, 0
  %cond.i.1 = select i1 %tobool.not.i.1, i32 -16711936, i32 16711935
  %and.i.1 = and i32 %cond.i.1, %22
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i.1) #9
  %26 = ptrtoint ptr %card.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card.i.1, align 4
  %scabase3.i.1 = getelementptr inbounds %struct.card_s, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %scabase3.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scabase3.i.1, align 4
  %add.ptr4.i.1 = getelementptr i8, ptr %29, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.1, i32 %25) #9, !srcloc !123
  %call.i.1 = tail call zeroext i1 @napi_schedule_prep(ptr noundef nonnull %arrayidx.1) #9
  br i1 %call.i.1, label %if.then.i.1, label %if.then.1.if.end.1_crit_edge

if.then.1.if.end.1_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

if.then.i.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef nonnull %arrayidx.1) #9
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.i.1, %if.then.1.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %handled.1.1 = phi i32 [ %handled.1, %if.end.if.end.1_crit_edge ], [ 1, %if.then.1.if.end.1_crit_edge ], [ 1, %if.then.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1.1)
  %tobool4.not = icmp ne i32 %handled.1.1, 0
  %cond5 = zext i1 %tobool4.not to i32
  ret i32 %cond5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sca_init(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %scabase = getelementptr inbounds %struct.card_s, ptr %card, i32 0, i32 1
  %0 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scabase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scabase, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 37
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scabase, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scabase, align 4
  %add.ptr14 = getelementptr i8, ptr %7, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scabase, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 3) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scabase, align 4
  %add.ptr22 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scabase, align 4
  %add.ptr26 = getelementptr i8, ptr %13, i32 73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scabase, align 4
  %add.ptr30 = getelementptr i8, ptr %15, i32 74
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scabase, align 4
  %add.ptr34 = getelementptr i8, ptr %17, i32 75
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scabase, align 4
  %add.ptr38 = getelementptr i8, ptr %19, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 -128) #9, !srcloc !140
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sca_attach(ptr nocapture noundef readonly %dev, i16 noundef zeroext %encoding, i16 noundef zeroext %parity) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %encoding.off = add i16 %encoding, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %encoding.off)
  %switch = icmp ult i16 %encoding.off, 5
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i16 %parity to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %parity, label %if.end.return_crit_edge [
    i16 1, label %if.end.if.end37_crit_edge
    i16 2, label %if.end.if.end37_crit_edge53
    i16 3, label %if.end.if.end37_crit_edge54
    i16 7, label %if.end.if.end37_crit_edge55
    i16 5, label %if.end.if.end37_crit_edge56
  ]

if.end.if.end37_crit_edge56:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end.if.end37_crit_edge55:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end.if.end37_crit_edge54:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end.if.end37_crit_edge53:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end37:                                         ; preds = %if.end.if.end37_crit_edge, %if.end.if.end37_crit_edge53, %if.end.if.end37_crit_edge54, %if.end.if.end37_crit_edge55, %if.end.if.end37_crit_edge56
  %priv.i = getelementptr i8, ptr %dev, i32 2372
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %encoding38 = getelementptr inbounds %struct.port_s, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %encoding38 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %encoding, ptr %encoding38, align 4
  %4 = load ptr, ptr %priv.i, align 4
  %parity40 = getelementptr inbounds %struct.port_s, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %parity40 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %parity, ptr %parity40, align 2
  br label %return

return:                                           ; preds = %if.end37, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %card1 = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %lock = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %txin = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %txin, align 2
  %add = add i16 %5, 1
  %6 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %rx_ring_buffers.i.i.i = getelementptr inbounds %struct.card_s, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %rx_ring_buffers.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rx_ring_buffers.i.i.i, align 4
  %tx_ring_buffers.i.i.i = getelementptr inbounds %struct.card_s, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %tx_ring_buffers.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_ring_buffers.i.i.i, align 2
  %14 = urem i16 %add, %13
  %chan.i.i.i = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %chan.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chan.i.i.i, align 1
  %conv5.i.i.i = zext i8 %16 to i16
  %add.i.i.i = add i16 %13, %11
  %mul.i.i.i = mul i16 %add.i.i.i, %conv5.i.i.i
  %add10.i.i.i = add i16 %14, %11
  %conv13.i.i.i = add i16 %add10.i.i.i, %mul.i.i.i
  %mul.i.i = mul i16 %conv13.i.i.i, 12
  %conv.i = zext i16 %mul.i.i to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i
  %stat = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i, i32 0, i32 3
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %stat) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %do.end13, label %do.body8, !prof !151

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wan/hd64572.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 573, 0\0A.popsection", ""() #9, !srcloc !152
  unreachable

do.end13:                                         ; preds = %entry
  %18 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %txin, align 2
  %20 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %rx_ring_buffers.i.i.i94 = getelementptr inbounds %struct.card_s, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %rx_ring_buffers.i.i.i94 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rx_ring_buffers.i.i.i94, align 4
  %tx_ring_buffers.i.i.i95 = getelementptr inbounds %struct.card_s, ptr %21, i32 0, i32 4
  %26 = ptrtoint ptr %tx_ring_buffers.i.i.i95 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tx_ring_buffers.i.i.i95, align 2
  %28 = urem i16 %19, %27
  %29 = ptrtoint ptr %chan.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chan.i.i.i, align 1
  %conv5.i.i.i97 = zext i8 %30 to i16
  %add.i.i.i100 = add i16 %27, %25
  %mul.i.i.i101 = mul i16 %add.i.i.i100, %conv5.i.i.i97
  %add10.i.i.i102 = add i16 %28, %25
  %conv13.i.i.i103 = add i16 %add10.i.i.i102, %mul.i.i.i101
  %mul.i.i104 = mul i16 %conv13.i.i.i103, 12
  %conv.i105 = zext i16 %mul.i.i104 to i32
  %buff_offset.i = getelementptr inbounds %struct.card_s, ptr %21, i32 0, i32 5
  %31 = ptrtoint ptr %buff_offset.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %buff_offset.i, align 8
  %conv.i108 = zext i16 %32 to i32
  %conv1.i = zext i16 %conv13.i.i.i103 to i32
  %mul.i = mul nuw nsw i32 %conv1.i, 1600
  %add.i = add nuw nsw i32 %mul.i, %conv.i108
  %len18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len18, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 8
  %add.ptr = getelementptr i8, ptr %36, i32 %add.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.end13
  %length.addr.0.i = phi i32 [ %34, %do.end13 ], [ %sub.i, %do.body.i.do.body.i_crit_edge ]
  %src.addr.0.i = phi ptr [ %38, %do.end13 ], [ %add.ptr1.i, %do.body.i.do.body.i_crit_edge ]
  %dest.addr.0.i = phi ptr [ %add.ptr, %do.end13 ], [ %add.ptr.i110, %do.body.i.do.body.i_crit_edge ]
  %39 = tail call i32 @llvm.smin.i32(i32 %length.addr.0.i, i32 256) #9
  tail call void @mmiocpy(ptr noundef %dest.addr.0.i, ptr noundef %src.addr.0.i, i32 noundef %39) #9
  %add.ptr.i110 = getelementptr i8, ptr %dest.addr.0.i, i32 %39
  %add.ptr1.i = getelementptr i8, ptr %src.addr.0.i, i32 %39
  %sub.i = sub i32 %length.addr.0.i, %39
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i110) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %new_memcpy_toio.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

new_memcpy_toio.exit:                             ; preds = %do.body.i
  %add.ptr.i106 = getelementptr i8, ptr %23, i32 %conv.i105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %conv22 = trunc i32 %34 to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %len23 = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i106, i32 0, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %len23, i16 %41) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %stat27 = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i106, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %stat27, i8 -128) #9, !srcloc !140
  %42 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %txin, align 2
  %conv29 = zext i16 %43 to i32
  %add30 = add nuw nsw i32 %conv29, 1
  %tx_ring_buffers = getelementptr inbounds %struct.card_s, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %tx_ring_buffers to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tx_ring_buffers, align 2
  %conv31 = zext i16 %45 to i32
  %rem = urem i32 %add30, %conv31
  %conv32 = trunc i32 %rem to i16
  store i16 %conv32, ptr %txin, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %txin, align 2
  %48 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card1, align 4
  %rx_ring_buffers.i.i111 = getelementptr inbounds %struct.card_s, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %rx_ring_buffers.i.i111 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rx_ring_buffers.i.i111, align 4
  %tx_ring_buffers.i.i112 = getelementptr inbounds %struct.card_s, ptr %49, i32 0, i32 4
  %52 = ptrtoint ptr %tx_ring_buffers.i.i112 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %tx_ring_buffers.i.i112, align 2
  %54 = urem i16 %47, %53
  %55 = ptrtoint ptr %chan.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chan.i.i.i, align 1
  %conv5.i.i114 = zext i8 %56 to i16
  %add.i.i117 = add i16 %53, %51
  %mul.i.i118 = mul i16 %add.i.i117, %conv5.i.i114
  %add10.i.i119 = add i16 %54, %51
  %conv13.i.i120 = add i16 %add10.i.i119, %mul.i.i118
  %mul.i121 = mul i16 %conv13.i.i120, 12
  %conv39 = zext i16 %mul.i121 to i32
  %57 = tail call i32 @llvm.bswap.i32(i32 %conv39)
  %scabase = getelementptr inbounds %struct.card_s, ptr %3, i32 0, i32 1
  %58 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %scabase, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool41.not = icmp eq i8 %56, 0
  %add42 = select i1 %tobool41.not, i32 168, i32 232
  %add.ptr43 = getelementptr i8, ptr %59, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %57) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %scabase, align 4
  %62 = ptrtoint ptr %chan.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %chan.i.i.i, align 1
  %conv49 = zext i8 %63 to i32
  %mul = shl nuw nsw i32 %conv49, 1
  %add50 = add nuw nsw i32 %mul, 73
  %add.ptr51 = getelementptr i8, ptr %61, i32 %add50
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 2) #9, !srcloc !140
  %64 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %txin, align 2
  %add54 = add i16 %65, 1
  %66 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %card1, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %rx_ring_buffers.i.i.i123 = getelementptr inbounds %struct.card_s, ptr %67, i32 0, i32 3
  %70 = ptrtoint ptr %rx_ring_buffers.i.i.i123 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %rx_ring_buffers.i.i.i123, align 4
  %tx_ring_buffers.i.i.i124 = getelementptr inbounds %struct.card_s, ptr %67, i32 0, i32 4
  %72 = ptrtoint ptr %tx_ring_buffers.i.i.i124 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %tx_ring_buffers.i.i.i124, align 2
  %74 = urem i16 %add54, %73
  %75 = ptrtoint ptr %chan.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %chan.i.i.i, align 1
  %conv5.i.i.i126 = zext i8 %76 to i16
  %add.i.i.i129 = add i16 %73, %71
  %mul.i.i.i130 = mul i16 %add.i.i.i129, %conv5.i.i.i126
  %add10.i.i.i131 = add i16 %74, %71
  %conv13.i.i.i132 = add i16 %add10.i.i.i131, %mul.i.i.i130
  %mul.i.i133 = mul i16 %conv13.i.i.i132, 12
  %conv.i134 = zext i16 %mul.i.i133 to i32
  %add.ptr.i135 = getelementptr i8, ptr %69, i32 %conv.i134
  %stat59 = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i135, i32 0, i32 3
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %stat59) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool63.not = icmp eq i8 %77, 0
  br i1 %tobool63.not, label %new_memcpy_toio.exit.if.end65_crit_edge, label %if.then64

new_memcpy_toio.exit.if.end65_crit_edge:          ; preds = %new_memcpy_toio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then64:                                        ; preds = %new_memcpy_toio.exit
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %78 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %79, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %new_memcpy_toio.exit.if.end65_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  tail call void @consume_skb(ptr noundef %skb) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sca_init_port(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %chan = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 14
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chan, align 1
  %rxin = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 8
  %4 = ptrtoint ptr %rxin to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %rxin, align 8
  %txin = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 9
  %5 = ptrtoint ptr %txin to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %txin, align 2
  %txlast = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 10
  %6 = ptrtoint ptr %txlast to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %txlast, align 4
  %tx_ring_buffers = getelementptr inbounds %struct.card_s, ptr %1, i32 0, i32 4
  %rx_ring_buffers = getelementptr inbounds %struct.card_s, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %rx_ring_buffers to i32
  call void @__asan_load2_noabort(i32 %7)
  %cond12.in238 = load i16, ptr %rx_ring_buffers, align 2
  %conv15 = zext i16 %cond12.in238 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond12.in238)
  %cmp16302.not = icmp eq i16 %cond12.in238, 0
  br i1 %cmp16302.not, label %entry.for.end_crit_edge, label %entry.for.body18_crit_edge

entry.for.body18_crit_edge:                       ; preds = %entry
  br label %for.body18

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %entry.for.body18_crit_edge
  %i.0303 = phi i32 [ %add, %for.body18.for.body18_crit_edge ], [ 0, %entry.for.body18_crit_edge ]
  %conv19 = trunc i32 %i.0303 to i16
  %8 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %rx_ring_buffers.i.i.i = getelementptr inbounds %struct.card_s, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %rx_ring_buffers.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rx_ring_buffers.i.i.i, align 4
  %tx_ring_buffers.i.i.i = getelementptr inbounds %struct.card_s, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %tx_ring_buffers.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tx_ring_buffers.i.i.i, align 2
  %16 = urem i16 %conv19, %13
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chan, align 1
  %conv5.i.i.i = zext i8 %18 to i16
  %add.i.i.i = add i16 %15, %13
  %mul.i.i.i = mul i16 %add.i.i.i, %conv5.i.i.i
  %conv13.i.i.i = add i16 %16, %mul.i.i.i
  %mul.i.i = mul i16 %conv13.i.i.i, 12
  %conv.i = zext i16 %mul.i.i to i32
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %add = add nuw nsw i32 %i.0303, 1
  %conv20 = trunc i32 %add to i16
  %19 = urem i16 %conv20, %13
  %conv13.i.i = add i16 %19, %mul.i.i.i
  %mul.i = mul i16 %conv13.i.i, 12
  %buff_offset.i = getelementptr inbounds %struct.card_s, ptr %9, i32 0, i32 5
  %20 = ptrtoint ptr %buff_offset.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %buff_offset.i, align 8
  %conv.i241 = zext i16 %21 to i32
  %conv1.i = zext i16 %conv13.i.i.i to i32
  %mul.i255 = mul nuw nsw i32 %conv1.i, 1600
  %add.i = add nuw nsw i32 %mul.i255, %conv.i241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %conv24 = zext i16 %mul.i to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv24)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %add.i)
  %bp = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bp, i32 %23) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %len = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i, i32 0, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %len, i16 0) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %stat = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %stat, i8 0) #9, !srcloc !140
  %exitcond.not = icmp eq i32 %add, %conv15
  br i1 %exitcond.not, label %for.body18.for.end_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.body18.for.end_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body18.for.end_crit_edge, %entry.for.end_crit_edge
  %24 = ptrtoint ptr %tx_ring_buffers to i32
  call void @__asan_load2_noabort(i32 %24)
  %cond12.in238.1 = load i16, ptr %tx_ring_buffers, align 2
  %conv15.1 = zext i16 %cond12.in238.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond12.in238.1)
  %cmp16302.not.1 = icmp eq i16 %cond12.in238.1, 0
  br i1 %cmp16302.not.1, label %for.end.for.end.1_crit_edge, label %for.end.for.body18.1_crit_edge

for.end.for.body18.1_crit_edge:                   ; preds = %for.end
  br label %for.body18.1

for.end.for.end.1_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

for.body18.1:                                     ; preds = %for.body18.1.for.body18.1_crit_edge, %for.end.for.body18.1_crit_edge
  %i.0303.1 = phi i32 [ %add.1, %for.body18.1.for.body18.1_crit_edge ], [ 0, %for.end.for.body18.1_crit_edge ]
  %conv19.1 = trunc i32 %i.0303.1 to i16
  %25 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card1, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %rx_ring_buffers.i.i.i.1 = getelementptr inbounds %struct.card_s, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %rx_ring_buffers.i.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rx_ring_buffers.i.i.i.1, align 4
  %tx_ring_buffers.i.i.i.1 = getelementptr inbounds %struct.card_s, ptr %26, i32 0, i32 4
  %31 = ptrtoint ptr %tx_ring_buffers.i.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tx_ring_buffers.i.i.i.1, align 2
  %33 = urem i16 %conv19.1, %32
  %34 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %chan, align 1
  %conv5.i.i.i.1 = zext i8 %35 to i16
  %add.i.i.i.1 = add i16 %32, %30
  %mul.i.i.i.1 = mul i16 %add.i.i.i.1, %conv5.i.i.i.1
  %add10.i.i.i.1 = add i16 %mul.i.i.i.1, %30
  %conv13.i.i.i.1 = add i16 %33, %add10.i.i.i.1
  %mul.i.i.1 = mul i16 %conv13.i.i.i.1, 12
  %conv.i.1 = zext i16 %mul.i.i.1 to i32
  %add.ptr.i.1 = getelementptr i8, ptr %28, i32 %conv.i.1
  %add.1 = add nuw nsw i32 %i.0303.1, 1
  %conv20.1 = trunc i32 %add.1 to i16
  %36 = urem i16 %conv20.1, %32
  %conv13.i.i.1 = add i16 %36, %add10.i.i.i.1
  %mul.i.1 = mul i16 %conv13.i.i.1, 12
  %buff_offset.i.1 = getelementptr inbounds %struct.card_s, ptr %26, i32 0, i32 5
  %37 = ptrtoint ptr %buff_offset.i.1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %buff_offset.i.1, align 8
  %conv.i241.1 = zext i16 %38 to i32
  %conv1.i.1 = zext i16 %conv13.i.i.i.1 to i32
  %mul.i255.1 = mul nuw nsw i32 %conv1.i.1, 1600
  %add.i.1 = add nuw nsw i32 %mul.i255.1, %conv.i241.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %conv24.1 = zext i16 %mul.i.1 to i32
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv24.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %39) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %add.i.1)
  %bp.1 = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i.1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bp.1, i32 %40) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %len.1 = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i.1, i32 0, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %len.1, i16 0) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %stat.1 = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i.1, i32 0, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %stat.1, i8 0) #9, !srcloc !140
  %exitcond.1.not = icmp eq i32 %add.1, %conv15.1
  br i1 %exitcond.1.not, label %for.body18.1.for.end.1_crit_edge, label %for.body18.1.for.body18.1_crit_edge

for.body18.1.for.body18.1_crit_edge:              ; preds = %for.body18.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18.1

for.body18.1.for.end.1_crit_edge:                 ; preds = %for.body18.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

for.end.1:                                        ; preds = %for.body18.1.for.end.1_crit_edge, %for.end.for.end.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %scabase = getelementptr inbounds %struct.card_s, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %scabase, align 4
  %43 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %chan, align 1
  %conv41 = zext i8 %44 to i32
  %mul = shl nuw nsw i32 %conv41, 1
  %add42 = add nuw nsw i32 %mul, 72
  %add.ptr = getelementptr i8, ptr %42, i32 %add42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scabase, align 4
  %47 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %chan, align 1
  %conv48 = zext i8 %48 to i32
  %mul49 = shl nuw nsw i32 %conv48, 1
  %add50 = add nuw nsw i32 %mul49, 73
  %add.ptr51 = getelementptr i8, ptr %46, i32 %add50
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %scabase, align 4
  %51 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %chan, align 1
  %conv57 = zext i8 %52 to i32
  %mul58 = shl nuw nsw i32 %conv57, 1
  %add59 = add nuw nsw i32 %mul58, 88
  %add.ptr60 = getelementptr i8, ptr %50, i32 %add59
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60, i8 1) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %scabase, align 4
  %55 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chan, align 1
  %conv66 = zext i8 %56 to i32
  %mul67 = shl nuw nsw i32 %conv66, 1
  %add68 = add nuw nsw i32 %mul67, 89
  %add.ptr69 = getelementptr i8, ptr %54, i32 %add68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr69, i8 1) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card1, align 4
  %rx_ring_buffers.i.i257 = getelementptr inbounds %struct.card_s, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %rx_ring_buffers.i.i257 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %rx_ring_buffers.i.i257, align 4
  %tx_ring_buffers.i.i258 = getelementptr inbounds %struct.card_s, ptr %58, i32 0, i32 4
  %61 = ptrtoint ptr %tx_ring_buffers.i.i258 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %tx_ring_buffers.i.i258, align 2
  %63 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %chan, align 1
  %conv5.i.i260 = zext i8 %64 to i16
  %add.i.i263 = add i16 %62, %60
  %mul.i.i264 = mul i16 %add.i.i263, 12
  %mul.i265 = mul i16 %mul.i.i264, %conv5.i.i260
  %conv74 = zext i16 %mul.i265 to i32
  %65 = tail call i32 @llvm.bswap.i32(i32 %conv74)
  %66 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %scabase, align 4
  %conv76 = select i1 %tobool.not, i32 0, i32 64
  %add77 = or i32 %conv76, 132
  %add.ptr78 = getelementptr i8, ptr %67, i32 %add77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %65) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %tx_ring_buffers to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %tx_ring_buffers, align 2
  %sub = add i16 %69, -1
  %70 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card1, align 4
  %rx_ring_buffers.i.i267 = getelementptr inbounds %struct.card_s, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %rx_ring_buffers.i.i267 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %rx_ring_buffers.i.i267, align 4
  %tx_ring_buffers.i.i268 = getelementptr inbounds %struct.card_s, ptr %71, i32 0, i32 4
  %74 = ptrtoint ptr %tx_ring_buffers.i.i268 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %tx_ring_buffers.i.i268, align 2
  %76 = urem i16 %sub, %73
  %77 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %chan, align 1
  %conv5.i.i270 = zext i8 %78 to i16
  %add.i.i273 = add i16 %75, %73
  %mul.i.i274 = mul i16 %add.i.i273, %conv5.i.i270
  %conv13.i.i275 = add i16 %mul.i.i274, %76
  %mul.i276 = mul i16 %conv13.i.i275, 12
  %conv86 = zext i16 %mul.i276 to i32
  %79 = tail call i32 @llvm.bswap.i32(i32 %conv86)
  %80 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %scabase, align 4
  %add89 = or i32 %conv76, 136
  %add.ptr90 = getelementptr i8, ptr %81, i32 %add89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %79) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card1, align 4
  %rx_ring_buffers.i.i278 = getelementptr inbounds %struct.card_s, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %rx_ring_buffers.i.i278 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %rx_ring_buffers.i.i278, align 4
  %tx_ring_buffers.i.i279 = getelementptr inbounds %struct.card_s, ptr %83, i32 0, i32 4
  %86 = ptrtoint ptr %tx_ring_buffers.i.i279 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %tx_ring_buffers.i.i279, align 2
  %88 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %chan, align 1
  %conv5.i.i281 = zext i8 %89 to i16
  %add.i.i284 = add i16 %87, %85
  %mul.i.i285 = mul i16 %add.i.i284, %conv5.i.i281
  %add10.i.i286 = add i16 %mul.i.i285, %85
  %mul.i287 = mul i16 %add10.i.i286, 12
  %conv95 = zext i16 %mul.i287 to i32
  %90 = tail call i32 @llvm.bswap.i32(i32 %conv95)
  %91 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %scabase, align 4
  %conv97 = select i1 %tobool.not, i32 32, i32 96
  %add98 = or i32 %conv97, 132
  %add.ptr99 = getelementptr i8, ptr %92, i32 %add98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %90) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %card1, align 4
  %rx_ring_buffers.i.i289 = getelementptr inbounds %struct.card_s, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %rx_ring_buffers.i.i289 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %rx_ring_buffers.i.i289, align 4
  %tx_ring_buffers.i.i290 = getelementptr inbounds %struct.card_s, ptr %94, i32 0, i32 4
  %97 = ptrtoint ptr %tx_ring_buffers.i.i290 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %tx_ring_buffers.i.i290, align 2
  %99 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %chan, align 1
  %conv5.i.i292 = zext i8 %100 to i16
  %add.i.i295 = add i16 %98, %96
  %mul.i.i296 = mul i16 %add.i.i295, %conv5.i.i292
  %add10.i.i297 = add i16 %mul.i.i296, %96
  %mul.i298 = mul i16 %add10.i.i297, 12
  %conv104 = zext i16 %mul.i298 to i32
  %101 = tail call i32 @llvm.bswap.i32(i32 %conv104)
  %102 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %scabase, align 4
  %add107 = or i32 %conv97, 136
  %add.ptr108 = getelementptr i8, ptr %103, i32 %add107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %101) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %104 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %scabase, align 4
  %106 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %chan, align 1
  %conv114 = zext i8 %107 to i32
  %mul115 = shl nuw nsw i32 %conv114, 1
  %add116 = add nuw nsw i32 %mul115, 88
  %add.ptr117 = getelementptr i8, ptr %105, i32 %add116
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr117, i8 2) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %108 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %scabase, align 4
  %110 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %chan, align 1
  %conv123 = zext i8 %111 to i32
  %mul124 = shl nuw nsw i32 %conv123, 1
  %add125 = add nuw nsw i32 %mul124, 89
  %add.ptr126 = getelementptr i8, ptr %109, i32 %add125
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr126, i8 2) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %112 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %scabase, align 4
  %add132 = or i32 %conv76, 144
  %add.ptr133 = getelementptr i8, ptr %113, i32 %add132
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr133, i16 16390) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %114 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %scabase, align 4
  %116 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %chan, align 1
  %conv139 = zext i8 %117 to i32
  %mul140 = shl nuw nsw i32 %conv139, 1
  %add141 = add nuw nsw i32 %mul140, 84
  %add.ptr142 = getelementptr i8, ptr %115, i32 %add141
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr142, i8 20) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %118 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %scabase, align 4
  %120 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %chan, align 1
  %conv148 = zext i8 %121 to i32
  %mul149 = shl nuw nsw i32 %conv148, 1
  %add150 = add nuw nsw i32 %mul149, 76
  %add.ptr151 = getelementptr i8, ptr %119, i32 %add150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr151, i8 64) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %122 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %scabase, align 4
  %124 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %chan, align 1
  %conv157 = zext i8 %125 to i32
  %mul158 = shl nuw nsw i32 %conv157, 1
  %add159 = add nuw nsw i32 %mul158, 72
  %add.ptr160 = getelementptr i8, ptr %123, i32 %add159
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr160, i8 2) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %126 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %scabase, align 4
  %128 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %chan, align 1
  %conv166 = zext i8 %129 to i32
  %mul167 = shl nuw nsw i32 %conv166, 1
  %add168 = add nuw nsw i32 %mul167, 85
  %add.ptr169 = getelementptr i8, ptr %127, i32 %add168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr169, i8 20) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %130 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %scabase, align 4
  %132 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %chan, align 1
  %conv175 = zext i8 %133 to i32
  %mul176 = shl nuw nsw i32 %conv175, 1
  %add177 = add nuw nsw i32 %mul176, 77
  %add.ptr178 = getelementptr i8, ptr %131, i32 %add177
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr178, i8 64) #9, !srcloc !140
  %134 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %card1, align 4
  %scabase.i = getelementptr inbounds %struct.card_s, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %scabase.i, align 4
  %138 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %chan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i = icmp eq i8 %139, 0
  %add.i300 = select i1 %tobool.not.i, i32 283, i32 411
  %add.ptr.i301 = getelementptr i8, ptr %137, i32 %add.i300
  %140 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i301) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  %141 = and i8 %140, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool3.not.i = icmp eq i8 %141, 0
  %netdev.i = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 1
  %142 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %netdev.i, align 8
  br i1 %tobool3.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef %143) #9
  br label %sca_set_carrier.exit

if.else.i:                                        ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef %143) #9
  br label %sca_set_carrier.exit

sca_set_carrier.exit:                             ; preds = %if.else.i, %if.then.i
  %144 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %netdev.i, align 8
  tail call void @netif_napi_add(ptr noundef %145, ptr noundef %port, ptr noundef nonnull @sca_poll, i32 noundef 16) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci200_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %call1 = tail call i32 @hdlc_open(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %card1.i = getelementptr inbounds %struct.port_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card1.i, align 4
  %chan.i = getelementptr inbounds %struct.port_s, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chan.i, align 1
  %encoding.i = getelementptr inbounds %struct.port_s, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %encoding.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %encoding.i, align 4
  %switch.tableidx = add i16 %9, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %switch.tableidx)
  %10 = icmp ult i16 %switch.tableidx, 4
  %switch.cast = zext i16 %switch.tableidx to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 -1063247872, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %md2.0.i = select i1 %10, i8 %switch.masked, i8 -128
  %loopback.i = getelementptr inbounds %struct.port_s, ptr %3, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %loopback.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %loopback.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool7.not.i = icmp eq i16 %12, 0
  %13 = or i8 %md2.0.i, 3
  %spec.select.i = select i1 %tobool7.not.i, i8 %md2.0.i, i8 %13
  %parity.i = getelementptr inbounds %struct.port_s, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %parity.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %parity.i, align 2
  %switch.tableidx9 = add i16 %15, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx9)
  %16 = icmp ult i16 %switch.tableidx9, 6
  br i1 %16, label %switch.lookup, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = sext i16 %switch.tableidx9 to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.pci200_open, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %18)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %switch.lookup, %if.end.do.body.i_crit_edge
  %md0.0.i = phi i8 [ %switch.load, %switch.lookup ], [ -128, %if.end.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %scabase.i = getelementptr inbounds %struct.card_s, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scabase.i, align 4
  %conv17.i = select i1 %tobool.not.i, i32 0, i32 128
  %add.i = or i32 %conv17.i, 296
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 33) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scabase.i, align 4
  %add23.i = or i32 %conv17.i, 312
  %add.ptr24.i = getelementptr i8, ptr %22, i32 %add23.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %md0.0.i) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scabase.i, align 4
  %add30.i = or i32 %conv17.i, 313
  %add.ptr31.i = getelementptr i8, ptr %24, i32 %add30.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %scabase.i, align 4
  %add37.i = or i32 %conv17.i, 314
  %add.ptr38.i = getelementptr i8, ptr %26, i32 %add37.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38.i, i8 %spec.select.i) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scabase.i, align 4
  %add44.i = or i32 %conv17.i, 322
  %add.ptr45.i = getelementptr i8, ptr %28, i32 %add44.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45.i, i8 126) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %scabase.i, align 4
  %add51.i = or i32 %conv17.i, 304
  %add.ptr52.i = getelementptr i8, ptr %30, i32 %add51.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr52.i, i8 -48) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scabase.i, align 4
  %add58.i = or i32 %conv17.i, 340
  %add.ptr59.i = getelementptr i8, ptr %32, i32 %add58.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr59.i, i8 15) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %scabase.i, align 4
  %add65.i = or i32 %conv17.i, 331
  %add.ptr66.i = getelementptr i8, ptr %34, i32 %add65.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr66.i, i8 60) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %scabase.i, align 4
  %add72.i = or i32 %conv17.i, 338
  %add.ptr73.i = getelementptr i8, ptr %36, i32 %add72.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr73.i, i8 56) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %scabase.i, align 4
  %add79.i = or i32 %conv17.i, 336
  %add.ptr80.i = getelementptr i8, ptr %38, i32 %add79.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr80.i, i8 56) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %scabase.i, align 4
  %add86.i = or i32 %conv17.i, 337
  %add.ptr87.i = getelementptr i8, ptr %40, i32 %add86.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.i, i8 63) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %scabase.i, align 4
  %add93.i = or i32 %conv17.i, 288
  %add.ptr94.i = getelementptr i8, ptr %42, i32 %add93.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i, i32 1074003968) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %tmc.i = getelementptr inbounds %struct.port_s, ptr %3, i32 0, i32 13
  %43 = ptrtoint ptr %tmc.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tmc.i, align 8
  %45 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scabase.i, align 4
  %add100.i = or i32 %conv17.i, 325
  %add.ptr101.i = getelementptr i8, ptr %46, i32 %add100.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr101.i, i8 %44) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %tmc.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tmc.i, align 8
  %49 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %scabase.i, align 4
  %add108.i = or i32 %conv17.i, 324
  %add.ptr109.i = getelementptr i8, ptr %50, i32 %add108.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr109.i, i8 %48) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %rxs.i = getelementptr inbounds %struct.port_s, ptr %3, i32 0, i32 11
  %51 = ptrtoint ptr %rxs.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %rxs.i, align 2
  %53 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %scabase.i, align 4
  %add115.i = or i32 %conv17.i, 316
  %add.ptr116.i = getelementptr i8, ptr %54, i32 %add115.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr116.i, i8 %52) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %txs.i = getelementptr inbounds %struct.port_s, ptr %3, i32 0, i32 12
  %55 = ptrtoint ptr %txs.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %txs.i, align 1
  %57 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %scabase.i, align 4
  %add122.i = or i32 %conv17.i, 317
  %add.ptr123.i = getelementptr i8, ptr %58, i32 %add122.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr123.i, i8 %56) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %scabase.i, align 4
  %add.ptr130.i = getelementptr i8, ptr %60, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr130.i, i8 2) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %scabase.i, align 4
  %add.ptr137.i = getelementptr i8, ptr %62, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr137.i, i8 18) #9, !srcloc !140
  %63 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card1.i, align 4
  %scabase.i.i = getelementptr inbounds %struct.card_s, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %scabase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %scabase.i.i, align 4
  %67 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i = icmp eq i8 %68, 0
  %add.i.i = select i1 %tobool.not.i.i, i32 283, i32 411
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 %add.i.i
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  %70 = and i8 %69, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool3.not.i.i = icmp eq i8 %70, 0
  %netdev.i.i = getelementptr inbounds %struct.port_s, ptr %3, i32 0, i32 1
  %71 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %netdev.i.i, align 8
  br i1 %tobool3.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef %72) #9
  br label %sca_open.exit

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef %72) #9
  br label %sca_open.exit

sca_open.exit:                                    ; preds = %if.else.i.i, %if.then.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %card1.i, align 4
  %scabase.i186.i = getelementptr inbounds %struct.card_s, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %scabase.i186.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %scabase.i186.i, align 4
  %add.ptr.i187.i = getelementptr i8, ptr %76, i32 116
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187.i) #9, !srcloc !121
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  %79 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i189.i = icmp eq i8 %80, 0
  %cond.i.i = select i1 %tobool.not.i189.i, i32 524322, i32 134226432
  %or.i.i = or i32 %cond.i.i, %78
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %82 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card1.i, align 4
  %scabase3.i.i = getelementptr inbounds %struct.card_s, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %scabase3.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %scabase3.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %85, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %81) #9, !srcloc !123
  tail call void @napi_enable(ptr noundef %3) #9
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %86 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %87, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #9
  tail call fastcc void @pci200_set_iface(ptr noundef %1)
  %card = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card, align 4
  %scabase = getelementptr inbounds %struct.card_s, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %scabase, align 4
  %add.ptr = getelementptr i8, ptr %91, i32 116
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %cleanup

cleanup:                                          ; preds = %sca_open.exit, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci200_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %card.i = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %scabase.i = getelementptr inbounds %struct.card_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scabase.i, align 4
  %chan.i = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %add.i = select i1 %tobool.not.i, i32 296, i32 424
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 33) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card.i, align 4
  %scabase.i.i = getelementptr inbounds %struct.card_s, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %scabase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scabase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 116
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !121
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %14 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 -16711936, i32 16711935
  %and.i.i = and i32 %cond.i.i, %13
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %scabase3.i.i = getelementptr inbounds %struct.card_s, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %scabase3.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scabase3.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %20, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %16) #9, !srcloc !123
  tail call void @napi_disable(ptr noundef %1) #9
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #9
  %23 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i.i, align 4
  %card = getelementptr inbounds %struct.port_s, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %scabase = getelementptr inbounds %struct.card_s, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scabase, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 116
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  tail call void @hdlc_close(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci200_ioctl(ptr noundef %dev, ptr noundef %ifs) #2 align 64 {
entry:
  %new_line = alloca %struct.sync_serial_settings, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %new_line) #9
  %0 = call ptr @memset(ptr %new_line, i32 255, i32 12)
  %ifs_ifsu = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %1 = ptrtoint ptr %ifs_ifsu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ifs_ifsu, align 4
  %priv.i = getelementptr i8, ptr %dev, i32 2372
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  %5 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifs, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 4096, label %entry.sw.bb7_crit_edge
    i32 4101, label %entry.sw.bb7_crit_edge66
  ]

entry.sw.bb7_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

sw.bb:                                            ; preds = %entry
  %8 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %ifs, align 4
  %size2 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %9 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %10)
  %cmp = icmp ult i32 %10, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %size2, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %settings = getelementptr inbounds %struct.port_s, ptr %4, i32 0, i32 4
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #14, !srcloc !203
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %settings, i32 noundef 12) #9
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %settings, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge66
  %call8 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call8, label %if.then.i56, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i56:                                      ; preds = %sw.bb7
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #9
  %call.i.i55 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i55, label %if.then.i56.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i56.if.then11.i.i_crit_edge:              ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i56
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #14, !srcloc !204
  %asmresult.i.i57 = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i57)
  %cmp.i.i58 = icmp eq i32 %asmresult.i.i57, 0
  br i1 %cmp.i.i58, label %if.end.i.i60, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !151

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i60:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_line, i32 noundef 12) #9
  %14 = call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !205
  %and.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !206
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new_line, ptr noundef %2, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #9, !srcloc !206
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end14, label %if.end.i.i60.if.then11.i.i_crit_edge, !prof !151

if.end.i.i60.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i60.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i56.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i60.if.then11.i.i_crit_edge ], [ 12, %if.then.i56.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %new_line, i32 %sub.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.i60
  %clock_type = getelementptr inbounds %struct.sync_serial_settings, ptr %new_line, i32 0, i32 1
  %18 = ptrtoint ptr %clock_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clock_type, align 4
  %.off = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.end25, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %loopback = getelementptr inbounds %struct.sync_serial_settings, ptr %new_line, i32 0, i32 2
  %20 = ptrtoint ptr %loopback to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %21)
  %switch52 = icmp ult i16 %21, 2
  br i1 %switch52, label %if.end34, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %settings35 = getelementptr inbounds %struct.port_s, ptr %4, i32 0, i32 4
  %22 = call ptr @memcpy(ptr %settings35, ptr %new_line, i32 12)
  call fastcc void @pci200_set_iface(ptr noundef %4)
  %card = getelementptr inbounds %struct.port_s, ptr %4, i32 0, i32 2
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %scabase = getelementptr inbounds %struct.card_s, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %scabase, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 116
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 @hdlc_ioctl(ptr noundef %dev, ptr noundef %ifs) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end34, %if.end25.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11.i.i, %sw.bb7.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call38, %sw.default ], [ 0, %if.end34 ], [ -105, %if.then ], [ -1, %sw.bb7.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %if.end25.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_line) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci200_siocdevprivate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %ifr, ptr nocapture noundef readnone %data, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 35312
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  %priv.i.i = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  %card1.i = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1.i, align 4
  %scabase.i = getelementptr inbounds %struct.card_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scabase.i, align 4
  %chan.i = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %add.i = select i1 %tobool.not.i, i32 132, i32 196
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !121
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  %10 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scabase.i, align 4
  %12 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not.i = icmp eq i8 %13, 0
  %add12.i = select i1 %tobool10.not.i, i32 136, i32 200
  %add.ptr13.i = getelementptr i8, ptr %11, i32 %add12.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #9, !srcloc !121
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  %16 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scabase.i, align 4
  %18 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chan.i, align 1
  %conv21.i = zext i8 %19 to i32
  %mul.i = shl nuw nsw i32 %conv21.i, 1
  %add22.i = add nuw nsw i32 %mul.i, 72
  %add.ptr23.i = getelementptr i8, ptr %17, i32 %add22.i
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %conv27.i = zext i8 %20 to i32
  %rxin.i = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %rxin.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rxin.i, align 8
  %conv28.i = zext i16 %22 to i32
  %23 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scabase.i, align 4
  %25 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %chan.i, align 1
  %conv33.i = zext i8 %26 to i32
  %mul34.i = shl nuw nsw i32 %conv33.i, 1
  %add35.i = add nuw nsw i32 %mul34.i, 72
  %add.ptr36.i = getelementptr i8, ptr %24, i32 %add35.i
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr36.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool41.not.i = icmp eq i8 %28, 0
  %cond42.i = select i1 %tobool41.not.i, ptr @.str.32, ptr @.str.31
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %9, i32 noundef %15, i32 noundef %conv27.i, i32 noundef %conv28.i, ptr noundef nonnull %cond42.i) #12
  %29 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card1.i, align 4
  %rx_ring_buffers391.i = getelementptr inbounds %struct.card_s, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %rx_ring_buffers391.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rx_ring_buffers391.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp392.not.i = icmp eq i16 %32, 0
  br i1 %cmp392.not.i, label %if.then.do.end62.i_crit_edge, label %if.then.do.end50.i_crit_edge

if.then.do.end50.i_crit_edge:                     ; preds = %if.then
  br label %do.end50.i

if.then.do.end62.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62.i

do.end50.i:                                       ; preds = %do.end50.i.do.end50.i_crit_edge, %if.then.do.end50.i_crit_edge
  %33 = phi i16 [ %46, %do.end50.i.do.end50.i_crit_edge ], [ %32, %if.then.do.end50.i_crit_edge ]
  %34 = phi ptr [ %44, %do.end50.i.do.end50.i_crit_edge ], [ %30, %if.then.do.end50.i_crit_edge ]
  %cnt.0393.i = phi i16 [ %inc.i, %do.end50.i.do.end50.i_crit_edge ], [ 0, %if.then.do.end50.i_crit_edge ]
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %tx_ring_buffers.i.i.i.i = getelementptr inbounds %struct.card_s, ptr %34, i32 0, i32 4
  %37 = ptrtoint ptr %tx_ring_buffers.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tx_ring_buffers.i.i.i.i, align 2
  %39 = urem i16 %cnt.0393.i, %33
  %40 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %chan.i, align 1
  %conv5.i.i.i.i = zext i8 %41 to i16
  %add.i.i.i.i = add i16 %38, %33
  %mul.i.i.i.i = mul i16 %add.i.i.i.i, %conv5.i.i.i.i
  %conv13.i.i.i.i = add i16 %mul.i.i.i.i, %39
  %mul.i.i.i = mul i16 %conv13.i.i.i.i, 12
  %conv.i.i = zext i16 %mul.i.i.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %conv.i.i
  %stat.i = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i.i, i32 0, i32 3
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %stat.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  %conv58.i = zext i8 %42 to i32
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv58.i) #12
  %inc.i = add nuw i16 %cnt.0393.i, 1
  %43 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card1.i, align 4
  %rx_ring_buffers.i = getelementptr inbounds %struct.card_s, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %rx_ring_buffers.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rx_ring_buffers.i, align 4
  %cmp.i = icmp ult i16 %inc.i, %46
  br i1 %cmp.i, label %do.end50.i.do.end50.i_crit_edge, label %do.end50.i.do.end62.i_crit_edge

do.end50.i.do.end62.i_crit_edge:                  ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62.i

do.end50.i.do.end50.i_crit_edge:                  ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50.i

do.end62.i:                                       ; preds = %do.end50.i.do.end62.i_crit_edge, %if.then.do.end62.i_crit_edge
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  %47 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %scabase.i, align 4
  %49 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool74.not.i = icmp eq i8 %50, 0
  %add76.i = select i1 %tobool74.not.i, i32 164, i32 228
  %add.ptr77.i = getelementptr i8, ptr %48, i32 %add76.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i) #9, !srcloc !121
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  %53 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %scabase.i, align 4
  %55 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool86.not.i = icmp eq i8 %56, 0
  %add88.i = select i1 %tobool86.not.i, i32 168, i32 232
  %add.ptr89.i = getelementptr i8, ptr %54, i32 %add88.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89.i) #9, !srcloc !121
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %59 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %scabase.i, align 4
  %61 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %chan.i, align 1
  %conv97.i = zext i8 %62 to i32
  %mul98.i = shl nuw nsw i32 %conv97.i, 1
  %add99.i = add nuw nsw i32 %mul98.i, 73
  %add.ptr100.i = getelementptr i8, ptr %60, i32 %add99.i
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr100.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  %conv104.i = zext i8 %63 to i32
  %txin.i = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 9
  %64 = ptrtoint ptr %txin.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %txin.i, align 2
  %conv105.i = zext i16 %65 to i32
  %txlast.i = getelementptr inbounds %struct.port_s, ptr %1, i32 0, i32 10
  %66 = ptrtoint ptr %txlast.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %txlast.i, align 4
  %conv106.i = zext i16 %67 to i32
  %68 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %scabase.i, align 4
  %70 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %chan.i, align 1
  %conv111.i = zext i8 %71 to i32
  %mul112.i = shl nuw nsw i32 %conv111.i, 1
  %add113.i = add nuw nsw i32 %mul112.i, 73
  %add.ptr114.i = getelementptr i8, ptr %69, i32 %add113.i
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr114.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  %73 = and i8 %72, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool120.not.i = icmp eq i8 %73, 0
  %cond121.i = select i1 %tobool120.not.i, ptr @.str.32, ptr @.str.31
  %call122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %52, i32 noundef %58, i32 noundef %conv104.i, i32 noundef %conv105.i, i32 noundef %conv106.i, ptr noundef nonnull %cond121.i) #12
  %74 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card1.i, align 4
  %tx_ring_buffers394.i = getelementptr inbounds %struct.card_s, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %tx_ring_buffers394.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %tx_ring_buffers394.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp127395.not.i = icmp eq i16 %77, 0
  br i1 %cmp127395.not.i, label %do.end62.i.sca_dump_rings.exit_crit_edge, label %do.end62.i.do.end132.i_crit_edge

do.end62.i.do.end132.i_crit_edge:                 ; preds = %do.end62.i
  br label %do.end132.i

do.end62.i.sca_dump_rings.exit_crit_edge:         ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sca_dump_rings.exit

do.end132.i:                                      ; preds = %do.end132.i.do.end132.i_crit_edge, %do.end62.i.do.end132.i_crit_edge
  %78 = phi i16 [ %91, %do.end132.i.do.end132.i_crit_edge ], [ %77, %do.end62.i.do.end132.i_crit_edge ]
  %79 = phi ptr [ %89, %do.end132.i.do.end132.i_crit_edge ], [ %75, %do.end62.i.do.end132.i_crit_edge ]
  %cnt.1396.i = phi i16 [ %inc144.i, %do.end132.i.do.end132.i_crit_edge ], [ 0, %do.end62.i.do.end132.i_crit_edge ]
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %rx_ring_buffers.i.i.i379.i = getelementptr inbounds %struct.card_s, ptr %79, i32 0, i32 3
  %82 = ptrtoint ptr %rx_ring_buffers.i.i.i379.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %rx_ring_buffers.i.i.i379.i, align 4
  %84 = urem i16 %cnt.1396.i, %78
  %85 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %chan.i, align 1
  %conv5.i.i.i382.i = zext i8 %86 to i16
  %add.i.i.i385.i = add i16 %83, %78
  %mul.i.i.i386.i = mul i16 %add.i.i.i385.i, %conv5.i.i.i382.i
  %add10.i.i.i.i = add i16 %84, %83
  %conv13.i.i.i387.i = add i16 %add10.i.i.i.i, %mul.i.i.i386.i
  %mul.i.i388.i = mul i16 %conv13.i.i.i387.i, 12
  %conv.i389.i = zext i16 %mul.i.i388.i to i32
  %add.ptr.i390.i = getelementptr i8, ptr %81, i32 %conv.i389.i
  %stat137.i = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i390.i, i32 0, i32 3
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %stat137.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %conv141.i = zext i8 %87 to i32
  %call142.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv141.i) #12
  %inc144.i = add nuw i16 %cnt.1396.i, 1
  %88 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card1.i, align 4
  %tx_ring_buffers.i = getelementptr inbounds %struct.card_s, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %tx_ring_buffers.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %tx_ring_buffers.i, align 2
  %cmp127.i = icmp ult i16 %inc144.i, %91
  br i1 %cmp127.i, label %do.end132.i.do.end132.i_crit_edge, label %do.end132.i.sca_dump_rings.exit_crit_edge

do.end132.i.sca_dump_rings.exit_crit_edge:        ; preds = %do.end132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sca_dump_rings.exit

do.end132.i.do.end132.i_crit_edge:                ; preds = %do.end132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end132.i

sca_dump_rings.exit:                              ; preds = %do.end132.i.sca_dump_rings.exit_crit_edge, %do.end62.i.sca_dump_rings.exit_crit_edge
  %call150.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  %92 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %scabase.i, align 4
  %94 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool160.not.i = icmp eq i8 %95, 0
  %add162.i = select i1 %tobool160.not.i, i32 312, i32 440
  %add.ptr163.i = getelementptr i8, ptr %93, i32 %add162.i
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr163.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  %conv167.i = zext i8 %96 to i32
  %97 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %scabase.i, align 4
  %99 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool173.not.i = icmp eq i8 %100, 0
  %add175.i = select i1 %tobool173.not.i, i32 313, i32 441
  %add.ptr176.i = getelementptr i8, ptr %98, i32 %add175.i
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr176.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  %conv180.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %scabase.i, align 4
  %104 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool186.not.i = icmp eq i8 %105, 0
  %add188.i = select i1 %tobool186.not.i, i32 314, i32 442
  %add.ptr189.i = getelementptr i8, ptr %103, i32 %add188.i
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr189.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %conv193.i = zext i8 %106 to i32
  %107 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %scabase.i, align 4
  %109 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool199.not.i = icmp eq i8 %110, 0
  %add201.i = select i1 %tobool199.not.i, i32 280, i32 408
  %add.ptr202.i = getelementptr i8, ptr %108, i32 %add201.i
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr202.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  %conv206.i = zext i8 %111 to i32
  %112 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %scabase.i, align 4
  %114 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool212.not.i = icmp eq i8 %115, 0
  %add214.i = select i1 %tobool212.not.i, i32 281, i32 409
  %add.ptr215.i = getelementptr i8, ptr %113, i32 %add214.i
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr215.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  %conv219.i = zext i8 %116 to i32
  %117 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %scabase.i, align 4
  %119 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool225.not.i = icmp eq i8 %120, 0
  %add227.i = select i1 %tobool225.not.i, i32 282, i32 410
  %add.ptr228.i = getelementptr i8, ptr %118, i32 %add227.i
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr228.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  %conv232.i = zext i8 %121 to i32
  %122 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %scabase.i, align 4
  %124 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool238.not.i = icmp eq i8 %125, 0
  %add240.i = select i1 %tobool238.not.i, i32 283, i32 411
  %add.ptr241.i = getelementptr i8, ptr %123, i32 %add240.i
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr241.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  %conv245.i = zext i8 %126 to i32
  %127 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %scabase.i, align 4
  %129 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool251.not.i = icmp eq i8 %130, 0
  %add253.i = select i1 %tobool251.not.i, i32 284, i32 412
  %add.ptr254.i = getelementptr i8, ptr %128, i32 %add253.i
  %131 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr254.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  %conv258.i = zext i8 %131 to i32
  %132 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %scabase.i, align 4
  %134 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool264.not.i = icmp eq i8 %135, 0
  %add266.i = select i1 %tobool264.not.i, i32 285, i32 413
  %add.ptr267.i = getelementptr i8, ptr %133, i32 %add266.i
  %136 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr267.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  %conv271.i = zext i8 %136 to i32
  %137 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %scabase.i, align 4
  %139 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool277.not.i = icmp eq i8 %140, 0
  %add279.i = select i1 %tobool277.not.i, i32 264, i32 392
  %add.ptr280.i = getelementptr i8, ptr %138, i32 %add279.i
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr280.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  %conv284.i = zext i8 %141 to i32
  %142 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %scabase.i, align 4
  %144 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool290.not.i = icmp eq i8 %145, 0
  %add292.i = select i1 %tobool290.not.i, i32 265, i32 393
  %add.ptr293.i = getelementptr i8, ptr %143, i32 %add292.i
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr293.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  %conv297.i = zext i8 %146 to i32
  %call298.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %conv167.i, i32 noundef %conv180.i, i32 noundef %conv193.i, i32 noundef %conv206.i, i32 noundef %conv219.i, i32 noundef %conv232.i, i32 noundef %conv245.i, i32 noundef %conv258.i, i32 noundef %conv271.i, i32 noundef %conv284.i, i32 noundef %conv297.i) #12
  %147 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %scabase.i, align 4
  %149 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %148) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %conv310.i = zext i8 %149 to i32
  %150 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %scabase.i, align 4
  %add.ptr314.i = getelementptr i8, ptr %151, i32 108
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr314.i) #9, !srcloc !121
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  %154 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %scabase.i, align 4
  %add.ptr321.i = getelementptr i8, ptr %155, i32 112
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr321.i) #9, !srcloc !121
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  %call325.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv310.i, i32 noundef %153, i32 noundef %157) #12
  br label %return

return:                                           ; preds = %sca_dump_rings.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sca_dump_rings.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci200_set_iface(ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %chan = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 14
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chan, align 1
  %rxs3 = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 11
  %4 = ptrtoint ptr %rxs3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rxs3, align 2
  %6 = and i8 %5, 15
  %txs6 = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 12
  %7 = ptrtoint ptr %txs6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %txs6, align 1
  %9 = and i8 %8, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card1, align 4
  %scabase = getelementptr inbounds %struct.card_s, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scabase, align 4
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %chan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  %add = select i1 %tobool13.not, i32 318, i32 446
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 32) #9, !srcloc !140
  %clock_type = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %clock_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clock_type, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %17, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb27
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %19 = or i8 %6, 64
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ -128, %sw.default ], [ -32, %sw.bb27 ], [ -32, %sw.bb ], [ -64, %entry.sw.epilog_crit_edge ]
  %rxs.0 = phi i8 [ %6, %sw.default ], [ %6, %sw.bb27 ], [ %19, %sw.bb ], [ %6, %entry.sw.epilog_crit_edge ]
  %20 = or i8 %9, %.sink
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %21 = ptrtoint ptr %rxs3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %rxs.0, ptr %rxs3, align 2
  %22 = ptrtoint ptr %txs6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %20, ptr %txs6, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  tail call void @arm_heavy_mb() #9
  %scabase45 = getelementptr inbounds %struct.card_s, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %scabase45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scabase45, align 4
  %conv46 = select i1 %tobool.not, i32 0, i32 128
  %add47 = or i32 %conv46, 316
  %add.ptr48 = getelementptr i8, ptr %24, i32 %add47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr48, i8 %rxs.0) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %scabase45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %scabase45, align 4
  %add54 = or i32 %conv46, 317
  %add.ptr55 = getelementptr i8, ptr %26, i32 %add54
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 %20) #9, !srcloc !140
  %27 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card1, align 4
  %29 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  %scabase.i = getelementptr inbounds %struct.card_s, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scabase.i, align 4
  %conv3.i = select i1 %tobool.not.i, i32 0, i32 128
  %add.i = or i32 %conv3.i, 314
  %add.ptr.i = getelementptr i8, ptr %32, i32 %add.i
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %settings.i = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 4
  %34 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %settings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 0
  %36 = load i32, ptr @pci_clock_freq, align 4
  br i1 %cmp.not.i, label %if.else24.i, label %sw.epilog.do.body.i_crit_edge

sw.epilog.do.body.i_crit_edge:                    ; preds = %sw.epilog
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %sw.epilog.do.body.i_crit_edge
  %br.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ 10, %sw.epilog.do.body.i_crit_edge ]
  %brv.0.i = phi i32 [ %shr.i, %do.body.i.do.body.i_crit_edge ], [ 1024, %sw.epilog.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %br.0.i, -1
  %shr.i = lshr i32 %brv.0.i, 1
  %div.i = udiv i32 %36, %shr.i
  %div8.i = udiv i32 %div.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp9.i = icmp ugt i32 %dec.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %div8.i)
  %cmp11.i = icmp ult i32 %div8.i, 129
  %or.cond.i = select i1 %cmp9.i, i1 %cmp11.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %div.i)
  %cmp13.i = icmp ugt i32 %35, %div.i
  %37 = tail call i32 @llvm.umin.i32(i32 %div8.i, i32 256) #9
  %tmc.0.i = select i1 %cmp13.i, i32 1, i32 %37
  %brv.1.i = select i1 %cmp13.i, i32 1, i32 %shr.i
  %div20.i = udiv i32 %36, %brv.1.i
  %div21.i = udiv i32 %div20.i, %tmc.0.i
  %38 = trunc i32 %dec.i to i8
  %phi.cast.i = select i1 %cmp13.i, i8 0, i8 %38
  %phi.cast125.i = trunc i32 %tmc.0.i to i8
  br label %sca_set_port.exit

if.else24.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i = sdiv i32 %36, 131072
  br label %sca_set_port.exit

sca_set_port.exit:                                ; preds = %if.else24.i, %do.end.i
  %storemerge.i = phi i32 [ %div25.i, %if.else24.i ], [ %div21.i, %do.end.i ]
  %tmc.1.i = phi i8 [ 0, %if.else24.i ], [ %phi.cast125.i, %do.end.i ]
  %br.2.i = phi i8 [ 9, %if.else24.i ], [ %phi.cast.i, %do.end.i ]
  %39 = ptrtoint ptr %settings.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge.i, ptr %settings.i, align 4
  %40 = ptrtoint ptr %rxs3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rxs3, align 2
  %42 = and i8 %41, -16
  %conv30.i = or i8 %42, %br.2.i
  store i8 %conv30.i, ptr %rxs3, align 2
  %43 = ptrtoint ptr %txs6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %txs6, align 1
  %45 = and i8 %44, -16
  %conv35.i = or i8 %45, %br.2.i
  store i8 %conv35.i, ptr %txs6, align 1
  %tmc38.i = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 13
  %46 = ptrtoint ptr %tmc38.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %tmc.1.i, ptr %tmc38.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %tmc38.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tmc38.i, align 8
  %49 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %scabase.i, align 4
  %add45.i = or i32 %conv3.i, 325
  %add.ptr46.i = getelementptr i8, ptr %50, i32 %add45.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46.i, i8 %48) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %tmc38.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tmc38.i, align 8
  %53 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %scabase.i, align 4
  %add53.i = or i32 %conv3.i, 324
  %add.ptr54.i = getelementptr i8, ptr %54, i32 %add53.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr54.i, i8 %52) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  tail call void @arm_heavy_mb() #9
  %55 = ptrtoint ptr %rxs3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rxs3, align 2
  %57 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %scabase.i, align 4
  %add61.i = or i32 %conv3.i, 316
  %add.ptr62.i = getelementptr i8, ptr %58, i32 %add61.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr62.i, i8 %56) #9, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %txs6 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %txs6, align 1
  %61 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %scabase.i, align 4
  %add69.i = or i32 %conv3.i, 317
  %add.ptr70.i = getelementptr i8, ptr %62, i32 %add69.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr70.i, i8 %60) #9, !srcloc !140
  %loopback.i = getelementptr inbounds %struct.port_s, ptr %port, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %loopback.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %loopback.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool72.not.i = icmp eq i16 %64, 0
  %65 = and i8 %33, -4
  %masksel.i = select i1 %tobool72.not.i, i8 0, i8 3
  %md2.0.i = or i8 %masksel.i, %65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  tail call void @arm_heavy_mb() #9
  %66 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %scabase.i, align 4
  %add.ptr88.i = getelementptr i8, ptr %67, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr88.i, i8 %md2.0.i) #9, !srcloc !140
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdlc_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

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
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.port_s, ptr %napi, i32 0, i32 2
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %scabase = getelementptr inbounds %struct.card_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %scabase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scabase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 108
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !121
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  %chan = getelementptr inbounds %struct.port_s, ptr %napi, i32 0, i32 14
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, i32 524288, i32 134217728
  %and = and i32 %cond, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %scabase.i = getelementptr inbounds %struct.card_s, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scabase.i, align 4
  %add.i = select i1 %tobool.not, i32 281, i32 409
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add.i
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not.i = icmp eq i8 %13, 0
  br i1 %tobool6.not.i, label %if.then.if.end_crit_edge, label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %scabase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scabase.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i, i8 4) #9, !srcloc !140
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %scabase.i.i = getelementptr inbounds %struct.card_s, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %scabase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scabase.i.i, align 4
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  %add.i.i = select i1 %tobool.not.i.i, i32 283, i32 411
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %add.i.i
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i.i = icmp eq i8 %23, 0
  %netdev.i.i = getelementptr inbounds %struct.port_s, ptr %napi, i32 0, i32 1
  %24 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i.i, align 8
  br i1 %tobool3.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef %25) #9
  br label %if.end

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef %25) #9
  br label %if.end

if.end:                                           ; preds = %if.else.i.i, %if.then.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %chan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool7.not = icmp eq i8 %27, 0
  %cond8 = select i1 %tobool7.not, i32 32, i32 8192
  %and9 = and i32 %cond8, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end
  %netdev.i = getelementptr inbounds %struct.port_s, ptr %napi, i32 0, i32 1
  %28 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev.i, align 8
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 4
  %lock.i = getelementptr inbounds %struct.port_s, ptr %napi, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %scabase.i39 = getelementptr inbounds %struct.card_s, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %scabase.i39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %scabase.i39, align 4
  %34 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %chan, align 1
  %conv.i = zext i8 %35 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add.i41 = add nuw nsw i32 %mul.i, 73
  %add.ptr.i42 = getelementptr i8, ptr %33, i32 %add.i41
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i42) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  %37 = and i8 %36, -16
  %38 = or i8 %37, 1
  %39 = ptrtoint ptr %scabase.i39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %scabase.i39, align 4
  %41 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %chan, align 1
  %conv7.i = zext i8 %42 to i32
  %mul8.i = shl nuw nsw i32 %conv7.i, 1
  %add9.i = add nuw nsw i32 %mul8.i, 73
  %add.ptr10.i43 = getelementptr i8, ptr %40, i32 %add9.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i43, i8 %38) #9, !srcloc !140
  %txlast.i = getelementptr inbounds %struct.port_s, ptr %napi, i32 0, i32 10
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 5
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 18
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 3
  %tx_ring_buffers.i = getelementptr inbounds %struct.card_s, ptr %31, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i, %if.then11
  %count.0.i = phi i32 [ 0, %if.then11 ], [ %inc42.i, %cleanup.i ]
  %43 = ptrtoint ptr %txlast.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %txlast.i, align 4
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %rx_ring_buffers.i.i.i.i = getelementptr inbounds %struct.card_s, ptr %46, i32 0, i32 3
  %49 = ptrtoint ptr %rx_ring_buffers.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %rx_ring_buffers.i.i.i.i, align 4
  %tx_ring_buffers.i.i.i.i = getelementptr inbounds %struct.card_s, ptr %46, i32 0, i32 4
  %51 = ptrtoint ptr %tx_ring_buffers.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %tx_ring_buffers.i.i.i.i, align 2
  %53 = urem i16 %44, %52
  %54 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %chan, align 1
  %conv5.i.i.i.i = zext i8 %55 to i16
  %add.i.i.i.i = add i16 %52, %50
  %mul.i.i.i.i = mul i16 %add.i.i.i.i, %conv5.i.i.i.i
  %add10.i.i.i.i = add i16 %53, %50
  %conv13.i.i.i.i = add i16 %add10.i.i.i.i, %mul.i.i.i.i
  %mul.i.i.i = mul i16 %conv13.i.i.i.i, 12
  %conv.i.i = zext i16 %mul.i.i.i to i32
  %add.ptr.i.i44 = getelementptr i8, ptr %48, i32 %conv.i.i
  %stat15.i = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i.i44, i32 0, i32 3
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %stat15.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %conv19.i = zext i8 %56 to i32
  %and20.i = and i32 %conv19.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool.not.i45 = icmp eq i32 %and20.i, 0
  br i1 %tobool.not.i45, label %while.end.i, label %if.end.i

if.end.i:                                         ; preds = %while.cond.i
  %and22.i = and i32 %conv19.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %58, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %59 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc26.i = add i32 %60, 1
  store i32 %inc26.i, ptr %tx_fifo_errors.i, align 8
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_packets.i, align 4
  %inc28.i = add i32 %62, 1
  store i32 %inc28.i, ptr %tx_packets.i, align 4
  %len.i = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i.i44, i32 0, i32 2
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %len.i) #9, !srcloc !129
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %conv34.i = zext i16 %64 to i32
  %65 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_bytes.i, align 4
  %add36.i = add i32 %66, %conv34.i
  store i32 %add36.i, ptr %tx_bytes.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then24.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %stat15.i, i8 0) #9, !srcloc !140
  %inc42.i = add i32 %count.0.i, 1
  %67 = ptrtoint ptr %txlast.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %txlast.i, align 4
  %conv44.i = zext i16 %68 to i32
  %add45.i = add nuw nsw i32 %conv44.i, 1
  %69 = ptrtoint ptr %tx_ring_buffers.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %tx_ring_buffers.i, align 2
  %conv46.i = zext i16 %70 to i32
  %rem.i = urem i32 %add45.i, %conv46.i
  %conv47.i = trunc i32 %rem.i to i16
  store i16 %conv47.i, ptr %txlast.i, align 4
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %tobool50.not.i = icmp eq i32 %count.0.i, 0
  br i1 %tobool50.not.i, label %while.end.i.sca_tx_done.exit_crit_edge, label %if.then51.i

while.end.i.sca_tx_done.exit_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sca_tx_done.exit

if.then51.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 103
  %71 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %72) #9
  br label %sca_tx_done.exit

sca_tx_done.exit:                                 ; preds = %if.then51.i, %while.end.i.sca_tx_done.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %if.end12

if.end12:                                         ; preds = %sca_tx_done.exit, %if.end.if.end12_crit_edge
  %73 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %chan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool15.not = icmp eq i8 %74, 0
  %cond16 = select i1 %tobool15.not, i32 2, i32 512
  %and17 = and i32 %cond16, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end12.if.end21_crit_edge, label %if.then19

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end12
  %netdev.i46 = getelementptr inbounds %struct.port_s, ptr %napi, i32 0, i32 1
  %75 = ptrtoint ptr %netdev.i46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %netdev.i46, align 8
  %conv.i48 = zext i8 %74 to i32
  %77 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card, align 4
  %scabase.i51 = getelementptr inbounds %struct.card_s, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %scabase.i51 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %scabase.i51, align 4
  %mul.i52 = shl nuw nsw i32 %conv.i48, 1
  %add.i53 = add nuw nsw i32 %mul.i52, 72
  %add.ptr.i54 = getelementptr i8, ptr %80, i32 %add.i53
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i54) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  tail call void @arm_heavy_mb() #9
  %and.i = and i8 %81, -16
  %or.i = or i8 %and.i, 1
  %82 = ptrtoint ptr %scabase.i51 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %scabase.i51, align 4
  %84 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %chan, align 1
  %conv10.i = zext i8 %85 to i32
  %mul11.i = shl nuw nsw i32 %conv10.i, 1
  %add12.i = add nuw nsw i32 %mul11.i, 72
  %add.ptr13.i = getelementptr i8, ptr %83, i32 %add12.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 %or.i) #9, !srcloc !140
  %86 = and i8 %81, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool16.not.i = icmp eq i8 %86, 0
  br i1 %tobool16.not.i, label %if.then19.if.end.i56_crit_edge, label %if.then.i

if.then19.if.end.i56_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i56

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 36, i32 11
  %87 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_over_errors.i, align 4
  %inc.i55 = add i32 %88, 1
  store i32 %inc.i55, ptr %rx_over_errors.i, align 4
  br label %if.end.i56

if.end.i56:                                       ; preds = %if.then.i, %if.then19.if.end.i56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp179.i = icmp sgt i32 %budget, 0
  br i1 %cmp179.i, label %while.body.lr.ph.i, label %if.end.i56.sca_rx_done.exit_crit_edge

if.end.i56.sca_rx_done.exit_crit_edge:            ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sca_rx_done.exit

while.body.lr.ph.i:                               ; preds = %if.end.i56
  %rxin.i = getelementptr inbounds %struct.port_s, ptr %napi, i32 0, i32 8
  %conv23.i = select i1 %tobool15.not, i32 0, i32 64
  %add24.i = or i32 %conv23.i, 132
  %rxpart51.i = getelementptr inbounds %struct.port_s, ptr %napi, i32 0, i32 5
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 36, i32 4
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 36, i32 14
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 36, i32 13
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 36, i32 12
  %add98.i = or i32 %conv23.i, 136
  %rx_ring_buffers.i = getelementptr inbounds %struct.card_s, ptr %78, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i74.while.body.i_crit_edge, %while.body.lr.ph.i
  %received.0180.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %received.1.i, %cleanup.i74.while.body.i_crit_edge ]
  %89 = ptrtoint ptr %rxin.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %rxin.i, align 8
  %91 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %card, align 4
  %rx_ring_buffers.i.i.i = getelementptr inbounds %struct.card_s, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %rx_ring_buffers.i.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %rx_ring_buffers.i.i.i, align 4
  %tx_ring_buffers.i.i.i = getelementptr inbounds %struct.card_s, ptr %92, i32 0, i32 4
  %95 = ptrtoint ptr %tx_ring_buffers.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %tx_ring_buffers.i.i.i, align 2
  %97 = urem i16 %90, %94
  %98 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %chan, align 1
  %conv5.i.i.i = zext i8 %99 to i16
  %add.i.i.i = add i16 %96, %94
  %mul.i.i.i57 = mul i16 %add.i.i.i, %conv5.i.i.i
  %conv13.i.i.i = add i16 %mul.i.i.i57, %97
  %mul.i.i = mul i16 %conv13.i.i.i, 12
  %conv19.i58 = zext i16 %mul.i.i to i32
  %100 = ptrtoint ptr %scabase.i51 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %scabase.i51, align 4
  %add.ptr25.i = getelementptr i8, ptr %101, i32 %add24.i
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #9, !srcloc !121
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %conv19.i58)
  %cmp29.not.i = icmp uge i32 %103, %conv19.i58
  %add31.i = add nuw nsw i32 %conv19.i58, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add31.i)
  %cmp32.i = icmp ult i32 %103, %add31.i
  %or.cond.i = select i1 %cmp29.not.i, i1 %cmp32.i, i1 false
  br i1 %or.cond.i, label %while.body.i.sca_rx_done.exit_crit_edge, label %if.end35.i

while.body.i.sca_rx_done.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sca_rx_done.exit

if.end35.i:                                       ; preds = %while.body.i
  %104 = ptrtoint ptr %rxin.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %rxin.i, align 8
  %106 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %card, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  %rx_ring_buffers.i.i.i.i59 = getelementptr inbounds %struct.card_s, ptr %107, i32 0, i32 3
  %110 = ptrtoint ptr %rx_ring_buffers.i.i.i.i59 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %rx_ring_buffers.i.i.i.i59, align 4
  %tx_ring_buffers.i.i.i.i60 = getelementptr inbounds %struct.card_s, ptr %107, i32 0, i32 4
  %112 = ptrtoint ptr %tx_ring_buffers.i.i.i.i60 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %tx_ring_buffers.i.i.i.i60, align 2
  %114 = urem i16 %105, %111
  %115 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %chan, align 1
  %conv5.i.i.i.i61 = zext i8 %116 to i16
  %add.i.i.i.i62 = add i16 %113, %111
  %mul.i.i.i.i63 = mul i16 %add.i.i.i.i62, %conv5.i.i.i.i61
  %conv13.i.i.i.i64 = add i16 %mul.i.i.i.i63, %114
  %mul.i.i163.i = mul i16 %conv13.i.i.i.i64, 12
  %conv.i.i65 = zext i16 %mul.i.i163.i to i32
  %add.ptr.i.i66 = getelementptr i8, ptr %109, i32 %conv.i.i65
  %stat40.i = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i.i66, i32 0, i32 3
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %stat40.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  %conv44.i67 = zext i8 %117 to i32
  %and45.i = and i32 %conv44.i67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.else.i69

if.then47.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %rxpart51.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %rxpart51.i, align 8
  br label %cleanup.i74

if.else.i69:                                      ; preds = %if.end35.i
  %and49.i = and i32 %conv44.i67, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i68 = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i68, label %lor.lhs.false.i, label %if.else.i69.if.then53.i_crit_edge

if.else.i69.if.then53.i_crit_edge:                ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

lor.lhs.false.i:                                  ; preds = %if.else.i69
  %119 = ptrtoint ptr %rxpart51.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rxpart51.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool52.not.i = icmp eq i32 %120, 0
  br i1 %tobool52.not.i, label %if.else88.i, label %lor.lhs.false.i.if.then53.i_crit_edge

lor.lhs.false.i.if.then53.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

if.then53.i:                                      ; preds = %lor.lhs.false.i.if.then53.i_crit_edge, %if.else.i69.if.then53.i_crit_edge
  %121 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_errors.i, align 8
  %inc55.i = add i32 %122, 1
  store i32 %inc55.i, ptr %rx_errors.i, align 8
  %and57.i = and i32 %conv44.i67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.else62.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc61.i = add i32 %124, 1
  store i32 %inc61.i, ptr %rx_fifo_errors.i, align 8
  br label %if.then85.i

if.else62.i:                                      ; preds = %if.then53.i
  %and64.i = and i32 %conv44.i67, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %lor.lhs.false66.i, label %if.else62.i.if.then69.i_crit_edge

if.else62.i.if.then69.i_crit_edge:                ; preds = %if.else62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then69.i

lor.lhs.false66.i:                                ; preds = %if.else62.i
  %125 = ptrtoint ptr %rxpart51.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rxpart51.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool68.not.i = icmp eq i32 %126, 0
  br i1 %tobool68.not.i, label %if.else72.i, label %lor.lhs.false66.i.if.then69.i_crit_edge

lor.lhs.false66.i.if.then69.i_crit_edge:          ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then69.i

if.then69.i:                                      ; preds = %lor.lhs.false66.i.if.then69.i_crit_edge, %if.else62.i.if.then69.i_crit_edge
  %127 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_frame_errors.i, align 4
  %inc71.i = add i32 %128, 1
  store i32 %inc71.i, ptr %rx_frame_errors.i, align 4
  br label %if.then85.i

if.else72.i:                                      ; preds = %lor.lhs.false66.i
  %and74.i = and i32 %conv44.i67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.else72.i.if.then85.i_crit_edge, label %if.then76.i

if.else72.i.if.then85.i_crit_edge:                ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85.i

if.then76.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rx_crc_errors.i, align 8
  %inc78.i = add i32 %130, 1
  store i32 %inc78.i, ptr %rx_crc_errors.i, align 8
  br label %if.then85.i

if.then85.i:                                      ; preds = %if.then76.i, %if.else72.i.if.then85.i_crit_edge, %if.then69.i, %if.then59.i
  %131 = ptrtoint ptr %rxpart51.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %rxpart51.i, align 8
  br label %cleanup.i74

if.else88.i:                                      ; preds = %lor.lhs.false.i
  %132 = ptrtoint ptr %rxin.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %rxin.i, align 8
  %134 = ptrtoint ptr %netdev.i46 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %netdev.i46, align 8
  %len1.i.i = getelementptr inbounds %struct.pkt_desc, ptr %add.ptr.i.i66, i32 0, i32 2
  %136 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %len1.i.i) #9, !srcloc !129
  %137 = tail call i16 @llvm.bswap.i16(i16 %136) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %conv.i164.i = zext i16 %137 to i32
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv.i164.i, i32 noundef 2592) #9
  %tobool.not.i.i70 = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i70, label %if.then.i.i71, label %if.end.i.i

if.then.i.i71:                                    ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36, i32 6
  %138 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rx_dropped.i.i, align 8
  %inc.i.i = add i32 %139, 1
  store i32 %inc.i.i, ptr %rx_dropped.i.i, align 8
  br label %sca_rx.exit.i

if.end.i.i:                                       ; preds = %if.else88.i
  %140 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %card, align 4
  %buff_offset.i.i.i = getelementptr inbounds %struct.card_s, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %buff_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %buff_offset.i.i.i, align 8
  %conv.i.i.i = zext i16 %143 to i32
  %rx_ring_buffers.i.i.i166.i = getelementptr inbounds %struct.card_s, ptr %141, i32 0, i32 3
  %144 = ptrtoint ptr %rx_ring_buffers.i.i.i166.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %rx_ring_buffers.i.i.i166.i, align 4
  %tx_ring_buffers.i.i.i167.i = getelementptr inbounds %struct.card_s, ptr %141, i32 0, i32 4
  %146 = ptrtoint ptr %tx_ring_buffers.i.i.i167.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %tx_ring_buffers.i.i.i167.i, align 2
  %148 = urem i16 %133, %145
  %149 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %chan, align 1
  %conv5.i.i.i169.i = zext i8 %150 to i16
  %add.i.i.i170.i = add i16 %147, %145
  %mul.i.i.i171.i = mul i16 %add.i.i.i170.i, %conv5.i.i.i169.i
  %conv13.i.i.i172.i = add i16 %mul.i.i.i171.i, %148
  %conv1.i.i.i = zext i16 %conv13.i.i.i172.i to i32
  %mul.i.i173.i = mul nuw nsw i32 %conv1.i.i.i, 1600
  %add.i.i174.i = add nuw nsw i32 %mul.i.i173.i, %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %151 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data.i.i, align 4
  %153 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %78, align 8
  %add.ptr.i175.i = getelementptr i8, ptr %154, i32 %add.i.i174.i
  tail call void @mmiocpy(ptr noundef %152, ptr noundef %add.ptr.i175.i, i32 noundef %conv.i164.i) #9
  %call7.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %conv.i164.i) #9
  %stats8.i.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36
  %155 = ptrtoint ptr %stats8.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %stats8.i.i, align 8
  %inc9.i.i = add i32 %156, 1
  store i32 %inc9.i.i, ptr %stats8.i.i, align 8
  %len10.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 6
  %157 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %len10.i.i, align 4
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36, i32 2
  %159 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_bytes.i.i, align 8
  %add.i.i72 = add i32 %160, %158
  store i32 %add.i.i72, ptr %rx_bytes.i.i, align 8
  %161 = getelementptr inbounds %struct.anon.44, ptr %call.i.i.i.i, i32 0, i32 2
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %135, ptr %161, align 8
  %163 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %data.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 18
  %165 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %164 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %166 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 21
  %167 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i.i.i.i, ptr %mac_header.i.i.i.i, align 2
  %proto.i.i.i = getelementptr i8, ptr %135, i32 2312
  %168 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %proto.i.i.i, align 4
  %type_trans.i.i.i = getelementptr inbounds %struct.hdlc_proto, ptr %169, i32 0, i32 6
  %170 = ptrtoint ptr %type_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %type_trans.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %171, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.hdlc_type_trans.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i.hdlc_type_trans.exit.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hdlc_type_trans.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i.i = tail call zeroext i16 %171(ptr noundef nonnull %call.i.i.i.i, ptr noundef %135) #9
  br label %hdlc_type_trans.exit.i.i

hdlc_type_trans.exit.i.i:                         ; preds = %if.then.i.i.i, %if.end.i.i.hdlc_type_trans.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ %call3.i.i.i, %if.then.i.i.i ], [ 25, %if.end.i.i.hdlc_type_trans.exit.i.i_crit_edge ]
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 18
  %172 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %retval.0.i.i.i, ptr %protocol.i.i, align 8
  %call13.i.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i.i.i) #9
  br label %sca_rx.exit.i

sca_rx.exit.i:                                    ; preds = %hdlc_type_trans.exit.i.i, %if.then.i.i71
  %inc90.i = add nsw i32 %received.0180.i, 1
  br label %cleanup.i74

cleanup.i74:                                      ; preds = %sca_rx.exit.i, %if.then85.i, %if.then47.i
  %received.1.i = phi i32 [ %received.0180.i, %if.then85.i ], [ %inc90.i, %sca_rx.exit.i ], [ %received.0180.i, %if.then47.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %173 = tail call i32 @llvm.bswap.i32(i32 %conv19.i58) #9
  %174 = ptrtoint ptr %scabase.i51 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %scabase.i51, align 4
  %add.ptr99.i = getelementptr i8, ptr %175, i32 %add98.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 %173) #9, !srcloc !123
  %176 = ptrtoint ptr %rxin.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %rxin.i, align 8
  %conv101.i = zext i16 %177 to i32
  %add102.i = add nuw nsw i32 %conv101.i, 1
  %178 = ptrtoint ptr %rx_ring_buffers.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %rx_ring_buffers.i, align 4
  %conv103.i = zext i16 %179 to i32
  %rem.i73 = urem i32 %add102.i, %conv103.i
  %conv104.i = trunc i32 %rem.i73 to i16
  store i16 %conv104.i, ptr %rxin.i, align 8
  %cmp.i = icmp slt i32 %received.1.i, %budget
  br i1 %cmp.i, label %cleanup.i74.while.body.i_crit_edge, label %cleanup.i74.sca_rx_done.exit_crit_edge

cleanup.i74.sca_rx_done.exit_crit_edge:           ; preds = %cleanup.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sca_rx_done.exit

cleanup.i74.while.body.i_crit_edge:               ; preds = %cleanup.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

sca_rx_done.exit:                                 ; preds = %cleanup.i74.sca_rx_done.exit_crit_edge, %while.body.i.sca_rx_done.exit_crit_edge, %if.end.i56.sca_rx_done.exit_crit_edge
  %received.0.lcssa.i = phi i32 [ 0, %if.end.i56.sca_rx_done.exit_crit_edge ], [ %received.1.i, %cleanup.i74.sca_rx_done.exit_crit_edge ], [ %received.0180.i, %while.body.i.sca_rx_done.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  %180 = ptrtoint ptr %scabase.i51 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %scabase.i51, align 4
  %182 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %chan, align 1
  %conv113.i = zext i8 %183 to i32
  %mul114.i = shl nuw nsw i32 %conv113.i, 1
  %add115.i = add nuw nsw i32 %mul114.i, 72
  %add.ptr116.i = getelementptr i8, ptr %181, i32 %add115.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr116.i, i8 2) #9, !srcloc !140
  br label %if.end21

if.end21:                                         ; preds = %sca_rx_done.exit, %if.end12.if.end21_crit_edge
  %received.0 = phi i32 [ %received.0.lcssa.i, %sca_rx_done.exit ], [ 0, %if.end12.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %received.0, i32 %budget)
  %cmp = icmp slt i32 %received.0, %budget
  br i1 %cmp, label %if.then23, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %received.0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  tail call void @arm_heavy_mb() #9
  %184 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %card, align 4
  %scabase.i75 = getelementptr inbounds %struct.card_s, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %scabase.i75 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %scabase.i75, align 4
  %add.ptr.i76 = getelementptr i8, ptr %187, i32 116
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #9, !srcloc !121
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  %190 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %chan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i78 = icmp eq i8 %191, 0
  %cond.i = select i1 %tobool.not.i78, i32 524322, i32 134226432
  %or.i79 = or i32 %cond.i, %189
  %192 = tail call i32 @llvm.bswap.i32(i32 %or.i79) #9
  %193 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %card, align 4
  %scabase3.i = getelementptr inbounds %struct.card_s, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %scabase3.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %scabase3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %196, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %192) #9, !srcloc !123
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  ret i32 %received.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hdlc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !61, !63, !64, !66, !68, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !107, !108, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/pci200syn.c", i32 426, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/wan/pci200syn.c", i32 427, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/wan/pci200syn.c", i32 428, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_pci_clock_freq, !8, !"__param_pci_clock_freq", i1 false, i1 false}
!8 = !{!"../drivers/net/wan/pci200syn.c", i32 430, i32 1}
!9 = !{ptr @__UNIQUE_ID_pci_clock_freqtype345, !8, !"__UNIQUE_ID_pci_clock_freqtype345", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_pci_clock_freq346, !11, !"__UNIQUE_ID_pci_clock_freq346", i1 false, i1 false}
!11 = !{!"../drivers/net/wan/pci200syn.c", i32 431, i32 1}
!12 = !{ptr @__initcall__kmod_pci200syn__347_432_pci200_init_module6, !13, !"__initcall__kmod_pci200syn__347_432_pci200_init_module6", i1 false, i1 false}
!13 = !{!"../drivers/net/wan/pci200syn.c", i32 432, i32 1}
!14 = !{ptr @__exitcall_pci200_cleanup_module, !15, !"__exitcall_pci200_cleanup_module", i1 false, i1 false}
!15 = !{!"../drivers/net/wan/pci200syn.c", i32 433, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wan/pci200syn.c", i32 406, i32 11}
!18 = !{ptr @pci200_pci_driver, !19, !"pci200_pci_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/wan/pci200syn.c", i32 405, i32 26}
!20 = !{ptr @pci200_pci_tbl, !21, !"pci200_pci_tbl", i1 false, i1 false}
!21 = !{!"../drivers/net/wan/pci200syn.c", i32 399, i32 35}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wan/pci200syn.c", i32 294, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pci200_pci_init_one._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @pci200_pci_init_one._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wan/pci200syn.c", i32 302, i32 3}
!30 = !{ptr @pci200_pci_init_one._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pci200_pci_init_one._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wan/pci200syn.c", i32 317, i32 3}
!34 = !{ptr @pci200_pci_init_one._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pci200_pci_init_one._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wan/pci200syn.c", i32 343, i32 2}
!38 = !{ptr @pci200_pci_init_one._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pci200_pci_init_one._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wan/pci200syn.c", i32 348, i32 3}
!42 = !{ptr @pci200_pci_init_one._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pci200_pci_init_one._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wan/pci200syn.c", i32 358, i32 52}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wan/pci200syn.c", i32 359, i32 3}
!48 = !{ptr @pci200_pci_init_one._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pci200_pci_init_one._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @pci200_pci_init_one.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/net/wan/pci200syn.c", i32 374, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wan/pci200syn.c", i32 386, i32 4}
!55 = !{ptr @pci200_pci_init_one._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pci200_pci_init_one._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wan/pci200syn.c", i32 392, i32 20}
!59 = !{ptr @pci200_ops, !60, !"pci200_ops", i1 false, i1 false}
!60 = !{!"../drivers/net/wan/pci200syn.c", i32 255, i32 36}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!63 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wan/hd64572.c", i32 524, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sca_dump_rings._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @sca_dump_rings._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wan/hd64572.c", i32 530, i32 3}
!78 = !{ptr @sca_dump_rings._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sca_dump_rings._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wan/hd64572.c", i32 531, i32 2}
!82 = !{ptr @sca_dump_rings._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sca_dump_rings._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wan/hd64572.c", i32 533, i32 2}
!86 = !{ptr @sca_dump_rings._entry.39, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sca_dump_rings._entry_ptr.41, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @sca_dump_rings._entry.42, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/net/wan/hd64572.c", i32 541, i32 3}
!90 = !{ptr @sca_dump_rings._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @sca_dump_rings._entry.44, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/net/wan/hd64572.c", i32 542, i32 2}
!93 = !{ptr @sca_dump_rings._entry_ptr.45, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wan/hd64572.c", i32 544, i32 2}
!96 = !{ptr @sca_dump_rings._entry.46, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @sca_dump_rings._entry_ptr.48, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wan/hd64572.c", i32 558, i32 2}
!100 = !{ptr @sca_dump_rings._entry.49, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @sca_dump_rings._entry_ptr.51, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @__param_str_pci_clock_freq, !8, !"__param_str_pci_clock_freq", i1 false, i1 false}
!103 = !{ptr @pci_clock_freq, !104, !"pci_clock_freq", i1 false, i1 false}
!104 = !{!"../drivers/net/wan/pci200syn.c", i32 42, i32 12}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wan/pci200syn.c", i32 415, i32 3}
!107 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @pci200_init_module._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @pci200_init_module._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2156354656}
!121 = !{i64 6760561}
!122 = !{i64 2156355513}
!123 = !{i64 6760143}
!124 = !{i64 2156355960}
!125 = !{i64 2156357358}
!126 = !{i64 2156358217}
!127 = !{i64 2156358665}
!128 = !{i64 2156365414}
!129 = !{i64 6759723}
!130 = !{i64 2156366263}
!131 = !{i64 6759523}
!132 = !{i64 6760341}
!133 = !{i64 2156370271}
!134 = !{i64 2156340650}
!135 = !{i64 2156341314}
!136 = !{i64 2156300050}
!137 = !{i64 2156279348}
!138 = !{i64 2156280399}
!139 = !{i64 2156341613}
!140 = !{i64 6759946}
!141 = !{i64 2156341984}
!142 = !{i64 2156342355}
!143 = !{i64 2156342706}
!144 = !{i64 2156343053}
!145 = !{i64 2156343430}
!146 = !{i64 2156343814}
!147 = !{i64 2156344198}
!148 = !{i64 2156344582}
!149 = !{i64 2156344944}
!150 = !{i64 2156336819}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2156337075, i64 2156337565, i64 2156337112, i64 2156337168, i64 2156337202, i64 2156337226, i64 2156337267, i64 2156337288, i64 2156337316, i64 2156337350}
!153 = !{i64 2156256879}
!154 = !{i64 2156338548}
!155 = !{i64 2156338930}
!156 = !{i64 2156339451}
!157 = !{i64 2156340108}
!158 = !{i64 2156340412}
!159 = !{i64 2156282138}
!160 = !{i64 2156282534}
!161 = !{i64 2156282921}
!162 = !{i64 2156283289}
!163 = !{i64 2156283673}
!164 = !{i64 2156284093}
!165 = !{i64 2156284524}
!166 = !{i64 2156284958}
!167 = !{i64 2156285385}
!168 = !{i64 2156286032}
!169 = !{i64 2156286703}
!170 = !{i64 2156287302}
!171 = !{i64 2156287908}
!172 = !{i64 2156288342}
!173 = !{i64 2156288736}
!174 = !{i64 2156289280}
!175 = !{i64 2156289714}
!176 = !{i64 2156290148}
!177 = !{i64 2156290577}
!178 = !{i64 2156291011}
!179 = !{i64 2156281793}
!180 = !{i64 2156302972}
!181 = !{i64 2156303345}
!182 = !{i64 2156303719}
!183 = !{i64 2156304092}
!184 = !{i64 2156304466}
!185 = !{i64 2156304884}
!186 = !{i64 2156305273}
!187 = !{i64 2156305648}
!188 = !{i64 2156306023}
!189 = !{i64 2156306398}
!190 = !{i64 2156306773}
!191 = !{i64 2156307190}
!192 = !{i64 2156307738}
!193 = !{i64 2156308128}
!194 = !{i64 2156308518}
!195 = !{i64 2156308908}
!196 = !{i64 2156309293}
!197 = !{i64 2156309673}
!198 = !{i64 2156276561}
!199 = !{i64 2156277612}
!200 = !{i64 2156346720}
!201 = !{i64 2156310183}
!202 = !{i64 2156347118}
!203 = !{i64 2153486354, i64 2153486379}
!204 = !{i64 2153485673, i64 2153485698}
!205 = !{i64 5981228}
!206 = !{i64 5981425}
!207 = !{i64 2153466658}
!208 = !{i64 2156347535}
!209 = !{i64 2156313079}
!210 = !{i64 2156313889}
!211 = !{i64 2156314268}
!212 = !{i64 2156314647}
!213 = !{i64 2156316390}
!214 = !{i64 2156320616}
!215 = !{i64 2156321426}
!216 = !{i64 2156321805}
!217 = !{i64 2156322184}
!218 = !{i64 2156323927}
!219 = !{i64 2156328495}
!220 = !{i64 2156328965}
!221 = !{i64 2156329435}
!222 = !{i64 2156329905}
!223 = !{i64 2156330375}
!224 = !{i64 2156330845}
!225 = !{i64 2156331315}
!226 = !{i64 2156331785}
!227 = !{i64 2156332255}
!228 = !{i64 2156332725}
!229 = !{i64 2156333195}
!230 = !{i64 2156335061}
!231 = !{i64 2156335637}
!232 = !{i64 2156336213}
!233 = !{i64 2156345458}
!234 = !{i64 2156345926}
!235 = !{i64 2156346298}
!236 = !{i64 2156300508}
!237 = !{i64 2156300875}
!238 = !{i64 2156301265}
!239 = !{i64 2156301655}
!240 = !{i64 2156302045}
!241 = !{i64 2156302433}
!242 = !{i64 2156299474}
!243 = !{i64 2156291656}
!244 = !{i64 2156291968}
!245 = !{i64 2156296294}
!246 = !{i64 2156296746}
!247 = !{i64 2156297091}
!248 = !{i64 2156297559}
!249 = !{i64 2156297765}
!250 = !{i64 2156293344}
!251 = !{i64 2156293796}
!252 = !{i64 2156294537}
!253 = !{i64 2156294757}
!254 = !{i64 2156292668}
!255 = !{i64 2156295104}
!256 = !{i64 2156295662}
