; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igbvf/netdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igbvf/netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%struct.atomic_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.igbvf_info = type { i32, i32, i32, ptr, ptr }
%struct.igbvf_adapter = type { %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i32, i16, i16, i16, %struct.spinlock, i32, i32, i32, [120 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.e1000_hw, %struct.e1000_vf_stats, i64, %struct.igbvf_ring, %struct.igbvf_ring, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [116 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_mbx_info, %struct.spinlock, %union.anon.151, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i16, i16, i8 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%union.anon.151 = type { %struct.e1000_dev_spec_vf }
%struct.e1000_dev_spec_vf = type { i32, i32 }
%struct.e1000_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igbvf_ring = type { ptr, ptr, i32, i32, i32, i16, i16, i16, i16, ptr, %struct.napi_struct, [21 x i8], i32, i32, i32, i16, i32, ptr, %struct.igbvf_queue_stats }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.igbvf_queue_stats = type { i64, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.165, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.165 = type { ptr }
%struct.igbvf_buffer = type { i32, ptr, %union.anon.162 }
%union.anon.162 = type { %struct.anon.164 }
%struct.anon.164 = type { ptr, i64, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.igbvf_desc = type { %union.e1000_adv_rx_desc }
%union.e1000_adv_rx_desc = type { %struct.anon.152 }
%struct.anon.152 = type { i64, i64 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.msix_entry = type { i32, i16 }
%struct.anon.153 = type { %struct.anon.154, %struct.anon.159 }
%struct.anon.154 = type { %union.anon.155, %union.anon.157 }
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%struct.anon.159 = type { i32, i16, i16 }
%struct.anon.156 = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.e1000_adv_tx_context_desc = type { i32, i32, i32, i32 }
%struct.anon.60 = type { i16, i16 }
%struct.anon.163 = type { i32, ptr, i16, i16 }
%struct.anon.160 = type { i64, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.anon.161 = type { i64, i32, i32 }

@igbvf_driver_name = dso_local global { [6 x i8], [26 x i8] } { [6 x i8] c"igbvf\00", [26 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [12 x i8] c"igbvf.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype498 = internal constant [25 x i8] c"igbvf.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug499 = internal constant [49 x i8] c"igbvf.parm=debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@igbvf_setup_tx_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Unable to allocate memory for the transmit descriptor ring\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igbvf_setup_tx_resources\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/igbvf/netdev.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@igbvf_setup_tx_resources._entry_ptr = internal global ptr @igbvf_setup_tx_resources._entry, section ".printk_index", align 4
@igbvf_setup_rx_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Unable to allocate memory for the receive descriptor ring\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igbvf_setup_rx_resources\00", [39 x i8] zeroinitializer }, align 32
@igbvf_setup_rx_resources._entry_ptr = internal global ptr @igbvf_setup_rx_resources._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__initcall__kmod_igbvf__505_2968_igbvf_init_module6 = internal global ptr @igbvf_init_module, section ".initcall6.init", align 4
@igbvf_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @igbvf_driver_name, ptr @igbvf_pci_tbl, ptr @igbvf_probe, ptr @igbvf_remove, ptr null, ptr null, ptr @igbvf_shutdown, ptr null, ptr null, ptr null, ptr @igbvf_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @igbvf_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_igbvf_exit_module = internal global ptr @igbvf_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author506 = internal constant [68 x i8] c"igbvf.author=Intel Corporation, <e1000-devel@lists.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description507 = internal constant [67 x i8] c"igbvf.description=Intel(R) Gigabit Virtual Function Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file508 = internal constant [50 x i8] c"igbvf.file=drivers/net/ethernet/intel/igbvf/igbvf\00", section ".modinfo", align 1
@__UNIQUE_ID_license509 = internal constant [21 x i8] c"igbvf.license=GPL v2\00", section ".modinfo", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@igbvf_set_uni._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013igbvf: Too many unicast filters - No Space\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"igbvf_set_uni\00", [18 x i8] zeroinitializer }, align 32
@igbvf_set_uni._entry_ptr = internal global ptr @igbvf_set_uni._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@igbvf_vlan_rx_add_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1239, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Vlan id %d\0A is not added\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igbvf_vlan_rx_add_vid\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@igbvf_vlan_rx_add_vid._entry_ptr = internal global ptr @igbvf_vlan_rx_add_vid._entry, section ".printk_index", align 4
@igbvf_alloc_rx_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX DMA map failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igbvf_alloc_rx_buffers\00", [41 x i8] zeroinitializer }, align 32
@igbvf_alloc_rx_buffers._entry_ptr = internal global ptr @igbvf_alloc_rx_buffers._entry, section ".printk_index", align 4
@igbvf_alloc_rx_buffers._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@igbvf_alloc_rx_buffers._entry_ptr.16 = internal global ptr @igbvf_alloc_rx_buffers._entry.15, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@igbvf_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1523, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PF still resetting\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"igbvf_reset\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@igbvf_reset._entry_ptr = internal global ptr @igbvf_reset._entry, section ".printk_index", align 4
@igbvf_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 2961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016igbvf: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igbvf_init_module\00", [46 x i8] zeroinitializer }, align 32
@igbvf_init_module._entry_ptr = internal global ptr @igbvf_init_module._entry, section ".printk_index", align 4
@igbvf_driver_string = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Intel(R) Gigabit Virtual Function Network Driver\00", [47 x i8] zeroinitializer }, align 32
@igbvf_init_module._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 2962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igbvf_init_module._entry_ptr.26 = internal global ptr @igbvf_init_module._entry.25, section ".printk_index", align 4
@igbvf_copyright = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Copyright (c) 2009 - 2012 Intel Corporation.\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"igbvf\00", [26 x i8] zeroinitializer }, align 32
@igbvf_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 4298, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5408, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@igbvf_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @igbvf_io_error_detected, ptr null, ptr @igbvf_io_slot_reset, ptr null, ptr null, ptr @igbvf_io_resume }, [40 x i8] zeroinitializer }, align 32
@igbvf_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @igbvf_suspend, ptr @igbvf_resume, ptr @igbvf_suspend, ptr @igbvf_resume, ptr @igbvf_suspend, ptr @igbvf_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@igbvf_info_tbl = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @igbvf_vf_info, ptr @igbvf_i350_vf_info], [24 x i8] zeroinitializer }, align 32
@igbvf_probe.cards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@igbvf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 2703, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No usable DMA configuration, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"igbvf_probe\00", [20 x i8] zeroinitializer }, align 32
@igbvf_probe._entry_ptr = internal global ptr @igbvf_probe._entry, section ".printk_index", align 4
@igbvf_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @igbvf_open, ptr @igbvf_close, ptr @igbvf_xmit_frame, ptr @igbvf_features_check, ptr null, ptr null, ptr @igbvf_set_rx_mode, ptr @igbvf_set_mac, ptr null, ptr null, ptr @igbvf_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @igbvf_change_mtu, ptr null, ptr @igbvf_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr @igbvf_vlan_rx_add_vid, ptr @igbvf_vlan_rx_kill_vid, ptr @igbvf_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @igbvf_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@igbvf_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 2810, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PF still in reset state. Is the PF interface up?\0A\00", [46 x i8] zeroinitializer }, align 32
@igbvf_probe._entry_ptr.32 = internal global ptr @igbvf_probe._entry.30, section ".printk_index", align 4
@igbvf_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 2814, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error reading MAC address.\0A\00", [36 x i8] zeroinitializer }, align 32
@igbvf_probe._entry_ptr.35 = internal global ptr @igbvf_probe._entry.33, section ".printk_index", align 4
@igbvf_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 2817, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MAC address not assigned by administrator.\0A\00", [52 x i8] zeroinitializer }, align 32
@igbvf_probe._entry_ptr.38 = internal global ptr @igbvf_probe._entry.36, section ".printk_index", align 4
@igbvf_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 2824, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Assigning random MAC address.\0A\00", [33 x i8] zeroinitializer }, align 32
@igbvf_probe._entry_ptr.41 = internal global ptr @igbvf_probe._entry.39, section ".printk_index", align 4
@igbvf_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&adapter->watchdog_timer)\00", [37 x i8] zeroinitializer }, align 32
@igbvf_probe.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&adapter->reset_task)\00", [56 x i8] zeroinitializer }, align 32
@igbvf_probe.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&adapter->watchdog_task)\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@igbvf_vf_info = internal global { %struct.igbvf_info, [44 x i8] } { %struct.igbvf_info { i32 1, i32 0, i32 10, ptr @e1000_init_function_pointers_vf, ptr null }, [44 x i8] zeroinitializer }, align 32
@igbvf_i350_vf_info = internal global { %struct.igbvf_info, [44 x i8] } { %struct.igbvf_info { i32 2, i32 0, i32 10, ptr @e1000_init_function_pointers_vf, ptr null }, [44 x i8] zeroinitializer }, align 32
@igbvf_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&adapter->tx_queue_lock\00", [40 x i8] zeroinitializer }, align 32
@igbvf_sw_init.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter->stats_lock\00", [43 x i8] zeroinitializer }, align 32
@igbvf_sw_init.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&adapter->hw.mbx_lock\00", [42 x i8] zeroinitializer }, align 32
@igbvf_set_interrupt_capability._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1038, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to initialize MSI-X interrupts.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"igbvf_set_interrupt_capability\00", [33 x i8] zeroinitializer }, align 32
@igbvf_set_interrupt_capability._entry_ptr = internal global ptr @igbvf_set_interrupt_capability._entry, section ".printk_index", align 4
@.str.55 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@igbvf_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 1136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to allocate interrupt, Error: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igbvf_request_irq\00", [46 x i8] zeroinitializer }, align 32
@igbvf_request_irq._entry_ptr = internal global ptr @igbvf_request_irq._entry, section ".printk_index", align 4
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-tx-0\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-rx-0\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@igbvf_tx_map_adv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 2194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TX DMA map failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"igbvf_tx_map_adv\00", [47 x i8] zeroinitializer }, align 32
@igbvf_tx_map_adv._entry_ptr = internal global ptr @igbvf_tx_map_adv._entry, section ".printk_index", align 4
@igbvf_change_mtu.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 2, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"igbvf_change_mtu\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"changing MTU from %d to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@igbvf_vlan_rx_kill_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to remove vlan id %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igbvf_vlan_rx_kill_vid\00", [41 x i8] zeroinitializer }, align 32
@igbvf_vlan_rx_kill_vid._entry_ptr = internal global ptr @igbvf_vlan_rx_kill_vid._entry, section ".printk_index", align 4
@igbvf_watchdog_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1937, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link is Down\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"igbvf_watchdog_task\00", [44 x i8] zeroinitializer }, align 32
@igbvf_watchdog_task._entry_ptr = internal global ptr @igbvf_watchdog_task._entry, section ".printk_index", align 4
@igbvf_print_link_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1869, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Link is Up %d Mbps %s Duplex\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igbvf_print_link_info\00", [42 x i8] zeroinitializer }, align 32
@igbvf_print_link_info._entry_ptr = internal global ptr @igbvf_print_link_info._entry, section ".printk_index", align 4
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@igbvf_print_device_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 2599, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Intel(R) I350 Virtual Function\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igbvf_print_device_info\00", [40 x i8] zeroinitializer }, align 32
@igbvf_print_device_info._entry_ptr = internal global ptr @igbvf_print_device_info._entry, section ".printk_index", align 4
@igbvf_print_device_info._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 2601, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Intel(R) 82576 Virtual Function\0A\00", [63 x i8] zeroinitializer }, align 32
@igbvf_print_device_info._entry_ptr.77 = internal global ptr @igbvf_print_device_info._entry.75, section ".printk_index", align 4
@igbvf_print_device_info._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.2, i32 2602, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Address: %pM\0A\00", [18 x i8] zeroinitializer }, align 32
@igbvf_print_device_info._entry_ptr.80 = internal global ptr @igbvf_print_device_info._entry.78, section ".printk_index", align 4
@igbvf_io_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 2558, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"igbvf_io_slot_reset\00", [44 x i8] zeroinitializer }, align 32
@igbvf_io_slot_reset._entry_ptr = internal global ptr @igbvf_io_slot_reset._entry, section ".printk_index", align 4
@igbvf_io_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 2584, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't bring device back up after reset\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"igbvf_io_resume\00", [16 x i8] zeroinitializer }, align 32
@igbvf_io_resume._entry_ptr = internal global ptr @igbvf_io_resume._entry, section ".printk_index", align 4
@switch.table.igbvf_poll = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 56, i32 196, i32 980], [20 x i8] zeroinitializer }, align 32
@switch.table.igbvf_poll.85 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 56, i32 196, i32 980], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 16, i64 6, i64 8, i64 16]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 1500, i64 1504]
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"igbvf_driver_name\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 27, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 34, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 444, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 488, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"igbvf_driver\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2941, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 717, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1453, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1239, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 176, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 195, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 326, i32 6 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1523, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2961, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c"igbvf_driver_string\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 28, i32 19 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2962, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"igbvf_copyright\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 30, i32 19 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2964, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"igbvf_pci_tbl\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2931, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant [18 x i8] c"igbvf_err_handler\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2925, i32 40 }
@___asan_gen_.208 = private unnamed_addr constant [13 x i8] c"igbvf_pm_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2938, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"igbvf_info_tbl\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 57, i32 33 }
@___asan_gen_.214 = private unnamed_addr constant [12 x i8] c"cards_found\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2688, i32 13 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2702, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"igbvf_netdev_ops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2652, i32 36 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2809, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2814, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2816, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2824, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2830, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2832, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2833, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2846, i32 23 }
@___asan_gen_.274 = private unnamed_addr constant [14 x i8] c"igbvf_vf_info\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 43, i32 26 }
@___asan_gen_.277 = private unnamed_addr constant [19 x i8] c"igbvf_i350_vf_info\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 50, i32 26 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1656, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1661, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1662, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1037, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1160, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1135, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1056, i32 35 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1057, i32 35 }
@___asan_gen_.326 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 598, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2194, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2432, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1259, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1937, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1867, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2599, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2601, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2602, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2557, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.413 = private constant [45 x i8] c"../drivers/net/ethernet/intel/igbvf/netdev.c\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2583, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant [24 x i8] c"switch.table.igbvf_poll\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [27 x i8] c"switch.table.igbvf_poll.85\00", align 1
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_author506, ptr @__UNIQUE_ID_debug499, ptr @__UNIQUE_ID_debugtype498, ptr @__UNIQUE_ID_description507, ptr @__UNIQUE_ID_file508, ptr @__UNIQUE_ID_license509, ptr @__exitcall_igbvf_exit_module, ptr @__initcall__kmod_igbvf__505_2968_igbvf_init_module6, ptr @__param_debug, ptr @igbvf_alloc_rx_buffers._entry, ptr @igbvf_alloc_rx_buffers._entry.15, ptr @igbvf_alloc_rx_buffers._entry_ptr, ptr @igbvf_alloc_rx_buffers._entry_ptr.16, ptr @igbvf_exit_module, ptr @igbvf_init_module._entry, ptr @igbvf_init_module._entry.25, ptr @igbvf_init_module._entry_ptr, ptr @igbvf_init_module._entry_ptr.26, ptr @igbvf_io_resume._entry, ptr @igbvf_io_resume._entry_ptr, ptr @igbvf_io_slot_reset._entry, ptr @igbvf_io_slot_reset._entry_ptr, ptr @igbvf_print_device_info._entry, ptr @igbvf_print_device_info._entry.75, ptr @igbvf_print_device_info._entry.78, ptr @igbvf_print_device_info._entry_ptr, ptr @igbvf_print_device_info._entry_ptr.77, ptr @igbvf_print_device_info._entry_ptr.80, ptr @igbvf_print_link_info._entry, ptr @igbvf_print_link_info._entry_ptr, ptr @igbvf_probe._entry, ptr @igbvf_probe._entry.30, ptr @igbvf_probe._entry.33, ptr @igbvf_probe._entry.36, ptr @igbvf_probe._entry.39, ptr @igbvf_probe._entry_ptr, ptr @igbvf_probe._entry_ptr.32, ptr @igbvf_probe._entry_ptr.35, ptr @igbvf_probe._entry_ptr.38, ptr @igbvf_probe._entry_ptr.41, ptr @igbvf_request_irq._entry, ptr @igbvf_request_irq._entry_ptr, ptr @igbvf_reset._entry, ptr @igbvf_reset._entry_ptr, ptr @igbvf_set_interrupt_capability._entry, ptr @igbvf_set_interrupt_capability._entry_ptr, ptr @igbvf_set_uni._entry, ptr @igbvf_set_uni._entry_ptr, ptr @igbvf_setup_rx_resources._entry, ptr @igbvf_setup_rx_resources._entry_ptr, ptr @igbvf_setup_tx_resources._entry, ptr @igbvf_setup_tx_resources._entry_ptr, ptr @igbvf_tx_map_adv._entry, ptr @igbvf_tx_map_adv._entry_ptr, ptr @igbvf_vlan_rx_add_vid._entry, ptr @igbvf_vlan_rx_add_vid._entry_ptr, ptr @igbvf_vlan_rx_kill_vid._entry, ptr @igbvf_vlan_rx_kill_vid._entry_ptr, ptr @igbvf_watchdog_task._entry, ptr @igbvf_watchdog_task._entry_ptr, ptr @igbvf_driver_name, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @igbvf_driver, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @igbvf_driver_string, ptr @igbvf_copyright, ptr @.str.27, ptr @igbvf_pci_tbl, ptr @igbvf_err_handler, ptr @igbvf_pm_ops, ptr @igbvf_info_tbl, ptr @igbvf_probe.cards_found, ptr @.str.28, ptr @.str.29, ptr @igbvf_netdev_ops, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @igbvf_probe.__key, ptr @.str.42, ptr @igbvf_probe.__key.43, ptr @.str.44, ptr @igbvf_probe.__key.45, ptr @.str.46, ptr @.str.47, ptr @igbvf_vf_info, ptr @igbvf_i350_vf_info, ptr @igbvf_sw_init.__key, ptr @.str.48, ptr @igbvf_sw_init.__key.49, ptr @.str.50, ptr @igbvf_sw_init.__key.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @switch.table.igbvf_poll, ptr @switch.table.igbvf_poll.85], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_driver_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_setup_tx_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_setup_rx_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_set_uni._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_vlan_rx_add_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_alloc_rx_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_alloc_rx_buffers._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_driver_string to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_init_module._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_copyright to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_info_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_probe.cards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_probe.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_probe.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_vf_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_i350_vf_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_sw_init.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_sw_init.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_set_interrupt_capability._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_tx_map_adv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_vlan_rx_kill_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_watchdog_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_print_link_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_print_device_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_print_device_info._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_print_device_info._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_io_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igbvf_io_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igbvf_poll to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igbvf_poll.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igbvf_setup_tx_resources(ptr noundef %adapter, ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 43
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %count = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 4
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  %mul = shl i32 %3, 5
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #19
  %buffer_info = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %buffer_info, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  %mul4 = shl i32 %6, 4
  %size5 = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 3
  %add = add i32 %mul4, 4095
  %and = and i32 %add, -4096
  %7 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %size5, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #16
  %desc = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %desc, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end.err_crit_edge, label %if.end13

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %adapter, ptr %tx_ring, align 8
  %next_to_use = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 5
  %10 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 6
  %11 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %next_to_clean, align 2
  br label %cleanup

err:                                              ; preds = %if.end.err_crit_edge, %entry.err_crit_edge
  %12 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %13) #16
  %14 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev1, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str) #20
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -12, %err ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igbvf_setup_rx_resources(ptr noundef %adapter, ptr noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 43
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %count = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 4
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  %mul = shl i32 %3, 5
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #19
  %buffer_info = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %buffer_info, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  %mul4 = shl i32 %6, 4
  %size5 = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 3
  %add = add i32 %mul4, 4095
  %and = and i32 %add, -4096
  %7 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %size5, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #16
  %desc = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %desc, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end.err_crit_edge, label %if.end13

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %next_to_clean = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 6
  %9 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 5
  %10 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %next_to_use, align 4
  %11 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %adapter, ptr %rx_ring, align 8
  br label %cleanup

err:                                              ; preds = %if.end.err_crit_edge, %entry.err_crit_edge
  %12 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %13) #16
  %14 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %buffer_info, align 4
  %15 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev1, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.5) #20
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -12, %err ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igbvf_free_tx_resources(ptr nocapture noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %pdev1 = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  tail call fastcc void @igbvf_clean_tx_ring(ptr noundef %tx_ring)
  %buffer_info = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %5) #16
  %6 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %buffer_info, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %size = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %desc = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 1
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %dma = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 2
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef 0) #16
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igbvf_clean_tx_ring(ptr nocapture noundef %tx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %buffer_info2 = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 9
  %2 = ptrtoint ptr %buffer_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 4
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp32.not = icmp eq i32 %5, 0
  br i1 %cmp32.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pdev4.i = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 43
  br label %for.body

for.body:                                         ; preds = %igbvf_put_txbuf.exit.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %igbvf_put_txbuf.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %buffer_info2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_info2, align 4
  %arrayidx = getelementptr %struct.igbvf_buffer, ptr %7, i32 %i.033
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.body.if.end10.i_crit_edge, label %if.then.i

for.body.if.end10.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev4.i, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %length7.i = getelementptr %struct.igbvf_buffer, ptr %7, i32 %i.033, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %length7.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length7.i, align 8
  %conv8.i = zext i16 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev5.i, i32 noundef %9, i32 noundef %conv8.i, i32 noundef 1, i32 noundef 0) #16
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %for.body.if.end10.i_crit_edge
  %skb.i = getelementptr %struct.igbvf_buffer, ptr %7, i32 %i.033, i32 1
  %15 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb.i, align 4
  %tobool11.not.i = icmp eq ptr %16, null
  br i1 %tobool11.not.i, label %if.end10.i.igbvf_put_txbuf.exit_crit_edge, label %if.then12.i

if.end10.i.igbvf_put_txbuf.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_put_txbuf.exit

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %16, i32 noundef 1) #16
  %17 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %skb.i, align 4
  br label %igbvf_put_txbuf.exit

igbvf_put_txbuf.exit:                             ; preds = %if.then12.i, %if.end10.i.igbvf_put_txbuf.exit_crit_edge
  %18 = getelementptr %struct.igbvf_buffer, ptr %7, i32 %i.033, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 8
  %inc = add nuw i32 %i.033, 1
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 8
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %igbvf_put_txbuf.exit.for.body_crit_edge, label %for.end.loopexit

igbvf_put_txbuf.exit.for.body_crit_edge:          ; preds = %igbvf_put_txbuf.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end.loopexit:                                 ; preds = %igbvf_put_txbuf.exit
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo = shl i32 %21, 5
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %22 = ptrtoint ptr %buffer_info2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer_info2, align 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 %.lcssa)
  %desc = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 1
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 4
  %size6 = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 3
  %27 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size6, align 4
  %29 = call ptr @memset(ptr %26, i32 0, i32 %28)
  %next_to_use = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 5
  %30 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 6
  %31 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %next_to_clean, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  %hw_addr = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 45, i32 1
  %32 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_addr, align 4
  %head = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 7
  %34 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %head, align 8
  %conv = zext i16 %35 to i32
  %add.ptr = getelementptr i8, ptr %33, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %36 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr, align 4
  %tail = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 8
  %38 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tail, align 2
  %conv12 = zext i16 %39 to i32
  %add.ptr13 = getelementptr i8, ptr %37, i32 %conv12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #16, !srcloc !218
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igbvf_free_rx_resources(ptr nocapture noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 8
  %pdev1 = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  tail call fastcc void @igbvf_clean_rx_ring(ptr noundef %rx_ring)
  %buffer_info = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %5) #16
  %6 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %buffer_info, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %size = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %desc = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 1
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %dma = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 2
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef 0) #16
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igbvf_clean_rx_ring(ptr nocapture noundef %rx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 8
  %pdev2 = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  %buffer_info3 = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_info3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_info3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 4
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp86.not = icmp eq i32 %7, 0
  br i1 %cmp86.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rx_ps_hdr_size = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 39
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %rx_buffer_len = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %buffer_info3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer_info3, align 4
  %arrayidx = getelementptr %struct.igbvf_buffer, ptr %9, i32 %i.087
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %for.body.if.end15_crit_edge, label %if.then6

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then6:                                         ; preds = %for.body
  %12 = ptrtoint ptr %rx_ps_hdr_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ps_hdr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.else, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_buffer_len, align 64
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6.if.end13_crit_edge
  %.sink = phi i32 [ %15, %if.else ], [ %13, %if.then6.if.end13_crit_edge ]
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef %.sink, i32 noundef 2, i32 noundef 0) #16
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %for.body.if.end15_crit_edge
  %skb = getelementptr %struct.igbvf_buffer, ptr %9, i32 %i.087, i32 1
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef nonnull %18) #16
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %skb, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %20 = getelementptr %struct.igbvf_buffer, ptr %9, i32 %i.087, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %if.end20.for.inc_crit_edge, label %if.then22

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then22:                                        ; preds = %if.end20
  %page_dma = getelementptr inbounds %struct.anon.164, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %page_dma to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %page_dma, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool23.not = icmp eq i64 %24, 0
  br i1 %tobool23.not, label %if.then22.if.end27_crit_edge, label %if.then24

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  %conv = trunc i64 %24 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then22.if.end27_crit_edge
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %20, align 8
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !220

if.then.i.i:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %26 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %30, %if.end.i.i ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %32 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !221

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.7) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !222
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !223
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !224
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@igbvf_clean_rx_ring, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !226

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %31, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %31) #16
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %20, align 8
  %37 = ptrtoint ptr %page_dma to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %page_dma, align 8
  %page_offset = getelementptr inbounds %struct.anon.164, ptr %20, i32 0, i32 2
  %38 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %page_offset, align 8
  br label %for.inc

for.inc:                                          ; preds = %put_page.exit, %if.end20.for.inc_crit_edge
  %inc = add nuw i32 %i.087, 1
  %39 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count, align 8
  %cmp = icmp ult i32 %inc, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo = shl i32 %40, 5
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %41 = ptrtoint ptr %buffer_info3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer_info3, align 4
  %43 = call ptr @memset(ptr %42, i32 0, i32 %.lcssa)
  %desc = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 1
  %44 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc, align 4
  %size34 = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 3
  %46 = ptrtoint ptr %size34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size34, align 4
  %48 = call ptr @memset(ptr %45, i32 0, i32 %47)
  %next_to_clean = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 6
  %49 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 5
  %50 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %next_to_use, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !227
  tail call void @arm_heavy_mb() #16
  %hw_addr = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 45, i32 1
  %51 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_addr, align 4
  %head = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 7
  %53 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %head, align 8
  %conv35 = zext i16 %54 to i32
  %add.ptr = getelementptr i8, ptr %52, i32 %conv35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !228
  tail call void @arm_heavy_mb() #16
  %55 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_addr, align 4
  %tail = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 8
  %57 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %tail, align 2
  %conv41 = zext i16 %58 to i32
  %add.ptr42 = getelementptr i8, ptr %56, i32 %conv41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 0) #16, !srcloc !218
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igbvf_up(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @igbvf_configure(ptr noundef %adapter)
  %state = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #16
  %rx_ring = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 31
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 8
  %napi = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 10
  tail call void @napi_enable(ptr noundef %napi) #16
  %msix_entries = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 52
  %2 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msix_entries, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @igbvf_configure_msix(ptr noundef %adapter)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw_addr = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 1
  %4 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 5504
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !231
  tail call void @arm_heavy_mb() #16
  %eims_enable_mask.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 54
  %7 = ptrtoint ptr %eims_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eims_enable_mask.i, align 32
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #16
  %10 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 5420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !232
  tail call void @arm_heavy_mb() #16
  %12 = ptrtoint ptr %eims_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eims_enable_mask.i, align 32
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #16
  %15 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr, align 4
  %add.ptr7.i = getelementptr i8, ptr %16, i32 5424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %14) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !233
  tail call void @arm_heavy_mb() #16
  %17 = ptrtoint ptr %eims_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eims_enable_mask.i, align 32
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #16
  %20 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr, align 4
  %add.ptr13.i = getelementptr i8, ptr %21, i32 5412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %19) #16, !srcloc !218
  %get_link_status = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 4, i32 6
  %22 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %get_link_status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %23, 1
  %call3 = tail call i32 @mod_timer(ptr noundef %adapter, i32 noundef %add) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igbvf_configure(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 42
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void @igbvf_set_rx_mode(ptr noundef %1)
  %active_vlans.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 5
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef 0) #16
  %conv113.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv113.i)
  %cmp14.i = icmp ult i32 %conv113.i, 4096
  br i1 %cmp14.i, label %entry.for.body.i_crit_edge, label %entry.igbvf_restore_vlan.exit_crit_edge

entry.igbvf_restore_vlan.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_restore_vlan.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %igbvf_vlan_rx_add_vid.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %conv116.i = phi i32 [ %conv1.i, %igbvf_vlan_rx_add_vid.exit.i.for.body.i_crit_edge ], [ %conv113.i, %entry.for.body.i_crit_edge ]
  %vid.0.in15.i = phi i32 [ %call7.i, %igbvf_vlan_rx_add_vid.exit.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %vid.0.i = trunc i32 %vid.0.in15.i to i16
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %hw1.i.i = getelementptr i8, ptr %3, i32 3368
  %mbx_lock.i.i = getelementptr i8, ptr %3, i32 3532
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock.i.i) #16
  %set_vfta.i.i = getelementptr i8, ptr %3, i32 3440
  %4 = ptrtoint ptr %set_vfta.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_vfta.i.i, align 4
  %call2.i.i = tail call i32 %5(ptr noundef %hw1.i.i, i16 noundef zeroext %vid.0.i, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %pdev.i.i = getelementptr i8, ptr %3, i32 3320
  %6 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %conv.i.i = and i32 %vid.0.in15.i, 65535
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.10, i32 noundef %conv.i.i) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i.i) #16
  br label %igbvf_vlan_rx_add_vid.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i.i) #16
  %conv5.i.i = and i32 %vid.0.in15.i, 65535
  %active_vlans.i.i = getelementptr i8, ptr %3, i32 2492
  tail call void @_set_bit(i32 noundef %conv5.i.i, ptr noundef %active_vlans.i.i) #16
  br label %igbvf_vlan_rx_add_vid.exit.i

igbvf_vlan_rx_add_vid.exit.i:                     ; preds = %if.end.i.i, %do.end.i.i
  %add.i = add nuw nsw i32 %conv116.i, 1
  %call7.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef %add.i) #16
  %conv1.i = and i32 %call7.i, 65535
  %cmp.i = icmp ult i32 %conv1.i, 4096
  br i1 %cmp.i, label %igbvf_vlan_rx_add_vid.exit.i.for.body.i_crit_edge, label %igbvf_vlan_rx_add_vid.exit.i.igbvf_restore_vlan.exit_crit_edge

igbvf_vlan_rx_add_vid.exit.i.igbvf_restore_vlan.exit_crit_edge: ; preds = %igbvf_vlan_rx_add_vid.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_restore_vlan.exit

igbvf_vlan_rx_add_vid.exit.i.for.body.i_crit_edge: ; preds = %igbvf_vlan_rx_add_vid.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

igbvf_restore_vlan.exit:                          ; preds = %igbvf_vlan_rx_add_vid.exit.i.igbvf_restore_vlan.exit_crit_edge, %entry.igbvf_restore_vlan.exit_crit_edge
  %tx_ring2.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 17
  %8 = ptrtoint ptr %tx_ring2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring2.i, align 128
  %hw_addr.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 1
  %10 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 14376
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !229
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !235
  tail call void @arm_heavy_mb() #16
  %and.i = and i32 %13, -33554433
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #16
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %16, i32 14376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %14) #16, !srcloc !218
  %17 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !236
  tail call void @msleep(i32 noundef 10) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !237
  tail call void @arm_heavy_mb() #16
  %count.i = getelementptr inbounds %struct.igbvf_ring, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count.i, align 8
  %mul.i = shl i32 %21, 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #16
  %23 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %24, i32 14344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %22) #16, !srcloc !218
  %dma.i = getelementptr inbounds %struct.igbvf_ring, ptr %9, i32 0, i32 2
  %25 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !238
  tail call void @arm_heavy_mb() #16
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #16
  %28 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %29, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %27) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !239
  tail call void @arm_heavy_mb() #16
  %30 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %31, i32 14340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 0) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %32 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %33, i32 14352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 0) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !241
  tail call void @arm_heavy_mb() #16
  %34 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %35, i32 14360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 0) #16, !srcloc !218
  %head.i = getelementptr inbounds %struct.igbvf_ring, ptr %9, i32 0, i32 7
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 14352, ptr %head.i, align 8
  %tail.i = getelementptr inbounds %struct.igbvf_ring, ptr %9, i32 0, i32 8
  %37 = ptrtoint ptr %tail.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 14360, ptr %tail.i, align 2
  %38 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %39, i32 14356
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !242
  %41 = and i32 %40, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !243
  tail call void @arm_heavy_mb() #16
  %42 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %43, i32 14356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %41) #16, !srcloc !218
  %or.i = or i32 %13, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void @arm_heavy_mb() #16
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i) #16
  %45 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %46, i32 14376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 %44) #16, !srcloc !218
  %txd_cmd.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 19
  %47 = ptrtoint ptr %txd_cmd.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 184549376, ptr %txd_cmd.i, align 8
  %rx_buffer_len.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 7
  %48 = ptrtoint ptr %rx_buffer_len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_buffer_len.i, align 64
  %add.i8 = add i32 %49, 1023
  %shr.i = lshr i32 %add.i8, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %49)
  %cmp.i9 = icmp ult i32 %49, 2048
  %..i = select i1 %cmp.i9, i32 -2113929216, i32 -1979710976
  %.22.i = select i1 %cmp.i9, i32 0, i32 128
  %or5.i = or i32 %shr.i, %..i
  %50 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 39
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.22.i, ptr %50, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %52 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #16
  %53 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %54, i32 10252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %52) #16, !srcloc !218
  %rx_ring2.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 31
  %55 = ptrtoint ptr %rx_ring2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_ring2.i, align 8
  %57 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %58, i32 10280
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #16, !srcloc !229
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !247
  tail call void @arm_heavy_mb() #16
  %and.i14 = and i32 %60, -33554433
  %61 = tail call i32 @llvm.bswap.i32(i32 %and.i14) #16
  %62 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr5.i15 = getelementptr i8, ptr %63, i32 10280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i15, i32 %61) #16, !srcloc !218
  %64 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr9.i16 = getelementptr i8, ptr %65, i32 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i16) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !248
  tail call void @msleep(i32 noundef 10) #16
  %dma.i17 = getelementptr inbounds %struct.igbvf_ring, ptr %56, i32 0, i32 2
  %67 = ptrtoint ptr %dma.i17 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma.i17, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !249
  tail call void @arm_heavy_mb() #16
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #16
  %70 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %71, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %69) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !250
  tail call void @arm_heavy_mb() #16
  %72 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %73, i32 10244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 0) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !251
  tail call void @arm_heavy_mb() #16
  %count.i18 = getelementptr inbounds %struct.igbvf_ring, ptr %56, i32 0, i32 4
  %74 = ptrtoint ptr %count.i18 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count.i18, align 8
  %mul.i19 = shl i32 %75, 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %mul.i19) #16
  %77 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr30.i20 = getelementptr i8, ptr %78, i32 10248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i20, i32 %76) #16, !srcloc !218
  %head.i21 = getelementptr inbounds %struct.igbvf_ring, ptr %56, i32 0, i32 7
  %79 = ptrtoint ptr %head.i21 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 10256, ptr %head.i21, align 8
  %tail.i22 = getelementptr inbounds %struct.igbvf_ring, ptr %56, i32 0, i32 8
  %80 = ptrtoint ptr %tail.i22 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 10264, ptr %tail.i22, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !252
  tail call void @arm_heavy_mb() #16
  %81 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr35.i23 = getelementptr i8, ptr %82, i32 10256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i23, i32 0) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !253
  tail call void @arm_heavy_mb() #16
  %83 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr40.i24 = getelementptr i8, ptr %84, i32 10264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i24, i32 0) #16, !srcloc !218
  %or.i25 = and i32 %60, -34603008
  %or44.i = or i32 %or.i25, 33622032
  %hw1.i.i26 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45
  %max_frame_size2.i.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 40
  %85 = ptrtoint ptr %max_frame_size2.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_frame_size2.i.i, align 4
  %mbx_lock.i.i27 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock.i.i27) #16
  %87 = trunc i32 %86 to i16
  %conv.i.i28 = add i16 %87, 4
  tail call void @e1000_rlpml_set_vf(ptr noundef %hw1.i.i26, i16 noundef zeroext %conv.i.i28) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i.i27) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !254
  tail call void @arm_heavy_mb() #16
  %88 = tail call i32 @llvm.bswap.i32(i32 %or44.i) #16
  %89 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %90, i32 10280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %88) #16, !srcloc !218
  %91 = ptrtoint ptr %rx_ring2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rx_ring2.i, align 8
  %next_to_clean.i = getelementptr inbounds %struct.igbvf_ring, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %next_to_clean.i, align 2
  %conv.i = zext i16 %94 to i32
  %next_to_use.i = getelementptr inbounds %struct.igbvf_ring, ptr %92, i32 0, i32 5
  %95 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %next_to_use.i, align 4
  %conv1.i29 = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %96)
  %cmp.i30 = icmp ugt i16 %94, %96
  br i1 %cmp.i30, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %igbvf_restore_vlan.exit
  call void @__sanitizer_cov_trace_pc() #18
  %97 = xor i32 %conv1.i29, -1
  %sub7.i = add nsw i32 %97, %conv.i
  br label %igbvf_desc_unused.exit

if.end.i:                                         ; preds = %igbvf_restore_vlan.exit
  call void @__sanitizer_cov_trace_pc() #18
  %count.i31 = getelementptr inbounds %struct.igbvf_ring, ptr %92, i32 0, i32 4
  %98 = ptrtoint ptr %count.i31 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count.i31, align 8
  %100 = xor i32 %conv1.i29, -1
  %add.i32 = add nsw i32 %100, %conv.i
  %sub13.i = add i32 %add.i32, %99
  br label %igbvf_desc_unused.exit

igbvf_desc_unused.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub7.i, %if.then.i ], [ %sub13.i, %if.end.i ]
  tail call fastcc void @igbvf_alloc_rx_buffers(ptr noundef %92, i32 noundef %retval.0.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igbvf_configure_msix(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring2 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring2, align 128
  %rx_ring3 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 31
  %2 = ptrtoint ptr %rx_ring3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring3, align 8
  %eims_enable_mask = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 54
  %4 = ptrtoint ptr %eims_enable_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %eims_enable_mask, align 32
  %hw_addr22.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 1
  %5 = ptrtoint ptr %hw_addr22.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %6, i32 5888
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !255
  %8 = and i32 %7, -16711681
  %9 = or i32 %8, 8388608
  %10 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_ring2, align 128
  %eims_value44.i = getelementptr inbounds %struct.igbvf_ring, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %eims_value44.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %eims_value44.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !256
  tail call void @arm_heavy_mb() #16
  %13 = ptrtoint ptr %hw_addr22.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr22.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %14, i32 5888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %9) #16, !srcloc !218
  %eims_value = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %eims_value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eims_value, align 8
  %17 = ptrtoint ptr %eims_enable_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eims_enable_mask, align 32
  %or = or i32 %18, %16
  store i32 %or, ptr %eims_enable_mask, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !257
  tail call void @arm_heavy_mb() #16
  %itr_val = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %itr_val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %itr_val, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %hw_addr22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr22.i, align 4
  %itr_register = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %itr_register to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %itr_register, align 4
  %conv = zext i16 %25 to i32
  %add.ptr = getelementptr i8, ptr %23, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #16, !srcloc !218
  %26 = ptrtoint ptr %hw_addr22.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_addr22.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 5888
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !258
  %29 = and i32 %28, 16777215
  %30 = or i32 %29, -2130706432
  %31 = ptrtoint ptr %rx_ring3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_ring3, align 8
  %eims_value.i = getelementptr inbounds %struct.igbvf_ring, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %eims_value.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %eims_value.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !259
  tail call void @arm_heavy_mb() #16
  %34 = ptrtoint ptr %hw_addr22.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_addr22.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %35, i32 5888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %30) #16, !srcloc !218
  %eims_value6 = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 12
  %36 = ptrtoint ptr %eims_value6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %eims_value6, align 8
  %38 = ptrtoint ptr %eims_enable_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eims_enable_mask, align 32
  %or8 = or i32 %39, %37
  store i32 %or8, ptr %eims_enable_mask, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !260
  tail call void @arm_heavy_mb() #16
  %itr_val12 = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 13
  %40 = ptrtoint ptr %itr_val12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %itr_val12, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %hw_addr22.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr22.i, align 4
  %itr_register14 = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 15
  %45 = ptrtoint ptr %itr_register14 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %itr_register14, align 4
  %conv15 = zext i16 %46 to i32
  %add.ptr16 = getelementptr i8, ptr %44, i32 %conv15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %42) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !261
  tail call void @arm_heavy_mb() #16
  %47 = ptrtoint ptr %hw_addr22.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_addr22.i, align 4
  %add.ptr23 = getelementptr i8, ptr %48, i32 5952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 -2113929216) #16, !srcloc !218
  %49 = ptrtoint ptr %eims_enable_mask to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 7, ptr %eims_enable_mask, align 32
  %eims_other = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 55
  %50 = ptrtoint ptr %eims_other to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %eims_other, align 4
  %51 = ptrtoint ptr %hw_addr22.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_addr22.i, align 4
  %add.ptr28 = getelementptr i8, ptr %52, i32 8
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !262
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igbvf_down(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 42
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %state = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #16
  %hw_addr = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 1
  %2 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 10280
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !264
  tail call void @arm_heavy_mb() #16
  %5 = and i32 %4, -3
  %6 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 10280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #16, !srcloc !218
  tail call void @netif_carrier_off(ptr noundef %1) #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %10 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 14376
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !266
  tail call void @arm_heavy_mb() #16
  %13 = and i32 %12, -3
  %14 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 14376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %13) #16, !srcloc !218
  %16 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !267
  tail call void @msleep(i32 noundef 10) #16
  %rx_ring = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 31
  %19 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_ring, align 8
  %napi = getelementptr inbounds %struct.igbvf_ring, ptr %20, i32 0, i32 10
  tail call void @napi_disable(ptr noundef %napi) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !268
  tail call void @arm_heavy_mb() #16
  %21 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 5416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #16, !srcloc !218
  %msix_entries.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 52
  %23 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msix_entries.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %entry.igbvf_irq_disable.exit_crit_edge, label %do.body2.i

entry.igbvf_irq_disable.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_irq_disable.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !269
  tail call void @arm_heavy_mb() #16
  %25 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr, align 4
  %add.ptr6.i = getelementptr i8, ptr %26, i32 5420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #16, !srcloc !218
  br label %igbvf_irq_disable.exit

igbvf_irq_disable.exit:                           ; preds = %do.body2.i, %entry.igbvf_irq_disable.exit_crit_edge
  %call26 = tail call i32 @del_timer_sync(ptr noundef %adapter) #16
  tail call void @igbvf_update_stats(ptr noundef %adapter)
  %link_speed = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 10
  %27 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %link_speed, align 2
  %link_duplex = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 11
  %28 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %link_duplex, align 4
  tail call fastcc void @igbvf_reset(ptr noundef %adapter)
  %tx_ring = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 17
  %29 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_ring, align 128
  tail call fastcc void @igbvf_clean_tx_ring(ptr noundef %30)
  %31 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_ring, align 8
  tail call fastcc void @igbvf_clean_rx_ring(ptr noundef %32)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igbvf_update_stats(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev2 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 43
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev2, align 8
  %link_speed = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 10
  %2 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %link_speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 13
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %7 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 1
  br i1 %cmp.i.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %hw_addr = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 1
  %9 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 3856
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !229
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !270
  %last_gprc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 9
  %13 = ptrtoint ptr %last_gprc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_gprc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp12 = icmp ult i32 %12, %14
  br i1 %cmp12, label %if.then14, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %gprc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 18
  %15 = ptrtoint ptr %gprc to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %gprc, align 16
  %add = add i64 %16, 4294967296
  store i64 %add, ptr %gprc, align 16
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  %17 = ptrtoint ptr %last_gprc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %last_gprc, align 8
  %gprc20 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 18
  %18 = ptrtoint ptr %gprc20 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %gprc20, align 16
  %and = and i64 %19, -4294967296
  %conv21 = zext i32 %12 to i64
  %or = or i64 %and, %conv21
  store i64 %or, ptr %gprc20, align 16
  %20 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr, align 4
  %add.ptr28 = getelementptr i8, ptr %21, i32 3864
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #16, !srcloc !229
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !271
  %last_gorc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 11
  %24 = ptrtoint ptr %last_gorc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_gorc, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp33 = icmp ult i32 %23, %25
  br i1 %cmp33, label %if.then35, label %if.end16.if.end38_crit_edge

if.end16.if.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then35:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %gorc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 20
  %26 = ptrtoint ptr %gorc to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %gorc, align 16
  %add37 = add i64 %27, 4294967296
  store i64 %add37, ptr %gorc, align 16
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end16.if.end38_crit_edge
  %28 = ptrtoint ptr %last_gorc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %23, ptr %last_gorc, align 16
  %gorc42 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 20
  %29 = ptrtoint ptr %gorc42 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %gorc42, align 16
  %and43 = and i64 %30, -4294967296
  %conv44 = zext i32 %23 to i64
  %or47 = or i64 %and43, %conv44
  store i64 %or47, ptr %gorc42, align 16
  %31 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_addr, align 4
  %add.ptr52 = getelementptr i8, ptr %32, i32 3860
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #16, !srcloc !229
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !272
  %last_gptc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 10
  %35 = ptrtoint ptr %last_gptc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_gptc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp57 = icmp ult i32 %34, %36
  br i1 %cmp57, label %if.then59, label %if.end38.if.end62_crit_edge

if.end38.if.end62_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then59:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  %gptc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 19
  %37 = ptrtoint ptr %gptc to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %gptc, align 8
  %add61 = add i64 %38, 4294967296
  store i64 %add61, ptr %gptc, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end38.if.end62_crit_edge
  %39 = ptrtoint ptr %last_gptc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %34, ptr %last_gptc, align 4
  %gptc66 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 19
  %40 = ptrtoint ptr %gptc66 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %gptc66, align 8
  %and67 = and i64 %41, -4294967296
  %conv68 = zext i32 %34 to i64
  %or71 = or i64 %and67, %conv68
  store i64 %or71, ptr %gptc66, align 8
  %42 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_addr, align 4
  %add.ptr76 = getelementptr i8, ptr %43, i32 3892
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #16, !srcloc !229
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !273
  %last_gotc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 12
  %46 = ptrtoint ptr %last_gotc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %last_gotc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp81 = icmp ult i32 %45, %47
  br i1 %cmp81, label %if.then83, label %if.end62.if.end86_crit_edge

if.end62.if.end86_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then83:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %gotc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 21
  %48 = ptrtoint ptr %gotc to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %gotc, align 8
  %add85 = add i64 %49, 4294967296
  store i64 %add85, ptr %gotc, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end62.if.end86_crit_edge
  %50 = ptrtoint ptr %last_gotc to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %45, ptr %last_gotc, align 4
  %gotc90 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 21
  %51 = ptrtoint ptr %gotc90 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %gotc90, align 8
  %and91 = and i64 %52, -4294967296
  %conv92 = zext i32 %45 to i64
  %or95 = or i64 %and91, %conv92
  store i64 %or95, ptr %gotc90, align 8
  %53 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw_addr, align 4
  %add.ptr100 = getelementptr i8, ptr %54, i32 3900
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #16, !srcloc !229
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !274
  %last_mprc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 13
  %57 = ptrtoint ptr %last_mprc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %last_mprc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp105 = icmp ult i32 %56, %58
  br i1 %cmp105, label %if.then107, label %if.end86.if.end110_crit_edge

if.end86.if.end110_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

if.then107:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  %mprc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 22
  %59 = ptrtoint ptr %mprc to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %mprc, align 16
  %add109 = add i64 %60, 4294967296
  store i64 %add109, ptr %mprc, align 16
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.end86.if.end110_crit_edge
  %61 = ptrtoint ptr %last_mprc to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %56, ptr %last_mprc, align 8
  %mprc114 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 22
  %62 = ptrtoint ptr %mprc114 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %mprc114, align 16
  %and115 = and i64 %63, -4294967296
  %conv116 = zext i32 %56 to i64
  %or119 = or i64 %and115, %conv116
  store i64 %or119, ptr %mprc114, align 16
  %64 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_addr, align 4
  %add.ptr124 = getelementptr i8, ptr %65, i32 3920
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #16, !srcloc !229
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !275
  %last_gotlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 14
  %68 = ptrtoint ptr %last_gotlbc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last_gotlbc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp129 = icmp ult i32 %67, %69
  br i1 %cmp129, label %if.then131, label %if.end110.if.end134_crit_edge

if.end110.if.end134_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end134

if.then131:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  %gotlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 23
  %70 = ptrtoint ptr %gotlbc to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %gotlbc, align 8
  %add133 = add i64 %71, 4294967296
  store i64 %add133, ptr %gotlbc, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.end110.if.end134_crit_edge
  %72 = ptrtoint ptr %last_gotlbc to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %67, ptr %last_gotlbc, align 4
  %gotlbc138 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 23
  %73 = ptrtoint ptr %gotlbc138 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %gotlbc138, align 8
  %and139 = and i64 %74, -4294967296
  %conv140 = zext i32 %67 to i64
  %or143 = or i64 %and139, %conv140
  store i64 %or143, ptr %gotlbc138, align 8
  %75 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_addr, align 4
  %add.ptr148 = getelementptr i8, ptr %76, i32 3908
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #16, !srcloc !229
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !276
  %last_gptlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 15
  %79 = ptrtoint ptr %last_gptlbc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %last_gptlbc, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp153 = icmp ult i32 %78, %80
  br i1 %cmp153, label %if.then155, label %if.end134.if.end158_crit_edge

if.end134.if.end158_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end158

if.then155:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  %gptlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 24
  %81 = ptrtoint ptr %gptlbc to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %gptlbc, align 16
  %add157 = add i64 %82, 4294967296
  store i64 %add157, ptr %gptlbc, align 16
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end134.if.end158_crit_edge
  %83 = ptrtoint ptr %last_gptlbc to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %78, ptr %last_gptlbc, align 16
  %gptlbc162 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 24
  %84 = ptrtoint ptr %gptlbc162 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %gptlbc162, align 16
  %and163 = and i64 %85, -4294967296
  %conv164 = zext i32 %78 to i64
  %or167 = or i64 %and163, %conv164
  store i64 %or167, ptr %gptlbc162, align 16
  %86 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw_addr, align 4
  %add.ptr172 = getelementptr i8, ptr %87, i32 3912
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr172) #16, !srcloc !229
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !277
  %last_gorlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 16
  %90 = ptrtoint ptr %last_gorlbc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %last_gorlbc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp177 = icmp ult i32 %89, %91
  br i1 %cmp177, label %if.then179, label %if.end158.if.end182_crit_edge

if.end158.if.end182_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end182

if.then179:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #18
  %gorlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 25
  %92 = ptrtoint ptr %gorlbc to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %gorlbc, align 8
  %add181 = add i64 %93, 4294967296
  store i64 %add181, ptr %gorlbc, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then179, %if.end158.if.end182_crit_edge
  %94 = ptrtoint ptr %last_gorlbc to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %89, ptr %last_gorlbc, align 4
  %gorlbc186 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 25
  %95 = ptrtoint ptr %gorlbc186 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %gorlbc186, align 8
  %and187 = and i64 %96, -4294967296
  %conv188 = zext i32 %89 to i64
  %or191 = or i64 %and187, %conv188
  store i64 %or191, ptr %gorlbc186, align 8
  %97 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw_addr, align 4
  %add.ptr196 = getelementptr i8, ptr %98, i32 3904
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr196) #16, !srcloc !229
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !278
  %last_gprlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 17
  %101 = ptrtoint ptr %last_gprlbc to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %last_gprlbc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp201 = icmp ult i32 %100, %102
  br i1 %cmp201, label %if.then203, label %if.end182.if.end206_crit_edge

if.end182.if.end206_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end206

if.then203:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #18
  %gprlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 26
  %103 = ptrtoint ptr %gprlbc to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %gprlbc, align 16
  %add205 = add i64 %104, 4294967296
  store i64 %add205, ptr %gprlbc, align 16
  br label %if.end206

if.end206:                                        ; preds = %if.then203, %if.end182.if.end206_crit_edge
  %105 = ptrtoint ptr %last_gprlbc to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %100, ptr %last_gprlbc, align 8
  %gprlbc210 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 26
  %106 = ptrtoint ptr %gprlbc210 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %gprlbc210, align 16
  %and211 = and i64 %107, -4294967296
  %conv212 = zext i32 %100 to i64
  %or215 = or i64 %and211, %conv212
  store i64 %or215, ptr %gprlbc210, align 16
  %108 = ptrtoint ptr %mprc114 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %mprc114, align 16
  %conv218 = trunc i64 %109 to i32
  %netdev = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 42
  %110 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %netdev, align 4
  %multicast = getelementptr inbounds %struct.net_device, ptr %111, i32 0, i32 36, i32 8
  %112 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv218, ptr %multicast, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end206, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igbvf_reset(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45
  %netdev2 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 42
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev2, align 4
  %mbx_lock = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock) #16
  %reset_hw = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 4, i32 0, i32 7
  %2 = ptrtoint ptr %reset_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_hw, align 4
  %call = tail call i32 %3(ptr noundef %hw) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pdev = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 43
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %init_hw = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 4, i32 0, i32 8
  %6 = ptrtoint ptr %init_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_hw, align 4
  %call6 = tail call i32 %7(ptr noundef %hw) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock) #16
  %addr = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 4, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 4, i32 1, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %or.i.i = or i32 %9, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end21_crit_edge, label %if.then11

is_valid_ether_addr.exit.if.end21_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then11:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %addr, i32 noundef 6) #16
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  %addr_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %13 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %14 to i32
  %15 = call ptr @memcpy(ptr %perm_addr, ptr %addr, i32 %conv)
  br label %if.end21

if.end21:                                         ; preds = %if.then11, %is_valid_ether_addr.exit.if.end21_crit_edge, %if.end.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %last_reset = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 64
  %17 = ptrtoint ptr %last_reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last_reset, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igbvf_reinit_locked(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1607) #16
  %state = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 13
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not9 = icmp eq i32 %call8, 0
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #16
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @igbvf_down(ptr noundef %adapter)
  %call3 = tail call i32 @igbvf_up(ptr noundef %adapter)
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_init_module() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @igbvf_driver_string) #20
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @igbvf_copyright) #20
  %call6 = tail call i32 @__pci_register_driver(ptr noundef nonnull @igbvf_driver, ptr noundef null, ptr noundef nonnull @.str.27) #16
  ret i32 %call6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_exit_module() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @pci_unregister_driver(ptr noundef nonnull @igbvf_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_set_rx_mode(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1.i = getelementptr i8, ptr %netdev, i32 3368
  %mc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.if.end6.i_crit_edge, label %if.then.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 6) #16
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.then.i.igbvf_set_multi.exit_crit_edge, label %if.end7.i.i, !prof !221

if.then.i.igbvf_set_multi.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_set_multi.exit

if.end7.i.i:                                      ; preds = %if.then.i
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 2592) #19
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.igbvf_set_multi.exit_crit_edge, label %if.end7.i.i.if.end6.i_crit_edge

if.end7.i.i.if.end6.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

if.end7.i.i.igbvf_set_multi.exit_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_set_multi.exit

if.end6.i:                                        ; preds = %if.end7.i.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %mta_list.0.i = phi ptr [ null, %entry.if.end6.i_crit_edge ], [ %call8.i.i, %if.end7.i.i.if.end6.i_crit_edge ]
  %5 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.041.i = load ptr, ptr %mc.i, align 4
  %cmp11.not42.i = icmp eq ptr %ha.041.i, %mc.i
  br i1 %cmp11.not42.i, label %if.end6.i.for.end.i_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %ha.044.i = phi ptr [ %ha.0.i, %for.body.i.for.body.i_crit_edge ], [ %ha.041.i, %if.end6.i.for.body.i_crit_edge ]
  %i.043.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %inc.i = add i32 %i.043.i, 1
  %mul.i = mul i32 %i.043.i, 6
  %add.ptr12.i = getelementptr i8, ptr %mta_list.0.i, i32 %mul.i
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.044.i, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %add.ptr12.i, ptr %addr.i, i32 6)
  %7 = ptrtoint ptr %ha.044.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0.i = load ptr, ptr %ha.044.i, align 4
  %cmp11.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp11.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end6.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end6.i.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %mbx_lock.i = getelementptr i8, ptr %netdev, i32 3532
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock.i) #16
  %update_mc_addr_list.i = getelementptr i8, ptr %netdev, i32 3404
  %8 = ptrtoint ptr %update_mc_addr_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_mc_addr_list.i, align 4
  tail call void %9(ptr noundef %hw1.i, ptr noundef %mta_list.0.i, i32 noundef %i.0.lcssa.i, i32 noundef 0, i32 noundef 0) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i) #16
  tail call void @kfree(ptr noundef %mta_list.0.i) #16
  br label %igbvf_set_multi.exit

igbvf_set_multi.exit:                             ; preds = %for.end.i, %if.end7.i.i.igbvf_set_multi.exit_crit_edge, %if.then.i.igbvf_set_multi.exit_crit_edge
  %uc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 65
  %count.i3 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 65, i32 1
  %10 = ptrtoint ptr %count.i3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i4 = icmp sgt i32 %11, 3
  br i1 %cmp.i4, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %igbvf_set_multi.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #20
  br label %igbvf_set_uni.exit

if.end.i:                                         ; preds = %igbvf_set_multi.exit
  %mbx_lock.i5 = getelementptr i8, ptr %netdev, i32 3532
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock.i5) #16
  %set_uc_addr.i = getelementptr i8, ptr %netdev, i32 3408
  %12 = ptrtoint ptr %set_uc_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_uc_addr.i, align 4
  %call3.i = tail call i32 %13(ptr noundef %hw1.i, i32 noundef 65536, ptr noundef null) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i5) #16
  %14 = ptrtoint ptr %count.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7.i = icmp eq i32 %15, 0
  br i1 %cmp7.i, label %if.end.i.igbvf_set_uni.exit_crit_edge, label %for.cond.preheader.i

if.end.i.igbvf_set_uni.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_set_uni.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %16 = ptrtoint ptr %uc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.01.i = load ptr, ptr %uc.i, align 4
  %cmp14.not2.i = icmp eq ptr %ha.01.i, %uc.i
  br i1 %cmp14.not2.i, label %for.cond.preheader.i.igbvf_set_uni.exit_crit_edge, label %for.cond.preheader.i.for.body.i8_crit_edge

for.cond.preheader.i.for.body.i8_crit_edge:       ; preds = %for.cond.preheader.i
  br label %for.body.i8

for.cond.preheader.i.igbvf_set_uni.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_set_uni.exit

for.body.i8:                                      ; preds = %for.body.i8.for.body.i8_crit_edge, %for.cond.preheader.i.for.body.i8_crit_edge
  %ha.03.i = phi ptr [ %ha.0.i7, %for.body.i8.for.body.i8_crit_edge ], [ %ha.01.i, %for.cond.preheader.i.for.body.i8_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock.i5) #16
  %17 = ptrtoint ptr %set_uc_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_uc_addr.i, align 4
  %addr.i6 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.03.i, i32 0, i32 2
  %call19.i = tail call i32 %18(ptr noundef %hw1.i, i32 noundef 131072, ptr noundef %addr.i6) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i5) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 42949600) #16
  %20 = ptrtoint ptr %ha.03.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %ha.0.i7 = load ptr, ptr %ha.03.i, align 4
  %cmp14.not.i = icmp eq ptr %ha.0.i7, %uc.i
  br i1 %cmp14.not.i, label %for.body.i8.igbvf_set_uni.exit_crit_edge, label %for.body.i8.for.body.i8_crit_edge

for.body.i8.for.body.i8_crit_edge:                ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i8

for.body.i8.igbvf_set_uni.exit_crit_edge:         ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_set_uni.exit

igbvf_set_uni.exit:                               ; preds = %for.body.i8.igbvf_set_uni.exit_crit_edge, %for.cond.preheader.i.igbvf_set_uni.exit_crit_edge, %if.end.i.igbvf_set_uni.exit_crit_edge, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igbvf_alloc_rx_buffers(ptr nocapture noundef %rx_ring, i32 noundef %cleaned_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 8
  %netdev2 = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  %pdev3 = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 43
  %4 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev3, align 8
  %next_to_use = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 5
  %6 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_to_use, align 4
  %conv = zext i16 %7 to i32
  %buffer_info4 = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 9
  %8 = ptrtoint ptr %buffer_info4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer_info4, align 4
  %arrayidx = getelementptr %struct.igbvf_buffer, ptr %9, i32 %conv
  %rx_ps_hdr_size = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 39
  %10 = ptrtoint ptr %rx_ps_hdr_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_ps_hdr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_buffer_len = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_buffer_len, align 64
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %bufsz.0 = phi i32 [ %13, %if.else ], [ %11, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleaned_count)
  %tobool6.not186 = icmp eq i32 %cleaned_count, 0
  br i1 %tobool6.not186, label %if.end.no_buffers_crit_edge, label %while.body.lr.ph

if.end.no_buffers_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %no_buffers

while.body.lr.ph:                                 ; preds = %if.end
  %desc = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %add.i.i = add i32 %bufsz.0, 2
  %count = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end74.while.body_crit_edge, %while.body.lr.ph
  %dec191.in = phi i32 [ %cleaned_count, %while.body.lr.ph ], [ %dec191, %if.end74.while.body_crit_edge ]
  %i.0189 = phi i32 [ %conv, %while.body.lr.ph ], [ %spec.store.select, %if.end74.while.body_crit_edge ]
  %buffer_info.0187 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %arrayidx80, %if.end74.while.body_crit_edge ]
  %dec191 = add i32 %dec191.in, -1
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %arrayidx7 = getelementptr %union.igbvf_desc, ptr %15, i32 %i.0189
  %16 = ptrtoint ptr %rx_ps_hdr_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_ps_hdr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %while.body.if.end37_crit_edge, label %land.lhs.true

while.body.if.end37_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

land.lhs.true:                                    ; preds = %while.body
  %18 = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.0187, i32 0, i32 2
  %page_dma = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.0187, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %page_dma to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %page_dma, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool10.not = icmp eq i64 %20, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then11:                                        ; preds = %land.lhs.true
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 8
  %tobool12.not = icmp eq ptr %22, null
  br i1 %tobool12.not, label %if.then13, label %if.else19

if.then13:                                        ; preds = %if.then11
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call38.i.i.i, ptr %18, align 8
  %tobool16.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %alloc_rx_buff_failed = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 37
  %24 = ptrtoint ptr %alloc_rx_buff_failed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %alloc_rx_buff_failed, align 32
  %inc = add i32 %25, 1
  store i32 %inc, ptr %alloc_rx_buff_failed, align 32
  br label %no_buffers

if.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %page_offset = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.0187, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %page_offset, align 8
  br label %if.end21

if.else19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  %page_offset20 = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.0187, i32 0, i32 2, i32 0, i32 2
  %27 = ptrtoint ptr %page_offset20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %page_offset20, align 8
  %xor = xor i32 %28, 2048
  store i32 %xor, ptr %page_offset20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.end18
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %18, align 8
  %page_offset23 = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.0187, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %page_offset23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_offset23, align 8
  %call24 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %30, i32 noundef %32, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #16
  %conv25 = zext i32 %call24 to i64
  %33 = ptrtoint ptr %page_dma to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv25, ptr %page_dma, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp.i.not = icmp eq i32 %call24, -1
  br i1 %cmp.i.not, label %if.then32, label %if.end21.if.end37_crit_edge

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then32:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %18, align 8
  tail call void @__free_pages(ptr noundef %35, i32 noundef 0) #16
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #20
  br label %no_buffers

if.end37:                                         ; preds = %if.end21.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %while.body.if.end37_crit_edge
  %skb38 = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.0187, i32 0, i32 1
  %37 = ptrtoint ptr %skb38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb38, align 4
  %tobool39.not = icmp eq ptr %38, null
  br i1 %tobool39.not, label %if.then40, label %if.end37.if.end62_crit_edge

if.end37.if.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then40:                                        ; preds = %if.end37
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef %add.i.i, i32 noundef 2592) #16
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  %alloc_rx_buff_failed44 = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 37
  %39 = ptrtoint ptr %alloc_rx_buff_failed44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %alloc_rx_buff_failed44, align 32
  %inc45 = add i32 %40, 1
  store i32 %inc45, ptr %alloc_rx_buff_failed44, align 32
  br label %no_buffers

if.end46:                                         ; preds = %if.then40
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %44, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %45 = ptrtoint ptr %skb38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i, ptr %skb38, align 4
  %46 = load ptr, ptr %data.i.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %46) #16
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end46
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !220

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #16
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %47 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i161 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i161, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %50, %if.end.i.i ], [ %48, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #16
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %51 = ptrtoint ptr %buffer_info.0187 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %buffer_info.0187, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #16
  br label %if.then54

dma_map_single_attrs.exit:                        ; preds = %if.end46
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %46, i32 noundef %bufsz.0) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  %53 = ptrtoint ptr %46 to i32
  %sub.i = add i32 %53, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %52, i32 %shr.i
  %and.i = and i32 %53, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %bufsz.0, i32 noundef 2, i32 noundef 0) #16
  %54 = ptrtoint ptr %buffer_info.0187 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call41.i, ptr %buffer_info.0187, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i162 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i162, label %dma_map_single_attrs.exit.if.then54_crit_edge, label %dma_map_single_attrs.exit.if.end62_crit_edge

dma_map_single_attrs.exit.if.end62_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

dma_map_single_attrs.exit.if.then54_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

if.then54:                                        ; preds = %dma_map_single_attrs.exit.if.then54_crit_edge, %dma_map_single_attrs.exit.thread
  %55 = ptrtoint ptr %skb38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb38, align 4
  tail call void @consume_skb(ptr noundef %56) #16
  %57 = ptrtoint ptr %skb38 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %skb38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #20
  br label %no_buffers

if.end62:                                         ; preds = %dma_map_single_attrs.exit.if.end62_crit_edge, %if.end37.if.end62_crit_edge
  %58 = ptrtoint ptr %rx_ps_hdr_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_ps_hdr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool64.not = icmp eq i32 %59, 0
  br i1 %tobool64.not, label %if.else69, label %if.then65

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %page_dma66 = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.0187, i32 0, i32 2, i32 0, i32 1
  %60 = ptrtoint ptr %page_dma66 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %page_dma66, align 8
  %62 = tail call i64 @llvm.bswap.i64(i64 %61)
  %63 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %arrayidx7, align 8
  %64 = ptrtoint ptr %buffer_info.0187 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buffer_info.0187, align 8
  %conv68 = zext i32 %65 to i64
  %66 = tail call i64 @llvm.bswap.i64(i64 %conv68)
  br label %if.end74

if.else69:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %buffer_info.0187 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buffer_info.0187, align 8
  %conv71 = zext i32 %68 to i64
  %69 = tail call i64 @llvm.bswap.i64(i64 %conv71)
  %70 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx7, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.else69, %if.then65
  %.sink = phi i64 [ 0, %if.else69 ], [ %66, %if.then65 ]
  %71 = getelementptr inbounds %struct.anon.152, ptr %arrayidx7, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %.sink, ptr %71, align 8
  %inc75 = add i32 %i.0189, 1
  %73 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc75, i32 %74)
  %cmp = icmp eq i32 %inc75, %74
  %spec.store.select = select i1 %cmp, i32 0, i32 %inc75
  %75 = ptrtoint ptr %buffer_info4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buffer_info4, align 4
  %arrayidx80 = getelementptr %struct.igbvf_buffer, ptr %76, i32 %spec.store.select
  %tobool6.not = icmp eq i32 %dec191, 0
  br i1 %tobool6.not, label %if.end74.no_buffers_crit_edge, label %if.end74.while.body_crit_edge

if.end74.while.body_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end74.no_buffers_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %no_buffers

no_buffers:                                       ; preds = %if.end74.no_buffers_crit_edge, %if.then54, %if.then43, %if.then32, %if.then17, %if.end.no_buffers_crit_edge
  %i.0173 = phi i32 [ %i.0189, %if.then32 ], [ %i.0189, %if.then54 ], [ %i.0189, %if.then43 ], [ %i.0189, %if.then17 ], [ %conv, %if.end.no_buffers_crit_edge ], [ %spec.store.select, %if.end74.no_buffers_crit_edge ]
  %77 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %next_to_use, align 4
  %conv82 = zext i16 %78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0173, i32 %conv82)
  %cmp83.not = icmp eq i32 %i.0173, %conv82
  br i1 %cmp83.not, label %no_buffers.if.end102_crit_edge, label %if.then85

no_buffers.if.end102_crit_edge:                   ; preds = %no_buffers
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

if.then85:                                        ; preds = %no_buffers
  %conv86 = trunc i32 %i.0173 to i16
  %79 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv86, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0173)
  %cmp88 = icmp eq i32 %i.0173, 0
  br i1 %cmp88, label %if.then90, label %if.then85.do.body95_crit_edge

if.then85.do.body95_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body95

if.then90:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  %count91 = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 4
  %80 = ptrtoint ptr %count91 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count91, align 8
  br label %do.body95

do.body95:                                        ; preds = %if.then90, %if.then85.do.body95_crit_edge
  %i.1.in = phi i32 [ %81, %if.then90 ], [ %i.0173, %if.then85.do.body95_crit_edge ]
  %i.1 = add i32 %i.1.in, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !279
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !280
  tail call void @arm_heavy_mb() #16
  %82 = tail call i32 @llvm.bswap.i32(i32 %i.1)
  %hw_addr = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 45, i32 1
  %83 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw_addr, align 4
  %tail = getelementptr inbounds %struct.igbvf_ring, ptr %rx_ring, i32 0, i32 8
  %85 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %tail, align 2
  %conv101 = zext i16 %86 to i32
  %add.ptr = getelementptr i8, ptr %84, i32 %conv101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %82) #16, !srcloc !218
  br label %if.end102

if.end102:                                        ; preds = %do.body95, %no_buffers.if.end102_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_vlan_rx_add_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3368
  %mbx_lock = getelementptr i8, ptr %netdev, i32 3532
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock) #16
  %set_vfta = getelementptr i8, ptr %netdev, i32 3440
  %0 = ptrtoint ptr %set_vfta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_vfta, align 4
  %call2 = tail call i32 %1(ptr noundef %hw1, i16 noundef zeroext %vid, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pdev = getelementptr i8, ptr %netdev, i32 3320
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %conv = zext i16 %vid to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock) #16
  %conv5 = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %netdev, i32 2492
  tail call void @_set_bit(i32 noundef %conv5, ptr noundef %active_vlans) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_rlpml_set_vf(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @igbvf_info_tbl, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.end10_crit_edge, label %if.else

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call.i298 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298)
  %cmp.i299 = icmp eq i32 %call.i298, 0
  br i1 %cmp.i299, label %if.else.if.end10_crit_edge, label %do.end

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #20
  br label %err_dma

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %.sink = phi i64 [ -1, %if.end.if.end10_crit_edge ], [ 4294967295, %if.else.if.end10_crit_edge ]
  %call1.i300 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #16
  %call11 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @igbvf_driver_name) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_dma_crit_edge

if.end10.err_dma_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_dma

if.end14:                                         ; preds = %if.end10
  tail call void @pci_set_master(ptr noundef %pdev) #16
  %call15 = tail call ptr @alloc_etherdev_mqs(i32 noundef 2304, i32 noundef 1, i32 noundef 1) #16
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.err_alloc_etherdev_crit_edge, label %if.end18

if.end14.err_alloc_etherdev_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_alloc_etherdev

if.end18:                                         ; preds = %if.end14
  %parent = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call15, i32 2304
  %hw22 = getelementptr i8, ptr %call15, i32 3368
  %netdev23 = getelementptr i8, ptr %call15, i32 3316
  %6 = ptrtoint ptr %netdev23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %netdev23, align 4
  %pdev24 = getelementptr i8, ptr %call15, i32 3320
  %7 = ptrtoint ptr %pdev24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev24, align 8
  %ei25 = getelementptr i8, ptr %call15, i32 2488
  %8 = ptrtoint ptr %ei25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %ei25, align 8
  %pba = getelementptr inbounds %struct.igbvf_info, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %pba to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pba, align 4
  %pba26 = getelementptr i8, ptr %call15, i32 4472
  %11 = ptrtoint ptr %pba26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pba26, align 8
  %flags = getelementptr inbounds %struct.igbvf_info, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %flags27 = getelementptr i8, ptr %call15, i32 4484
  %14 = ptrtoint ptr %flags27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %flags27, align 4
  %15 = ptrtoint ptr %hw22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %hw22, align 8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %type = getelementptr i8, ptr %call15, i32 3456
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %type, align 8
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %19)
  %cmp1.i = icmp ugt i32 %19, 31
  br i1 %cmp1.i, label %if.end18.netif_msg_init.exit_crit_edge, label %if.end.i

if.end18.netif_msg_init.exit_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.i = icmp eq i32 %19, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %notmask.i = shl nsw i32 -1, %19
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end18.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 7, %if.end18.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call15, i32 4436
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %21 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vendor, align 8
  %vendor_id = getelementptr i8, ptr %call15, i32 3590
  %23 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %vendor_id, align 2
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  %device_id = getelementptr i8, ptr %call15, i32 3584
  %26 = ptrtoint ptr %device_id to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %device_id, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %27 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %subsystem_vendor, align 4
  %subsystem_vendor_id = getelementptr i8, ptr %call15, i32 3586
  %29 = ptrtoint ptr %subsystem_vendor_id to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %subsystem_vendor_id, align 2
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %30 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %subsystem_device, align 2
  %subsystem_device_id = getelementptr i8, ptr %call15, i32 3588
  %32 = ptrtoint ptr %subsystem_device_id to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %subsystem_device_id, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %33 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %revision, align 4
  %revision_id = getelementptr i8, ptr %call15, i32 3592
  %35 = ptrtoint ptr %revision_id to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %revision_id, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %36 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %38 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp eq i32 %39, 0
  %sub = sub i32 1, %37
  %add = add i32 %sub, %39
  %cond = select i1 %cmp, i32 0, i32 %add
  %call41 = tail call ptr @ioremap(i32 noundef %37, i32 noundef %cond) #16
  %hw_addr = getelementptr i8, ptr %call15, i32 3372
  %40 = ptrtoint ptr %hw_addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call41, ptr %hw_addr, align 4
  %tobool45.not = icmp eq ptr %call41, null
  br i1 %tobool45.not, label %netif_msg_init.exit.err_ioremap_crit_edge, label %if.end47

netif_msg_init.exit.err_ioremap_crit_edge:        ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ioremap

if.end47:                                         ; preds = %netif_msg_init.exit
  %get_variants = getelementptr inbounds %struct.igbvf_info, ptr %3, i32 0, i32 4
  %41 = ptrtoint ptr %get_variants to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_variants, align 4
  %tobool48.not = icmp eq ptr %42, null
  br i1 %tobool48.not, label %if.end47.if.end55_crit_edge, label %if.then49

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then49:                                        ; preds = %if.end47
  %call51 = tail call i32 %42(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then49.if.end55_crit_edge, label %if.then49.err_get_variants_crit_edge

if.then49.err_get_variants_crit_edge:             ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_get_variants

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.end55:                                         ; preds = %if.then49.if.end55_crit_edge, %if.end47.if.end55_crit_edge
  %43 = ptrtoint ptr %netdev23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev23, align 4
  %rx_buffer_len.i = getelementptr i8, ptr %call15, i32 3008
  %45 = ptrtoint ptr %rx_buffer_len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1522, ptr %rx_buffer_len.i, align 64
  %rx_ps_hdr_size.i = getelementptr i8, ptr %call15, i32 3304
  %46 = ptrtoint ptr %rx_ps_hdr_size.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rx_ps_hdr_size.i, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 20
  %47 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mtu.i, align 4
  %add2.i = add i32 %48, 18
  %max_frame_size.i = getelementptr i8, ptr %call15, i32 3308
  %49 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add2.i, ptr %max_frame_size.i, align 4
  %min_frame_size.i = getelementptr i8, ptr %call15, i32 3312
  %50 = ptrtoint ptr %min_frame_size.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 64, ptr %min_frame_size.i, align 16
  %tx_int_delay.i = getelementptr i8, ptr %call15, i32 3212
  %51 = ptrtoint ptr %tx_int_delay.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %tx_int_delay.i, align 4
  %tx_abs_int_delay.i = getelementptr i8, ptr %call15, i32 3216
  %52 = ptrtoint ptr %tx_abs_int_delay.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 32, ptr %tx_abs_int_delay.i, align 16
  %rx_int_delay.i = getelementptr i8, ptr %call15, i32 3260
  %53 = ptrtoint ptr %rx_int_delay.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %rx_int_delay.i, align 4
  %rx_abs_int_delay.i = getelementptr i8, ptr %call15, i32 3264
  %54 = ptrtoint ptr %rx_abs_int_delay.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %rx_abs_int_delay.i, align 64
  %requested_itr.i = getelementptr i8, ptr %call15, i32 3072
  %55 = ptrtoint ptr %requested_itr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %requested_itr.i, align 128
  %current_itr.i = getelementptr i8, ptr %call15, i32 3076
  %56 = ptrtoint ptr %current_itr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 488, ptr %current_itr.i, align 4
  %57 = ptrtoint ptr %ei25 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ei25, align 8
  %init_ops.i = getelementptr inbounds %struct.igbvf_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %init_ops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_ops.i, align 4
  tail call void %60(ptr noundef %hw22) #16
  %mac.i = getelementptr i8, ptr %call15, i32 3384
  %61 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mac.i, align 8
  %call.i303 = tail call i32 %62(ptr noundef %hw22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i303)
  %tobool.not.i = icmp eq i32 %call.i303, 0
  br i1 %tobool.not.i, label %if.end.i304, label %if.end55.err_sw_init_crit_edge

if.end55.err_sw_init_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_sw_init

if.end.i304:                                      ; preds = %if.end55
  %mbx.i = getelementptr i8, ptr %call15, i32 3468
  %63 = ptrtoint ptr %mbx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mbx.i, align 4
  %call9.i = tail call i32 %64(ptr noundef %hw22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.i304.err_sw_init_crit_edge

if.end.i304.err_sw_init_crit_edge:                ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_sw_init

if.end12.i:                                       ; preds = %if.end.i304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 24) #21
  %msix_entries.i.i = getelementptr i8, ptr %call15, i32 4440
  %66 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i.i.i.i, ptr %msix_entries.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end12.i.do.end.i.i_crit_edge, label %for.body.preheader.i.i

if.end12.i.do.end.i.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

for.body.preheader.i.i:                           ; preds = %if.end12.i
  %entry3.i.i = getelementptr %struct.msix_entry, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %entry3.i.i, align 4
  %entry3.1.i.i = getelementptr %struct.msix_entry, ptr %call7.i.i.i.i.i, i32 1, i32 1
  %68 = ptrtoint ptr %entry3.1.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %entry3.1.i.i, align 4
  %entry3.2.i.i = getelementptr %struct.msix_entry, ptr %call7.i.i.i.i.i, i32 2, i32 1
  %69 = ptrtoint ptr %entry3.2.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 2, ptr %entry3.2.i.i, align 4
  %70 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev24, align 8
  %call5.i.i = tail call i32 @pci_enable_msix_range(ptr noundef %71, ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 3, i32 noundef 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %phi.cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %phi.cmp.i.i, label %for.body.preheader.i.i.do.end.i.i_crit_edge, label %for.body.preheader.i.i.igbvf_set_interrupt_capability.exit.i_crit_edge

for.body.preheader.i.i.igbvf_set_interrupt_capability.exit.i_crit_edge: ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_set_interrupt_capability.exit.i

for.body.preheader.i.i.do.end.i.i_crit_edge:      ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.preheader.i.i.do.end.i.i_crit_edge, %if.end12.i.do.end.i.i_crit_edge
  %72 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev24, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.53) #20
  %74 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %msix_entries.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.igbvf_set_interrupt_capability.exit.i_crit_edge, label %if.then.i.i.i

do.end.i.i.igbvf_set_interrupt_capability.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_set_interrupt_capability.exit.i

if.then.i.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %76 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev24, align 8
  tail call void @pci_disable_msix(ptr noundef %77) #16
  %78 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %msix_entries.i.i, align 8
  tail call void @kfree(ptr noundef %79) #16
  %80 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %msix_entries.i.i, align 8
  br label %igbvf_set_interrupt_capability.exit.i

igbvf_set_interrupt_capability.exit.i:            ; preds = %if.then.i.i.i, %do.end.i.i.igbvf_set_interrupt_capability.exit.i_crit_edge, %for.body.preheader.i.i.igbvf_set_interrupt_capability.exit.i_crit_edge
  %81 = ptrtoint ptr %netdev23 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %netdev23, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 320) #21
  %tx_ring.i.i = getelementptr i8, ptr %call15, i32 3200
  %84 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i.i.i, ptr %tx_ring.i.i, align 128
  %tobool.not.i54.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i54.i, label %igbvf_set_interrupt_capability.exit.i.err_sw_init_crit_edge, label %if.end.i.i

igbvf_set_interrupt_capability.exit.i.err_sw_init_crit_edge: ; preds = %igbvf_set_interrupt_capability.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_sw_init

if.end.i.i:                                       ; preds = %igbvf_set_interrupt_capability.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i16.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3520, i32 noundef 320) #21
  %rx_ring.i.i = getelementptr i8, ptr %call15, i32 3256
  %86 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i16.i.i, ptr %rx_ring.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %call7.i.i16.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.err_sw_init.sink.split_crit_edge, label %do.body.i

if.end.i.i.err_sw_init.sink.split_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_sw_init.sink.split

do.body.i:                                        ; preds = %if.end.i.i
  %napi.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %call7.i.i16.i.i, i32 0, i32 10
  tail call void @netif_napi_add(ptr noundef %82, ptr noundef %napi.i.i, ptr noundef nonnull @igbvf_poll, i32 noundef 64) #16
  %tx_queue_lock.i = getelementptr i8, ptr %call15, i32 3024
  tail call void @__raw_spin_lock_init(ptr noundef %tx_queue_lock.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @igbvf_sw_init.__key, i16 noundef signext 3) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !268
  tail call void @arm_heavy_mb() #16
  %87 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 5416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #16, !srcloc !218
  %89 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %msix_entries.i.i, align 8
  %tobool.not.i56.i = icmp eq ptr %90, null
  br i1 %tobool.not.i56.i, label %do.body.i.if.end59_crit_edge, label %do.body2.i.i

do.body.i.if.end59_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

do.body2.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !269
  tail call void @arm_heavy_mb() #16
  %91 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw_addr, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %92, i32 5420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 0) #16, !srcloc !218
  br label %if.end59

if.end59:                                         ; preds = %do.body2.i.i, %do.body.i.if.end59_crit_edge
  %stats_lock.i = getelementptr i8, ptr %call15, i32 3324
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @igbvf_sw_init.__key.49, i16 noundef signext 3) #16
  %mbx_lock.i = getelementptr i8, ptr %call15, i32 3532
  tail call void @__raw_spin_lock_init(ptr noundef %mbx_lock.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @igbvf_sw_init.__key.51, i16 noundef signext 3) #16
  %state.i = getelementptr i8, ptr %call15, i32 3068
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 16
  %93 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @igbvf_netdev_ops, ptr %netdev_ops, align 8
  tail call void @igbvf_set_ethtool_ops(ptr noundef nonnull %call15) #16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 115
  %94 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 500, ptr %watchdog_timeo, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %95 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i306 = icmp eq ptr %96, null
  br i1 %tobool.not.i.i306, label %if.end.i.i307, label %if.end59.pci_name.exit_crit_edge

if.end59.pci_name.exit_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %pci_name.exit

if.end.i.i307:                                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i307, %if.end59.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %98, %if.end.i.i307 ], [ %96, %if.end59.pci_name.exit_crit_edge ]
  %call61 = tail call ptr @strncpy(ptr noundef nonnull %call15, ptr noundef %retval.0.i.i, i32 noundef 15)
  %99 = load i32, ptr @igbvf_probe.cards_found, align 4
  %inc = add i32 %99, 1
  store i32 %inc, ptr @igbvf_probe.cards_found, align 4
  %bd_number = getelementptr i8, ptr %call15, i32 3004
  %100 = ptrtoint ptr %bd_number to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %bd_number, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 24
  %gso_partial_features = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 29
  %101 = ptrtoint ptr %gso_partial_features to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 264241152, ptr %gso_partial_features, align 64
  %102 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 1168764895241, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 23
  %spec.select = select i1 %cmp.i, i64 1168764895273, i64 1168764895241
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 26
  %103 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %vlan_features, align 8
  %or70 = or i64 %spec.select, %104
  %or71 = or i64 %or70, 524288
  store i64 %or71, ptr %vlan_features, align 8
  %mpls_features = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 28
  %105 = ptrtoint ptr %mpls_features to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %mpls_features, align 8
  %or72 = or i64 %106, 8
  store i64 %or72, ptr %mpls_features, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 27
  %107 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %hw_enc_features, align 16
  %or74 = or i64 %108, %or71
  store i64 %or74, ptr %hw_enc_features, align 16
  %or76 = or i64 %spec.select, 896
  %109 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %or76, ptr %features, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 30
  %110 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 31
  %111 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 9216, ptr %max_mtu, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock.i) #16
  %reset_hw = getelementptr i8, ptr %call15, i32 3412
  %112 = ptrtoint ptr %reset_hw to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reset_hw, align 4
  %call78 = tail call i32 %113(ptr noundef %hw22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.else85, label %do.end83

do.end83:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31) #20
  br label %if.end111

if.else85:                                        ; preds = %pci_name.exit
  %read_mac_addr = getelementptr i8, ptr %call15, i32 3436
  %114 = ptrtoint ptr %read_mac_addr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read_mac_addr, align 4
  %call88 = tail call i32 %115(ptr noundef %hw22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.else95, label %if.else85.if.end106.sink.split_crit_edge

if.else85.if.end106.sink.split_crit_edge:         ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end106.sink.split

if.else95:                                        ; preds = %if.else85
  %addr = getelementptr i8, ptr %call15, i32 3444
  %116 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %addr, align 4
  %add.ptr.i308 = getelementptr i8, ptr %call15, i32 3448
  %118 = ptrtoint ptr %add.ptr.i308 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr.i308, align 2
  %conv.i = zext i16 %119 to i32
  %or.i = or i32 %117, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i309 = icmp eq i32 %or.i, 0
  br i1 %cmp.i309, label %if.else95.if.end106.sink.split_crit_edge, label %if.else95.if.end106_crit_edge

if.else95.if.end106_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end106

if.else95.if.end106.sink.split_crit_edge:         ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end106.sink.split

if.end106.sink.split:                             ; preds = %if.else95.if.end106.sink.split_crit_edge, %if.else85.if.end106.sink.split_crit_edge
  %.str.37.sink = phi ptr [ @.str.34, %if.else85.if.end106.sink.split_crit_edge ], [ @.str.37, %if.else95.if.end106.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.37.sink) #20
  br label %if.end106

if.end106:                                        ; preds = %if.end106.sink.split, %if.else95.if.end106_crit_edge
  %addr109 = getelementptr i8, ptr %call15, i32 3444
  tail call void @dev_addr_mod(ptr noundef nonnull %call15, i32 noundef 0, ptr noundef %addr109, i32 noundef 6) #16
  br label %if.end111

if.end111:                                        ; preds = %if.end106, %do.end83
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i) #16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 86
  %120 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_addr, align 64
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %124 = and i32 %123, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.i.not.i = icmp eq i32 %124, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end111.do.end117_crit_edge

if.end111.do.end117_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end117

is_valid_ether_addr.exit:                         ; preds = %if.end111
  %add.ptr.i.i310 = getelementptr i8, ptr %121, i32 4
  %125 = ptrtoint ptr %add.ptr.i.i310 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %add.ptr.i.i310, align 2
  %conv.i.i = zext i16 %126 to i32
  %or.i.i = or i32 %123, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end117_crit_edge, label %is_valid_ether_addr.exit.do.body125_crit_edge

is_valid_ether_addr.exit.do.body125_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body125

is_valid_ether_addr.exit.do.end117_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end117

do.end117:                                        ; preds = %is_valid_ether_addr.exit.do.end117_crit_edge, %if.end111.do.end117_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.40) #20
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call15)
  %addr121 = getelementptr i8, ptr %call15, i32 3444
  %127 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 56
  %129 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %130 to i32
  %131 = call ptr @memcpy(ptr %addr121, ptr %128, i32 %conv)
  br label %do.body125

do.body125:                                       ; preds = %do.end117, %is_valid_ether_addr.exit.do.body125_crit_edge
  tail call void @init_timer_key(ptr noundef %add.ptr.i, ptr noundef nonnull @igbvf_watchdog, i32 noundef 0, ptr noundef nonnull @.str.42, ptr noundef nonnull @igbvf_probe.__key) #16
  %reset_task = getelementptr i8, ptr %call15, i32 2400
  tail call void @__init_work(ptr noundef %reset_task, i32 noundef 0) #16
  %132 = ptrtoint ptr %reset_task to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -64, ptr %reset_task, align 32
  %lockdep_map = getelementptr i8, ptr %call15, i32 2416
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.44, ptr noundef nonnull @igbvf_probe.__key.43, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry132 = getelementptr i8, ptr %call15, i32 2404
  %133 = ptrtoint ptr %entry132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %entry132, ptr %entry132, align 4
  %prev.i = getelementptr i8, ptr %call15, i32 2408
  %134 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %entry132, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call15, i32 2412
  %135 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @igbvf_reset_task, ptr %func, align 4
  %watchdog_task = getelementptr i8, ptr %call15, i32 2444
  tail call void @__init_work(ptr noundef %watchdog_task, i32 noundef 0) #16
  %136 = ptrtoint ptr %watchdog_task to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -64, ptr %watchdog_task, align 4
  %lockdep_map142 = getelementptr i8, ptr %call15, i32 2460
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map142, ptr noundef nonnull @.str.46, ptr noundef nonnull @igbvf_probe.__key.45, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry144 = getelementptr i8, ptr %call15, i32 2448
  %137 = ptrtoint ptr %entry144 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %entry144, ptr %entry144, align 4
  %prev.i311 = getelementptr i8, ptr %call15, i32 2452
  %138 = ptrtoint ptr %prev.i311 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %entry144, ptr %prev.i311, align 4
  %func146 = getelementptr i8, ptr %call15, i32 2456
  %139 = ptrtoint ptr %func146 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @igbvf_watchdog_task, ptr %func146, align 4
  %140 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rx_ring.i.i, align 8
  %count = getelementptr inbounds %struct.igbvf_ring, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1024, ptr %count, align 8
  %143 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tx_ring.i.i, align 128
  %count149 = getelementptr inbounds %struct.igbvf_ring, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %count149 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1024, ptr %count149, align 8
  tail call fastcc void @igbvf_reset(ptr noundef %add.ptr.i)
  %146 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %147)
  %cmp153 = icmp eq i32 %147, 2
  br i1 %cmp153, label %if.then155, label %do.body125.if.end158_crit_edge

do.body125.if.end158_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end158

if.then155:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #18
  %148 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags27, align 4
  %or157 = or i32 %149, 2
  store i32 %or157, ptr %flags27, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %do.body125.if.end158_crit_edge
  %150 = call ptr @memcpy(ptr %call15, ptr @.str.47, i32 6)
  %call162 = tail call i32 @register_netdev(ptr noundef nonnull %call15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %err_hw_init

if.end165:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_carrier_off(ptr noundef nonnull %call15) #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 103
  %151 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %152, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  tail call fastcc void @igbvf_print_device_info(ptr noundef %add.ptr.i)
  tail call fastcc void @igbvf_initialize_last_counter_stats(ptr noundef %add.ptr.i)
  br label %cleanup

err_hw_init:                                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #18
  %153 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rx_ring.i.i, align 8
  %napi = getelementptr inbounds %struct.igbvf_ring, ptr %154, i32 0, i32 10
  tail call void @__netif_napi_del(ptr noundef %napi) #16
  tail call void @synchronize_net() #16
  %155 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %tx_ring.i.i, align 128
  tail call void @kfree(ptr noundef %156) #16
  br label %err_sw_init.sink.split

err_sw_init.sink.split:                           ; preds = %err_hw_init, %if.end.i.i.err_sw_init.sink.split_crit_edge
  %.sink317.in = phi ptr [ %rx_ring.i.i, %err_hw_init ], [ %tx_ring.i.i, %if.end.i.i.err_sw_init.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call162, %err_hw_init ], [ -12, %if.end.i.i.err_sw_init.sink.split_crit_edge ]
  %157 = ptrtoint ptr %.sink317.in to i32
  call void @__asan_load4_noabort(i32 %157)
  %.sink317 = load ptr, ptr %.sink317.in, align 8
  tail call void @kfree(ptr noundef %.sink317) #16
  br label %err_sw_init

err_sw_init:                                      ; preds = %err_sw_init.sink.split, %igbvf_set_interrupt_capability.exit.i.err_sw_init_crit_edge, %if.end.i304.err_sw_init_crit_edge, %if.end55.err_sw_init_crit_edge
  %err.0 = phi i32 [ -12, %igbvf_set_interrupt_capability.exit.i.err_sw_init_crit_edge ], [ %call9.i, %if.end.i304.err_sw_init_crit_edge ], [ %call.i303, %if.end55.err_sw_init_crit_edge ], [ %err.0.ph, %err_sw_init.sink.split ]
  %msix_entries.i = getelementptr i8, ptr %call15, i32 4440
  %158 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %msix_entries.i, align 8
  %tobool.not.i312 = icmp eq ptr %159, null
  br i1 %tobool.not.i312, label %err_sw_init.err_get_variants_crit_edge, label %if.then.i313

err_sw_init.err_get_variants_crit_edge:           ; preds = %err_sw_init
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_get_variants

if.then.i313:                                     ; preds = %err_sw_init
  call void @__sanitizer_cov_trace_pc() #18
  %160 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdev24, align 8
  tail call void @pci_disable_msix(ptr noundef %161) #16
  %162 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %msix_entries.i, align 8
  tail call void @kfree(ptr noundef %163) #16
  %164 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %msix_entries.i, align 8
  br label %err_get_variants

err_get_variants:                                 ; preds = %if.then.i313, %err_sw_init.err_get_variants_crit_edge, %if.then49.err_get_variants_crit_edge
  %err.1 = phi i32 [ %call51, %if.then49.err_get_variants_crit_edge ], [ %err.0, %err_sw_init.err_get_variants_crit_edge ], [ %err.0, %if.then.i313 ]
  %165 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hw_addr, align 4
  tail call void @iounmap(ptr noundef %166) #16
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_get_variants, %netif_msg_init.exit.err_ioremap_crit_edge
  %err.2 = phi i32 [ %err.1, %err_get_variants ], [ -5, %netif_msg_init.exit.err_ioremap_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call15) #16
  br label %err_alloc_etherdev

err_alloc_etherdev:                               ; preds = %err_ioremap, %if.end14.err_alloc_etherdev_crit_edge
  %err.3 = phi i32 [ %err.2, %err_ioremap ], [ -12, %if.end14.err_alloc_etherdev_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #16
  br label %err_dma

err_dma:                                          ; preds = %err_alloc_etherdev, %if.end10.err_dma_crit_edge, %do.end
  %err.4 = phi i32 [ %call.i298, %do.end ], [ %call11, %if.end10.err_dma_crit_edge ], [ %err.3, %err_alloc_etherdev ]
  tail call void @pci_disable_device(ptr noundef %pdev) #16
  br label %cleanup

cleanup:                                          ; preds = %err_dma, %if.end165, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_dma ], [ 0, %if.end165 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state = getelementptr i8, ptr %1, i32 3068
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #16
  %call3 = tail call i32 @del_timer_sync(ptr noundef %add.ptr.i) #16
  %reset_task = getelementptr i8, ptr %1, i32 2400
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_task) #16
  %watchdog_task = getelementptr i8, ptr %1, i32 2444
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %watchdog_task) #16
  tail call void @unregister_netdev(ptr noundef %1) #16
  %msix_entries.i = getelementptr i8, ptr %1, i32 4440
  %2 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msix_entries.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.igbvf_reset_interrupt_capability.exit_crit_edge, label %if.then.i

entry.igbvf_reset_interrupt_capability.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_reset_interrupt_capability.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pdev.i = getelementptr i8, ptr %1, i32 3320
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %5) #16
  %6 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msix_entries.i, align 8
  tail call void @kfree(ptr noundef %7) #16
  %8 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %msix_entries.i, align 8
  br label %igbvf_reset_interrupt_capability.exit

igbvf_reset_interrupt_capability.exit:            ; preds = %if.then.i, %entry.igbvf_reset_interrupt_capability.exit_crit_edge
  %rx_ring = getelementptr i8, ptr %1, i32 3256
  %9 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_ring, align 8
  %napi = getelementptr inbounds %struct.igbvf_ring, ptr %10, i32 0, i32 10
  tail call void @__netif_napi_del(ptr noundef %napi) #16
  tail call void @synchronize_net() #16
  %tx_ring = getelementptr i8, ptr %1, i32 3200
  %11 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_ring, align 128
  tail call void @kfree(ptr noundef %12) #16
  %13 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_ring, align 8
  tail call void @kfree(ptr noundef %14) #16
  %hw_addr = getelementptr i8, ptr %1, i32 3372
  %15 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr, align 4
  tail call void @iounmap(ptr noundef %16) #16
  %flash_address = getelementptr i8, ptr %1, i32 3376
  %17 = ptrtoint ptr %flash_address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %flash_address, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %igbvf_reset_interrupt_capability.exit.if.end_crit_edge, label %if.then

igbvf_reset_interrupt_capability.exit.if.end_crit_edge: ; preds = %igbvf_reset_interrupt_capability.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %igbvf_reset_interrupt_capability.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iounmap(ptr noundef nonnull %18) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %igbvf_reset_interrupt_capability.exit.if.end_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #16
  tail call void @free_netdev(ptr noundef %1) #16
  tail call void @pci_disable_device(ptr noundef %pdev) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 @igbvf_suspend(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igbvf_set_ethtool_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #10 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #16
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #16
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #16
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_watchdog(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_task = getelementptr inbounds %struct.igbvf_adapter, ptr %t, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %watchdog_task) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_reset_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -96
  tail call void @igbvf_reinit_locked(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_watchdog_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -140
  %netdev1 = getelementptr i8, ptr %work, i32 872
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %hw = getelementptr i8, ptr %work, i32 924
  %tx_ring3 = getelementptr i8, ptr %work, i32 756
  %2 = ptrtoint ptr %tx_ring3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring3, align 128
  %state.i = getelementptr i8, ptr %work, i32 624
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.end.i:                                         ; preds = %entry
  %mbx_lock.i = getelementptr i8, ptr %work, i32 1088
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock.i) #16
  %check_for_link.i = getelementptr i8, ptr %work, i32 944
  %7 = ptrtoint ptr %check_for_link.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %check_for_link.i, align 4
  %call2.i = tail call i32 %8(ptr noundef %hw) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i) #16
  %get_link_status.i = getelementptr i8, ptr %work, i32 1020
  %9 = ptrtoint ptr %get_link_status.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %get_link_status.i, align 4, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not.i, label %if.end.i.igbvf_has_link.exit_crit_edge, label %land.lhs.true.i

if.end.i.igbvf_has_link.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_has_link.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %last_reset.i = getelementptr i8, ptr %work, i32 2044
  %11 = ptrtoint ptr %last_reset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_reset.i, align 8
  %add.i = add i32 %12, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then7.i, label %land.lhs.true.i.igbvf_has_link.exit_crit_edge

land.lhs.true.i.igbvf_has_link.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_has_link.exit

if.then7.i:                                       ; preds = %land.lhs.true.i
  %reset_task.i = getelementptr i8, ptr %work, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %reset_task.i) #16
  br i1 %tobool5.not.i, label %if.then7.i.if.then_crit_edge, label %if.then7.i.if.else_crit_edge

if.then7.i.if.else_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then7.i.if.then_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

igbvf_has_link.exit:                              ; preds = %land.lhs.true.i.igbvf_has_link.exit_crit_edge, %if.end.i.igbvf_has_link.exit_crit_edge
  br i1 %tobool5.not.i, label %igbvf_has_link.exit.if.then_crit_edge, label %igbvf_has_link.exit.if.else_crit_edge

igbvf_has_link.exit.if.else_crit_edge:            ; preds = %igbvf_has_link.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

igbvf_has_link.exit.if.then_crit_edge:            ; preds = %igbvf_has_link.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %igbvf_has_link.exit.if.then_crit_edge, %if.then7.i.if.then_crit_edge
  %state.i61 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %state.i61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i61, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i62 = icmp eq i32 %17, 0
  br i1 %tobool.not.i62, label %if.then.if.end15_crit_edge, label %if.then7

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %get_link_up_info = getelementptr i8, ptr %work, i32 956
  %18 = ptrtoint ptr %get_link_up_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_link_up_info, align 4
  %link_speed = getelementptr i8, ptr %work, i32 574
  %link_duplex = getelementptr i8, ptr %work, i32 576
  %call9 = tail call i32 %19(ptr noundef %hw, ptr noundef %link_speed, ptr noundef %link_duplex) #16
  %pdev.i = getelementptr i8, ptr %work, i32 876
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %link_speed, align 2
  %conv.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %link_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp.i63 = icmp eq i16 %25, 2
  %cond.i = select i1 %cmp.i63, ptr @.str.71, ptr @.str.72
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.69, i32 noundef %conv.i, ptr noundef nonnull %cond.i) #20
  tail call void @netif_carrier_on(ptr noundef %1) #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %27) #16
  br label %if.end15

if.else:                                          ; preds = %igbvf_has_link.exit.if.else_crit_edge, %if.then7.i.if.else_crit_edge, %entry.if.else_crit_edge
  %state.i64 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %state.i64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i64, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i65 = icmp eq i32 %30, 0
  br i1 %tobool.not.i65, label %if.then11, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %link_speed12 = getelementptr i8, ptr %work, i32 574
  %31 = ptrtoint ptr %link_speed12 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %link_speed12, align 2
  %link_duplex13 = getelementptr i8, ptr %work, i32 576
  %32 = ptrtoint ptr %link_duplex13 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %link_duplex13, align 4
  %pdev = getelementptr i8, ptr %work, i32 876
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.67) #20
  tail call void @netif_carrier_off(ptr noundef %1) #16
  %_tx.i.i66 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %35 = ptrtoint ptr %_tx.i.i66 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i66, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else.if.end15_crit_edge, %if.then7, %if.then.if.end15_crit_edge
  %state.i67 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %state.i67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i67, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i68 = icmp eq i32 %39, 0
  br i1 %tobool.not.i68, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igbvf_update_stats(ptr noundef %add.ptr)
  br label %do.body26

if.else18:                                        ; preds = %if.end15
  %next_to_clean.i = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 6
  %40 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %next_to_clean.i, align 2
  %conv.i69 = zext i16 %41 to i32
  %next_to_use.i = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 5
  %42 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %next_to_use.i, align 4
  %conv1.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp.i70 = icmp ugt i16 %41, %43
  br i1 %cmp.i70, label %if.then.i, label %if.end.i72

if.then.i:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #18
  %44 = xor i32 %conv1.i, -1
  %sub7.i = add nsw i32 %44, %conv.i69
  br label %igbvf_desc_unused.exit

if.end.i72:                                       ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #18
  %count.i = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 4
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count.i, align 8
  %47 = xor i32 %conv1.i, -1
  %add.i71 = add nsw i32 %47, %conv.i69
  %sub13.i = add i32 %add.i71, %46
  br label %igbvf_desc_unused.exit

igbvf_desc_unused.exit:                           ; preds = %if.end.i72, %if.then.i
  %retval.0.i73 = phi i32 [ %sub7.i, %if.then.i ], [ %sub13.i, %if.end.i72 ]
  %add = add i32 %retval.0.i73, 1
  %count = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 4
  %48 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %49)
  %cmp = icmp ult i32 %add, %49
  br i1 %cmp, label %if.then22, label %igbvf_desc_unused.exit.do.body26_crit_edge

igbvf_desc_unused.exit.do.body26_crit_edge:       ; preds = %igbvf_desc_unused.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body26

if.then22:                                        ; preds = %igbvf_desc_unused.exit
  call void @__sanitizer_cov_trace_pc() #18
  %tx_timeout_count = getelementptr i8, ptr %work, i32 792
  %50 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_timeout_count, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %tx_timeout_count, align 4
  %reset_task = getelementptr i8, ptr %work, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %52 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %reset_task) #16
  br label %do.body26

do.body26:                                        ; preds = %if.then22, %igbvf_desc_unused.exit.do.body26_crit_edge, %if.then17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !282
  tail call void @arm_heavy_mb() #16
  %rx_ring = getelementptr i8, ptr %work, i32 812
  %53 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_ring, align 8
  %eims_value = getelementptr inbounds %struct.igbvf_ring, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %eims_value to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %eims_value, align 8
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %hw_addr = getelementptr i8, ptr %work, i32 928
  %58 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_addr, align 4
  %add.ptr29 = getelementptr i8, ptr %59, i32 5408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %57) #16, !srcloc !218
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %state.i, align 4
  %62 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool31.not = icmp eq i32 %62, 0
  br i1 %tobool31.not, label %if.then32, label %do.body26.if.end36_crit_edge

do.body26.if.end36_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %add33 = add i32 %63, 200
  %call34 = tail call i32 @round_jiffies(i32 noundef %add33) #16
  %call35 = tail call i32 @mod_timer(ptr noundef %add.ptr, i32 noundef %call34) #16
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %do.body26.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igbvf_print_device_info(ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev2 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 42
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev2, align 4
  %pdev3 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 43
  %2 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev3, align 8
  %type = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 4, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %.str.73..str.76 = select i1 %cmp, ptr @.str.73, ptr @.str.76
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.73..str.76) #20
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.79, ptr noundef %7) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igbvf_initialize_last_counter_stats(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 45, i32 1
  %0 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3856
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !229
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !283
  %stats = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46
  %last_gprc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 9
  %4 = ptrtoint ptr %last_gprc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %last_gprc, align 8
  %5 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 3864
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #16, !srcloc !229
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !284
  %last_gorc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 11
  %9 = ptrtoint ptr %last_gorc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_gorc, align 16
  %10 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 3860
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #16, !srcloc !229
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !285
  %last_gptc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 10
  %14 = ptrtoint ptr %last_gptc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %last_gptc, align 4
  %15 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr, align 4
  %add.ptr22 = getelementptr i8, ptr %16, i32 3892
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #16, !srcloc !229
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !286
  %last_gotc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 12
  %19 = ptrtoint ptr %last_gotc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last_gotc, align 4
  %20 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr, align 4
  %add.ptr30 = getelementptr i8, ptr %21, i32 3900
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #16, !srcloc !229
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !287
  %last_mprc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 13
  %24 = ptrtoint ptr %last_mprc to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_mprc, align 8
  %25 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr, align 4
  %add.ptr38 = getelementptr i8, ptr %26, i32 3920
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #16, !srcloc !229
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !288
  %last_gotlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 14
  %29 = ptrtoint ptr %last_gotlbc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_gotlbc, align 4
  %30 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr, align 4
  %add.ptr46 = getelementptr i8, ptr %31, i32 3908
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #16, !srcloc !229
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !289
  %last_gptlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 15
  %34 = ptrtoint ptr %last_gptlbc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %last_gptlbc, align 16
  %35 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_addr, align 4
  %add.ptr54 = getelementptr i8, ptr %36, i32 3912
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #16, !srcloc !229
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !290
  %last_gorlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 16
  %39 = ptrtoint ptr %last_gorlbc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %last_gorlbc, align 4
  %40 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_addr, align 4
  %add.ptr62 = getelementptr i8, ptr %41, i32 3904
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #16, !srcloc !229
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  %last_gprlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 17
  %44 = ptrtoint ptr %last_gprlbc to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %last_gprlbc, align 8
  %45 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr, align 4
  %add.ptr70 = getelementptr i8, ptr %46, i32 3856
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #16, !srcloc !229
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !292
  %conv = zext i32 %48 to i64
  %49 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv, ptr %stats, align 16
  %50 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_addr, align 4
  %add.ptr78 = getelementptr i8, ptr %51, i32 3864
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #16, !srcloc !229
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !293
  %conv82 = zext i32 %53 to i64
  %base_gorc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 2
  %54 = ptrtoint ptr %base_gorc to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv82, ptr %base_gorc, align 16
  %55 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_addr, align 4
  %add.ptr87 = getelementptr i8, ptr %56, i32 3860
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #16, !srcloc !229
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %conv91 = zext i32 %58 to i64
  %base_gptc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 1
  %59 = ptrtoint ptr %base_gptc to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv91, ptr %base_gptc, align 8
  %60 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_addr, align 4
  %add.ptr96 = getelementptr i8, ptr %61, i32 3892
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #16, !srcloc !229
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !295
  %conv100 = zext i32 %63 to i64
  %base_gotc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 3
  %64 = ptrtoint ptr %base_gotc to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv100, ptr %base_gotc, align 8
  %65 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_addr, align 4
  %add.ptr105 = getelementptr i8, ptr %66, i32 3900
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #16, !srcloc !229
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv109 = zext i32 %68 to i64
  %base_mprc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 4
  %69 = ptrtoint ptr %base_mprc to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv109, ptr %base_mprc, align 16
  %70 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw_addr, align 4
  %add.ptr114 = getelementptr i8, ptr %71, i32 3920
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #16, !srcloc !229
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !297
  %conv118 = zext i32 %73 to i64
  %base_gotlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 5
  %74 = ptrtoint ptr %base_gotlbc to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv118, ptr %base_gotlbc, align 8
  %75 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_addr, align 4
  %add.ptr123 = getelementptr i8, ptr %76, i32 3908
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #16, !srcloc !229
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !298
  %conv127 = zext i32 %78 to i64
  %base_gptlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 6
  %79 = ptrtoint ptr %base_gptlbc to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv127, ptr %base_gptlbc, align 16
  %80 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw_addr, align 4
  %add.ptr132 = getelementptr i8, ptr %81, i32 3912
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #16, !srcloc !229
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  %conv136 = zext i32 %83 to i64
  %base_gorlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 7
  %84 = ptrtoint ptr %base_gorlbc to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv136, ptr %base_gorlbc, align 8
  %85 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw_addr, align 4
  %add.ptr141 = getelementptr i8, ptr %86, i32 3904
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #16, !srcloc !229
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !300
  %conv145 = zext i32 %88 to i64
  %base_gprlbc = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 46, i32 8
  %89 = ptrtoint ptr %base_gprlbc to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv145, ptr %base_gprlbc, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_init_function_pointers_vf(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %work_done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %work_done) #16
  %2 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %work_done, align 4
  call fastcc void @igbvf_clean_rx_irq(ptr noundef %1, ptr noundef nonnull %work_done, i32 noundef %budget)
  %3 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %budget)
  %cmp = icmp eq i32 %4, %budget
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %4) #16
  br i1 %call3, label %if.then5, label %if.end.cleanup_crit_edge, !prof !220

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %requested_itr = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %requested_itr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %requested_itr, align 128
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then5.if.end8_crit_edge, label %if.then7

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %if.then5
  %tx_ring.i = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_ring.i, align 128
  %itr_val.i = getelementptr inbounds %struct.igbvf_ring, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %itr_val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %itr_val.i, align 4
  %total_tx_packets.i = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %total_tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_tx_packets.i, align 8
  %total_tx_bytes.i = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %total_tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_tx_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i, label %if.then7.igbvf_update_itr.exit.i_crit_edge, label %if.end.i.i

if.then7.igbvf_update_itr.exit.i_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit.i

if.end.i.i:                                       ; preds = %if.then7
  %15 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end.i.i.igbvf_update_itr.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb9.i.i
    i32 2, label %sw.bb38.i.i
  ]

if.end.i.i.igbvf_update_itr.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %div.i.i = sdiv i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %div.i.i)
  %cmp2.i.i = icmp sgt i32 %div.i.i, 8000
  br i1 %cmp2.i.i, label %sw.bb.i.i.igbvf_update_itr.exit.i_crit_edge, label %if.else.i.i

sw.bb.i.i.igbvf_update_itr.exit.i_crit_edge:      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit.i

if.else.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp4.i.i = icmp slt i32 %12, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %14)
  %cmp5.i.i = icmp sgt i32 %14, 512
  %or.cond.i.i = and i1 %cmp4.i.i, %cmp5.i.i
  %spec.select5.i.i = zext i1 %or.cond.i.i to i32
  br label %igbvf_update_itr.exit.i

sw.bb9.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %14)
  %cmp10.i.i = icmp sgt i32 %14, 10000
  %div12.i.i = sdiv i32 %14, %12
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.else26.i.i

if.then11.i.i:                                    ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %div12.i.i)
  %cmp13.i.i = icmp sgt i32 %div12.i.i, 8000
  br i1 %cmp13.i.i, label %if.then11.i.i.igbvf_update_itr.exit.i_crit_edge, label %if.else15.i.i

if.then11.i.i.igbvf_update_itr.exit.i_crit_edge:  ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit.i

if.else15.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %12)
  %cmp16.i.i = icmp slt i32 %12, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %div12.i.i)
  %cmp18.i.i = icmp sgt i32 %div12.i.i, 1200
  %or.cond1.i.i = or i1 %cmp16.i.i, %cmp18.i.i
  br i1 %or.cond1.i.i, label %if.else15.i.i.igbvf_update_itr.exit.i_crit_edge, label %if.else20.i.i

if.else15.i.i.igbvf_update_itr.exit.i_crit_edge:  ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit.i

if.else20.i.i:                                    ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %12)
  %cmp21.i.i = icmp ult i32 %12, 36
  %spec.select.i.i = zext i1 %cmp21.i.i to i32
  br label %igbvf_update_itr.exit.i

if.else26.i.i:                                    ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %div12.i.i)
  %cmp28.i.i = icmp sgt i32 %div12.i.i, 2000
  br i1 %cmp28.i.i, label %if.else26.i.i.igbvf_update_itr.exit.i_crit_edge, label %if.else30.i.i

if.else26.i.i.igbvf_update_itr.exit.i_crit_edge:  ; preds = %if.else26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit.i

if.else30.i.i:                                    ; preds = %if.else26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp31.i.i = icmp sgt i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %14)
  %cmp33.i.i = icmp sgt i32 %14, 511
  %not.or.cond2.i.i = or i1 %cmp31.i.i, %cmp33.i.i
  %spec.select6.i.i = zext i1 %not.or.cond2.i.i to i32
  br label %igbvf_update_itr.exit.i

sw.bb38.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %14)
  %cmp39.i.i = icmp sgt i32 %14, 25000
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.else44.i.i

if.then40.i.i:                                    ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %12)
  %cmp41.i.i = icmp sgt i32 %12, 35
  %spec.select3.i.i = select i1 %cmp41.i.i, i32 1, i32 2
  br label %igbvf_update_itr.exit.i

if.else44.i.i:                                    ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %14)
  %cmp45.i.i = icmp slt i32 %14, 6000
  %spec.select4.i.i = select i1 %cmp45.i.i, i32 1, i32 2
  br label %igbvf_update_itr.exit.i

igbvf_update_itr.exit.i:                          ; preds = %if.else44.i.i, %if.then40.i.i, %if.else30.i.i, %if.else26.i.i.igbvf_update_itr.exit.i_crit_edge, %if.else20.i.i, %if.else15.i.i.igbvf_update_itr.exit.i_crit_edge, %if.then11.i.i.igbvf_update_itr.exit.i_crit_edge, %if.else.i.i, %sw.bb.i.i.igbvf_update_itr.exit.i_crit_edge, %if.end.i.i.igbvf_update_itr.exit.i_crit_edge, %if.then7.igbvf_update_itr.exit.i_crit_edge
  %retval1.0.i.i = phi i32 [ %10, %if.then7.igbvf_update_itr.exit.i_crit_edge ], [ %10, %if.end.i.i.igbvf_update_itr.exit.i_crit_edge ], [ 2, %sw.bb.i.i.igbvf_update_itr.exit.i_crit_edge ], [ 2, %if.then11.i.i.igbvf_update_itr.exit.i_crit_edge ], [ 2, %if.else15.i.i.igbvf_update_itr.exit.i_crit_edge ], [ %spec.select.i.i, %if.else20.i.i ], [ 2, %if.else26.i.i.igbvf_update_itr.exit.i_crit_edge ], [ %spec.select3.i.i, %if.then40.i.i ], [ %spec.select4.i.i, %if.else44.i.i ], [ %spec.select5.i.i, %if.else.i.i ], [ %spec.select6.i.i, %if.else30.i.i ]
  %itr_range.i = getelementptr inbounds %struct.igbvf_ring, ptr %8, i32 0, i32 14
  %16 = ptrtoint ptr %itr_range.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval1.0.i.i, ptr %itr_range.i, align 8
  %17 = ptrtoint ptr %requested_itr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %requested_itr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i = icmp eq i32 %18, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %igbvf_update_itr.exit.i.if.end.i_crit_edge

igbvf_update_itr.exit.i.if.end.i_crit_edge:       ; preds = %igbvf_update_itr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %igbvf_update_itr.exit.i
  %19 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_ring.i, align 128
  %itr_range3.i = getelementptr inbounds %struct.igbvf_ring, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %itr_range3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %itr_range3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4.i = icmp eq i32 %22, 0
  br i1 %cmp4.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %itr_range3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %itr_range3.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %igbvf_update_itr.exit.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ring.i, align 128
  %itr_range8.i = getelementptr inbounds %struct.igbvf_ring, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %itr_range8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %itr_range8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %switch.lookup, label %if.end.i.igbvf_range_to_itr.exit.i_crit_edge

if.end.i.igbvf_range_to_itr.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_range_to_itr.exit.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.igbvf_poll, i32 0, i32 %27
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %igbvf_range_to_itr.exit.i

igbvf_range_to_itr.exit.i:                        ; preds = %switch.lookup, %if.end.i.igbvf_range_to_itr.exit.i_crit_edge
  %new_itr.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 488, %if.end.i.igbvf_range_to_itr.exit.i_crit_edge ]
  %itr_val11.i = getelementptr inbounds %struct.igbvf_ring, ptr %25, i32 0, i32 13
  %30 = ptrtoint ptr %itr_val11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %itr_val11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_itr.0.i.i, i32 %31)
  %cmp12.not.i = icmp eq i32 %new_itr.0.i.i, %31
  br i1 %cmp12.not.i, label %igbvf_range_to_itr.exit.i.if.end25.i_crit_edge, label %if.then13.i

igbvf_range_to_itr.exit.i.if.end25.i_crit_edge:   ; preds = %igbvf_range_to_itr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i

if.then13.i:                                      ; preds = %igbvf_range_to_itr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_cmp4(i32 %new_itr.0.i.i, i32 %31)
  %cmp16.i = icmp ugt i32 %new_itr.0.i.i, %31
  %shr.i27 = lshr exact i32 %new_itr.0.i.i, 2
  %add.i = add i32 %31, %shr.i27
  %32 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %new_itr.0.i.i) #16
  %cond21.i = select i1 %cmp16.i, i32 %32, i32 %new_itr.0.i.i
  %33 = ptrtoint ptr %itr_val11.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond21.i, ptr %itr_val11.i, align 4
  %34 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_ring.i, align 128
  %set_itr.i = getelementptr inbounds %struct.igbvf_ring, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %set_itr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %set_itr.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then13.i, %igbvf_range_to_itr.exit.i.if.end25.i_crit_edge
  %rx_ring.i = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 31
  %37 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_ring.i, align 8
  %itr_val26.i = getelementptr inbounds %struct.igbvf_ring, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %itr_val26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %itr_val26.i, align 4
  %total_rx_packets.i = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 25
  %41 = ptrtoint ptr %total_rx_packets.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %total_rx_packets.i, align 32
  %total_rx_bytes.i = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 24
  %43 = ptrtoint ptr %total_rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %total_rx_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i111.i = icmp eq i32 %42, 0
  br i1 %cmp.i111.i, label %if.end25.i.igbvf_update_itr.exit149.i_crit_edge, label %if.end.i112.i

if.end25.i.igbvf_update_itr.exit149.i_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit149.i

if.end.i112.i:                                    ; preds = %if.end25.i
  %45 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %40, label %if.end.i112.i.igbvf_update_itr.exit149.i_crit_edge [
    i32 0, label %sw.bb.i115.i
    i32 1, label %sw.bb9.i123.i
    i32 2, label %sw.bb38.i141.i
  ]

if.end.i112.i.igbvf_update_itr.exit149.i_crit_edge: ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit149.i

sw.bb.i115.i:                                     ; preds = %if.end.i112.i
  %div.i113.i = sdiv i32 %44, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %div.i113.i)
  %cmp2.i114.i = icmp sgt i32 %div.i113.i, 8000
  br i1 %cmp2.i114.i, label %sw.bb.i115.i.igbvf_update_itr.exit149.i_crit_edge, label %if.else.i120.i

sw.bb.i115.i.igbvf_update_itr.exit149.i_crit_edge: ; preds = %sw.bb.i115.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit149.i

if.else.i120.i:                                   ; preds = %sw.bb.i115.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %42)
  %cmp4.i116.i = icmp slt i32 %42, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %44)
  %cmp5.i117.i = icmp sgt i32 %44, 512
  %or.cond.i118.i = and i1 %cmp4.i116.i, %cmp5.i117.i
  %spec.select5.i119.i = zext i1 %or.cond.i118.i to i32
  br label %igbvf_update_itr.exit149.i

sw.bb9.i123.i:                                    ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %44)
  %cmp10.i121.i = icmp sgt i32 %44, 10000
  %div12.i122.i = sdiv i32 %44, %42
  br i1 %cmp10.i121.i, label %if.then11.i125.i, label %if.else26.i134.i

if.then11.i125.i:                                 ; preds = %sw.bb9.i123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %div12.i122.i)
  %cmp13.i124.i = icmp sgt i32 %div12.i122.i, 8000
  br i1 %cmp13.i124.i, label %if.then11.i125.i.igbvf_update_itr.exit149.i_crit_edge, label %if.else15.i129.i

if.then11.i125.i.igbvf_update_itr.exit149.i_crit_edge: ; preds = %if.then11.i125.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit149.i

if.else15.i129.i:                                 ; preds = %if.then11.i125.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %42)
  %cmp16.i126.i = icmp slt i32 %42, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %div12.i122.i)
  %cmp18.i127.i = icmp sgt i32 %div12.i122.i, 1200
  %or.cond1.i128.i = or i1 %cmp16.i126.i, %cmp18.i127.i
  br i1 %or.cond1.i128.i, label %if.else15.i129.i.igbvf_update_itr.exit149.i_crit_edge, label %if.else20.i132.i

if.else15.i129.i.igbvf_update_itr.exit149.i_crit_edge: ; preds = %if.else15.i129.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit149.i

if.else20.i132.i:                                 ; preds = %if.else15.i129.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %42)
  %cmp21.i130.i = icmp ult i32 %42, 36
  %spec.select.i131.i = zext i1 %cmp21.i130.i to i32
  br label %igbvf_update_itr.exit149.i

if.else26.i134.i:                                 ; preds = %sw.bb9.i123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %div12.i122.i)
  %cmp28.i133.i = icmp sgt i32 %div12.i122.i, 2000
  br i1 %cmp28.i133.i, label %if.else26.i134.i.igbvf_update_itr.exit149.i_crit_edge, label %if.else30.i139.i

if.else26.i134.i.igbvf_update_itr.exit149.i_crit_edge: ; preds = %if.else26.i134.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_update_itr.exit149.i

if.else30.i139.i:                                 ; preds = %if.else26.i134.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp31.i135.i = icmp sgt i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %44)
  %cmp33.i136.i = icmp sgt i32 %44, 511
  %not.or.cond2.i137.i = or i1 %cmp31.i135.i, %cmp33.i136.i
  %spec.select6.i138.i = zext i1 %not.or.cond2.i137.i to i32
  br label %igbvf_update_itr.exit149.i

sw.bb38.i141.i:                                   ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %44)
  %cmp39.i140.i = icmp sgt i32 %44, 25000
  br i1 %cmp39.i140.i, label %if.then40.i144.i, label %if.else44.i147.i

if.then40.i144.i:                                 ; preds = %sw.bb38.i141.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %42)
  %cmp41.i142.i = icmp sgt i32 %42, 35
  %spec.select3.i143.i = select i1 %cmp41.i142.i, i32 1, i32 2
  br label %igbvf_update_itr.exit149.i

if.else44.i147.i:                                 ; preds = %sw.bb38.i141.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %44)
  %cmp45.i145.i = icmp slt i32 %44, 6000
  %spec.select4.i146.i = select i1 %cmp45.i145.i, i32 1, i32 2
  br label %igbvf_update_itr.exit149.i

igbvf_update_itr.exit149.i:                       ; preds = %if.else44.i147.i, %if.then40.i144.i, %if.else30.i139.i, %if.else26.i134.i.igbvf_update_itr.exit149.i_crit_edge, %if.else20.i132.i, %if.else15.i129.i.igbvf_update_itr.exit149.i_crit_edge, %if.then11.i125.i.igbvf_update_itr.exit149.i_crit_edge, %if.else.i120.i, %sw.bb.i115.i.igbvf_update_itr.exit149.i_crit_edge, %if.end.i112.i.igbvf_update_itr.exit149.i_crit_edge, %if.end25.i.igbvf_update_itr.exit149.i_crit_edge
  %retval1.0.i148.i = phi i32 [ %40, %if.end25.i.igbvf_update_itr.exit149.i_crit_edge ], [ %40, %if.end.i112.i.igbvf_update_itr.exit149.i_crit_edge ], [ 2, %sw.bb.i115.i.igbvf_update_itr.exit149.i_crit_edge ], [ 2, %if.then11.i125.i.igbvf_update_itr.exit149.i_crit_edge ], [ 2, %if.else15.i129.i.igbvf_update_itr.exit149.i_crit_edge ], [ %spec.select.i131.i, %if.else20.i132.i ], [ 2, %if.else26.i134.i.igbvf_update_itr.exit149.i_crit_edge ], [ %spec.select3.i143.i, %if.then40.i144.i ], [ %spec.select4.i146.i, %if.else44.i147.i ], [ %spec.select5.i119.i, %if.else.i120.i ], [ %spec.select6.i138.i, %if.else30.i139.i ]
  %itr_range29.i = getelementptr inbounds %struct.igbvf_ring, ptr %38, i32 0, i32 14
  %46 = ptrtoint ptr %itr_range29.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval1.0.i148.i, ptr %itr_range29.i, align 8
  %47 = ptrtoint ptr %requested_itr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %requested_itr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp31.i = icmp eq i32 %48, 3
  br i1 %cmp31.i, label %land.lhs.true32.i, label %igbvf_update_itr.exit149.i.if.end39.i_crit_edge

igbvf_update_itr.exit149.i.if.end39.i_crit_edge:  ; preds = %igbvf_update_itr.exit149.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39.i

land.lhs.true32.i:                                ; preds = %igbvf_update_itr.exit149.i
  %49 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_ring.i, align 8
  %itr_range34.i = getelementptr inbounds %struct.igbvf_ring, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %itr_range34.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %itr_range34.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp35.i = icmp eq i32 %52, 0
  br i1 %cmp35.i, label %if.then36.i, label %land.lhs.true32.i.if.end39.i_crit_edge

land.lhs.true32.i.if.end39.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39.i

if.then36.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %itr_range34.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %itr_range34.i, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %land.lhs.true32.i.if.end39.i_crit_edge, %igbvf_update_itr.exit149.i.if.end39.i_crit_edge
  %54 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_ring.i, align 8
  %itr_range41.i = getelementptr inbounds %struct.igbvf_ring, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %itr_range41.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %itr_range41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %switch.lookup28, label %if.end39.i.igbvf_range_to_itr.exit154.i_crit_edge

if.end39.i.igbvf_range_to_itr.exit154.i_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_range_to_itr.exit154.i

switch.lookup28:                                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep29 = getelementptr inbounds [3 x i32], ptr @switch.table.igbvf_poll.85, i32 0, i32 %57
  %59 = ptrtoint ptr %switch.gep29 to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load30 = load i32, ptr %switch.gep29, align 4
  br label %igbvf_range_to_itr.exit154.i

igbvf_range_to_itr.exit154.i:                     ; preds = %switch.lookup28, %if.end39.i.igbvf_range_to_itr.exit154.i_crit_edge
  %new_itr.0.i153.i = phi i32 [ %switch.load30, %switch.lookup28 ], [ 488, %if.end39.i.igbvf_range_to_itr.exit154.i_crit_edge ]
  %itr_val44.i = getelementptr inbounds %struct.igbvf_ring, ptr %55, i32 0, i32 13
  %60 = ptrtoint ptr %itr_val44.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %itr_val44.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_itr.0.i153.i, i32 %61)
  %cmp45.not.i = icmp eq i32 %new_itr.0.i153.i, %61
  br i1 %cmp45.not.i, label %igbvf_range_to_itr.exit154.i.if.end8_crit_edge, label %if.then46.i

igbvf_range_to_itr.exit154.i.if.end8_crit_edge:   ; preds = %igbvf_range_to_itr.exit154.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then46.i:                                      ; preds = %igbvf_range_to_itr.exit154.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_cmp4(i32 %new_itr.0.i153.i, i32 %61)
  %cmp50.i = icmp ugt i32 %new_itr.0.i153.i, %61
  %shr52.i = lshr exact i32 %new_itr.0.i153.i, 2
  %add53.i = add i32 %61, %shr52.i
  %62 = tail call i32 @llvm.umin.i32(i32 %add53.i, i32 %new_itr.0.i153.i) #16
  %cond62.i = select i1 %cmp50.i, i32 %62, i32 %new_itr.0.i153.i
  %63 = ptrtoint ptr %itr_val44.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond62.i, ptr %itr_val44.i, align 4
  %64 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_ring.i, align 8
  %set_itr66.i = getelementptr inbounds %struct.igbvf_ring, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %set_itr66.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %set_itr66.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then46.i, %igbvf_range_to_itr.exit154.i.if.end8_crit_edge, %if.then5.if.end8_crit_edge
  %state = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 13
  %67 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %state, align 4
  %69 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool10.not = icmp eq i32 %69, 0
  br i1 %tobool10.not, label %do.body, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !301
  tail call void @arm_heavy_mb() #16
  %rx_ring12 = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 31
  %70 = ptrtoint ptr %rx_ring12 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_ring12, align 8
  %eims_value = getelementptr inbounds %struct.igbvf_ring, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %eims_value to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %eims_value, align 8
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %hw_addr = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 45, i32 1
  %75 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_addr, align 4
  %add.ptr13 = getelementptr i8, ptr %76, i32 5412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %74) #16, !srcloc !218
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %budget, %entry.cleanup_crit_edge ], [ %4, %if.end8.cleanup_crit_edge ], [ %4, %do.body ], [ %4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work_done) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igbvf_clean_rx_irq(ptr noundef %adapter, ptr nocapture noundef %work_done, i32 noundef %work_to_do) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring1 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 31
  %0 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring1, align 8
  %netdev2 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 42
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  %next_to_clean = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_to_clean, align 2
  %conv = zext i16 %5 to i32
  %desc = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %arrayidx = getelementptr %union.igbvf_desc, ptr %7, i32 %conv
  %upper = getelementptr inbounds %struct.anon.153, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %upper, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and26 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool.not27 = icmp eq i32 %and26, 0
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pdev3 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 43
  %11 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev3, align 8
  %buffer_info5 = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 9
  %rx_ps_hdr_size = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 39
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %rx_buffer_len42 = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 7
  %count = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 4
  %flags.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 63
  %hw_csum_err.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 34
  %hw_csum_good.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 35
  %active_vlans.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end89.while.body_crit_edge, %while.body.lr.ph
  %staterr.034 = phi i32 [ %10, %while.body.lr.ph ], [ %147, %if.end89.while.body_crit_edge ]
  %i.032 = phi i32 [ %conv, %while.body.lr.ph ], [ %spec.store.select, %if.end89.while.body_crit_edge ]
  %total_packets.031 = phi i32 [ 0, %while.body.lr.ph ], [ %total_packets.1, %if.end89.while.body_crit_edge ]
  %total_bytes.030 = phi i32 [ 0, %while.body.lr.ph ], [ %total_bytes.1, %if.end89.while.body_crit_edge ]
  %cleaned_count.029 = phi i32 [ 0, %while.body.lr.ph ], [ %cleaned_count.1, %if.end89.while.body_crit_edge ]
  %rx_desc.028 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %arrayidx62, %if.end89.while.body_crit_edge ]
  %13 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %work_to_do)
  %cmp.not = icmp slt i32 %14, %work_to_do
  br i1 %cmp.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nsw i32 %14, 1
  %15 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %work_done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %16 = ptrtoint ptr %buffer_info5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer_info5, align 4
  %arrayidx6 = getelementptr %struct.igbvf_buffer, ptr %17, i32 %i.032
  %hdr_info = getelementptr inbounds %struct.anon.156, ptr %rx_desc.028, i32 0, i32 1
  %18 = ptrtoint ptr %hdr_info to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hdr_info, align 2
  %20 = and i16 %19, -8065
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = lshr exact i16 %21, 5
  %23 = zext i16 %22 to i32
  %24 = ptrtoint ptr %rx_ps_hdr_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_ps_hdr_size, align 8
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %23)
  %upper14 = getelementptr inbounds %struct.anon.153, ptr %rx_desc.028, i32 0, i32 1
  %length15 = getelementptr inbounds %struct.anon.153, ptr %rx_desc.028, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %length15 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %length15, align 4
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv16 = zext i16 %29 to i32
  %inc17 = add nsw i32 %cleaned_count.029, 1
  %skb18 = getelementptr %struct.igbvf_buffer, ptr %17, i32 %i.032, i32 1
  %30 = ptrtoint ptr %skb18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb18, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 -2
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr) #16, !srcloc !303
  %34 = ptrtoint ptr %skb18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %skb18, align 4
  %35 = ptrtoint ptr %rx_ps_hdr_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_ps_hdr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool21.not = icmp eq i32 %36, 0
  br i1 %tobool21.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx6, align 8
  %39 = ptrtoint ptr %rx_buffer_len42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_buffer_len42, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %dev28, i32 noundef %38, i32 noundef %40, i32 noundef 2, i32 noundef 0) #16
  %41 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx6, align 8
  %call = tail call ptr @skb_put(ptr noundef %31, i32 noundef %conv16) #16
  br label %send_up

if.end24:                                         ; preds = %if.end
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool26.not = icmp eq i8 %45, 0
  br i1 %tobool26.not, label %if.then27, label %if.end24.if.end33_crit_edge

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %46 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx6, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev28, i32 noundef %47, i32 noundef %36, i32 noundef 2, i32 noundef 0) #16
  %48 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx6, align 8
  %call32 = tail call ptr @skb_put(ptr noundef %31, i32 noundef %26) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end24.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool34.not = icmp eq i16 %28, 0
  br i1 %tobool34.not, label %if.end33.send_up_crit_edge, label %if.then35

if.end33.send_up_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %send_up

if.then35:                                        ; preds = %if.end33
  %49 = getelementptr %struct.igbvf_buffer, ptr %17, i32 %i.032, i32 2
  %page_dma = getelementptr inbounds %struct.anon.164, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %page_dma to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %page_dma, align 8
  %conv37 = trunc i64 %51 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev28, i32 noundef %conv37, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #16
  %52 = ptrtoint ptr %page_dma to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %page_dma, align 8
  %53 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i, align 4
  %nr_frags40 = getelementptr inbounds %struct.skb_shared_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %nr_frags40 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nr_frags40, align 2
  %conv41 = zext i8 %56 to i32
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %49, align 8
  %page_offset = getelementptr inbounds %struct.anon.164, ptr %49, i32 0, i32 2
  %59 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %page_offset, align 8
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %54, i32 0, i32 12, i32 %conv41
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %54, i32 0, i32 12, i32 %conv41, i32 2
  %62 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %bv_offset.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %54, i32 0, i32 12, i32 %conv41, i32 1
  %63 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv16, ptr %bv_len.i.i.i, align 4
  %64 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %and.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !220

if.then.i.i.i:                                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = add i32 %66, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %58 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %67, %if.end.i.i.i ]
  %68 = inttoptr i32 %retval.0.i.i.i to ptr
  %69 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %72 = ptrtoint ptr %71 to i32
  %and.i8.i.i = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_fill_page_desc.exit

if.then.i.i:                                      ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 12
  %73 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %conv.i = add i8 %56, 1
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv.i, ptr %nr_frags.i, align 2
  %77 = ptrtoint ptr %rx_buffer_len42 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_buffer_len42, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %78)
  %cmp43 = icmp ugt i32 %78, 2048
  br i1 %cmp43, label %skb_fill_page_desc.exit.if.then49_crit_edge, label %lor.lhs.false

skb_fill_page_desc.exit.if.then49_crit_edge:      ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49

lor.lhs.false:                                    ; preds = %skb_fill_page_desc.exit
  %79 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %49, align 8
  %81 = getelementptr inbounds %struct.page, ptr %80, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  %and.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i2, !prof !220

if.then.i.i2:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %83, -1
  br label %page_count.exit

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %84 = ptrtoint ptr %80 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i, %if.then.i.i2
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i2 ], [ %84, %if.end.i.i ]
  %85 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #16
  %86 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp47.not = icmp eq i32 %87, 1
  br i1 %cmp47.not, label %if.else, label %page_count.exit.if.then49_crit_edge

page_count.exit.if.then49_crit_edge:              ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49

if.then49:                                        ; preds = %page_count.exit.if.then49_crit_edge, %skb_fill_page_desc.exit.if.then49_crit_edge
  %88 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %49, align 8
  br label %if.end52

if.else:                                          ; preds = %page_count.exit
  %89 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %49, align 8
  %91 = getelementptr inbounds %struct.page, ptr %90, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %91, align 4
  %and.i.i3 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3)
  %tobool.not.i.i4 = icmp eq i32 %and.i.i3, 0
  br i1 %tobool.not.i.i4, label %if.end.i.i7, label %if.then.i.i6, !prof !220

if.then.i.i6:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i5 = add i32 %93, -1
  br label %_compound_head.exit.i

if.end.i.i7:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %94 = ptrtoint ptr %90 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i7, %if.then.i.i6
  %retval.0.i.i8 = phi i32 [ %sub.i.i5, %if.then.i.i6 ], [ %94, %if.end.i.i7 ]
  %95 = inttoptr i32 %retval.0.i.i8 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %95, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  %96 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %97, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !221

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %98 = inttoptr i32 %retval.0.i.i8 to ptr
  tail call void @dump_page(ptr noundef %98, ptr noundef nonnull @.str.55) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #16, !srcloc !304
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #16
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #16, !srcloc !305
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@igbvf_clean_rx_irq, %if.then.i.i.i.i)) #16
          to label %if.end52 [label %if.then.i.i.i.i], !srcloc !226

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__page_ref_mod(ptr noundef %95, i32 noundef 1) #16
  br label %if.end52

if.end52:                                         ; preds = %if.then.i.i.i.i, %do.end5.i.i, %if.then49
  %len = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 6
  %100 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len, align 4
  %add = add i32 %101, %conv16
  store i32 %add, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 7
  %102 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %data_len, align 8
  %add53 = add i32 %103, %conv16
  store i32 %add53, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 20
  %104 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %truesize, align 8
  %add54 = add i32 %105, 2048
  store i32 %add54, ptr %truesize, align 8
  br label %send_up

send_up:                                          ; preds = %if.end52, %if.end33.send_up_crit_edge, %if.then22
  %inc56 = add i32 %i.032, 1
  %106 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc56, i32 %107)
  %cmp57 = icmp eq i32 %inc56, %107
  %spec.store.select = select i1 %cmp57, i32 0, i32 %inc56
  %108 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %desc, align 4
  %arrayidx62 = getelementptr %union.igbvf_desc, ptr %109, i32 %spec.store.select
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx62) #16, !srcloc !303
  %and65 = and i32 %staterr.034, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then67, label %if.end74

if.then67:                                        ; preds = %send_up
  call void @__sanitizer_cov_trace_pc() #18
  %110 = ptrtoint ptr %buffer_info5 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %buffer_info5, align 4
  %arrayidx64 = getelementptr %struct.igbvf_buffer, ptr %111, i32 %spec.store.select
  %skb68 = getelementptr %struct.igbvf_buffer, ptr %111, i32 %spec.store.select, i32 1
  %112 = ptrtoint ptr %skb68 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %skb68, align 4
  %114 = ptrtoint ptr %skb18 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %skb18, align 4
  %115 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx64, align 8
  %117 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx6, align 8
  store ptr %31, ptr %skb68, align 4
  store i32 0, ptr %arrayidx64, align 8
  br label %next_desc

if.end74:                                         ; preds = %send_up
  %and75 = and i32 %staterr.034, -1761607680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_irq(ptr noundef %31, i32 noundef 1) #16
  br label %next_desc

if.end78:                                         ; preds = %if.end74
  %len79 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 6
  %118 = ptrtoint ptr %len79 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len79, align 4
  %add80 = add i32 %119, %total_bytes.030
  %inc81 = add i32 %total_packets.031, 1
  %and.i = and i32 %staterr.034, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end78.igbvf_rx_checksum_adv.exit_crit_edge

if.end78.igbvf_rx_checksum_adv.exit_crit_edge:    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_rx_checksum_adv.exit

lor.lhs.false.i:                                  ; preds = %if.end78
  %120 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags.i, align 4
  %and1.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.igbvf_rx_checksum_adv.exit_crit_edge

lor.lhs.false.i.igbvf_rx_checksum_adv.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_rx_checksum_adv.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %and3.i = and i32 %staterr.034, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %122 = ptrtoint ptr %hw_csum_err.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %hw_csum_err.i, align 8
  %inc.i = add i64 %123, 1
  store i64 %inc.i, ptr %hw_csum_err.i, align 8
  br label %igbvf_rx_checksum_adv.exit

if.end6.i:                                        ; preds = %if.end.i
  %and7.i = and i32 %staterr.034, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then9.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 15
  %124 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %125 = ptrtoint ptr %hw_csum_good.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %hw_csum_good.i, align 16
  %inc11.i = add i64 %126, 1
  store i64 %inc11.i, ptr %hw_csum_good.i, align 16
  br label %igbvf_rx_checksum_adv.exit

igbvf_rx_checksum_adv.exit:                       ; preds = %if.end10.i, %if.then5.i, %lor.lhs.false.i.igbvf_rx_checksum_adv.exit_crit_edge, %if.end78.igbvf_rx_checksum_adv.exit_crit_edge
  %call82 = tail call zeroext i16 @eth_type_trans(ptr noundef %31, ptr noundef %3) #16
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 15, i32 0, i32 18
  %127 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %call82, ptr %protocol, align 8
  %and.i9 = and i32 %staterr.034, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %igbvf_rx_checksum_adv.exit.igbvf_receive_skb.exit_crit_edge, label %if.then.i

igbvf_rx_checksum_adv.exit.igbvf_receive_skb.exit_crit_edge: ; preds = %igbvf_rx_checksum_adv.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_receive_skb.exit

if.then.i:                                        ; preds = %igbvf_rx_checksum_adv.exit
  %vlan = getelementptr inbounds %struct.anon.153, ptr %rx_desc.028, i32 0, i32 1, i32 2
  %128 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %vlan, align 2
  %130 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags.i, align 4
  %and1.i12 = and i32 %131, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i12)
  %tobool2.not.i13 = icmp eq i32 %and1.i12, 0
  %and3.i14 = and i32 %staterr.034, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i14)
  %tobool4.not.i15 = icmp eq i32 %and3.i14, 0
  %or.cond.i = or i1 %tobool4.not.i15, %tobool2.not.i13
  %132 = and i16 %129, 4095
  %133 = and i16 %129, -241
  %134 = tail call i16 @llvm.bswap.i16(i16 %133) #16
  %vid.0.i = select i1 %or.cond.i, i16 %134, i16 %132
  %conv11.i = zext i16 %vid.0.i to i32
  %div3.i.i = lshr i32 %conv11.i, 5
  %arrayidx.i.i16 = getelementptr i32, ptr %active_vlans.i, i32 %div3.i.i
  %135 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %arrayidx.i.i16, align 4
  %and.i.i17 = and i32 %conv11.i, 31
  %137 = shl nuw i32 1, %and.i.i17
  %138 = and i32 %137, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool12.not.i = icmp eq i32 %138, 0
  br i1 %tobool12.not.i, label %if.then.i.igbvf_receive_skb.exit_crit_edge, label %if.then13.i

if.then.i.igbvf_receive_skb.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_receive_skb.exit

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 15, i32 0, i32 9
  %139 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 15, i32 0, i32 10
  %140 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %vid.0.i, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 15, i32 0, i32 3
  %141 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %bf.load.i.i18 = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i19 = or i32 %bf.load.i.i18, -2147483648
  store i32 %bf.set.i.i19, ptr %vlan_present.i.i, align 2
  br label %igbvf_receive_skb.exit

igbvf_receive_skb.exit:                           ; preds = %if.then13.i, %if.then.i.igbvf_receive_skb.exit_crit_edge, %igbvf_rx_checksum_adv.exit.igbvf_receive_skb.exit_crit_edge
  %142 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rx_ring1, align 8
  %napi.i = getelementptr inbounds %struct.igbvf_ring, ptr %143, i32 0, i32 10
  %call16.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef %31) #16
  br label %next_desc

next_desc:                                        ; preds = %igbvf_receive_skb.exit, %if.then77, %if.then67
  %total_bytes.1 = phi i32 [ %total_bytes.030, %if.then77 ], [ %add80, %igbvf_receive_skb.exit ], [ %total_bytes.030, %if.then67 ]
  %total_packets.1 = phi i32 [ %total_packets.031, %if.then77 ], [ %inc81, %igbvf_receive_skb.exit ], [ %total_packets.031, %if.then67 ]
  %144 = ptrtoint ptr %upper14 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %upper14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %cleaned_count.029)
  %cmp86 = icmp sgt i32 %cleaned_count.029, 14
  br i1 %cmp86, label %if.then88, label %next_desc.if.end89_crit_edge

next_desc.if.end89_crit_edge:                     ; preds = %next_desc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end89

if.then88:                                        ; preds = %next_desc
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @igbvf_alloc_rx_buffers(ptr noundef %1, i32 noundef %inc17)
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %next_desc.if.end89_crit_edge
  %cleaned_count.1 = phi i32 [ 0, %if.then88 ], [ %inc17, %next_desc.if.end89_crit_edge ]
  %upper90 = getelementptr inbounds %struct.anon.153, ptr %arrayidx62, i32 0, i32 1
  %145 = ptrtoint ptr %upper90 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %upper90, align 8
  %147 = tail call i32 @llvm.bswap.i32(i32 %146)
  %and = and i32 %147, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end89.while.end_crit_edge, label %if.end89.while.body_crit_edge

if.end89.while.body_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end89.while.end_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end89.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %total_bytes.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %total_bytes.030, %while.body.while.end_crit_edge ], [ %total_bytes.1, %if.end89.while.end_crit_edge ]
  %total_packets.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %total_packets.031, %while.body.while.end_crit_edge ], [ %total_packets.1, %if.end89.while.end_crit_edge ]
  %i.0.lcssa = phi i32 [ %conv, %entry.while.end_crit_edge ], [ %i.032, %while.body.while.end_crit_edge ], [ %spec.store.select, %if.end89.while.end_crit_edge ]
  %conv92 = trunc i32 %i.0.lcssa to i16
  %148 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv92, ptr %next_to_clean, align 2
  %conv.i20 = and i32 %i.0.lcssa, 65535
  %next_to_use.i = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 5
  %149 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %next_to_use.i, align 4
  %conv1.i = zext i16 %150 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %150, i16 %conv92)
  %cmp.i = icmp ult i16 %150, %conv92
  br i1 %cmp.i, label %if.then.i21, label %if.end.i22

if.then.i21:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %151 = xor i32 %conv1.i, -1
  %sub7.i = add nsw i32 %conv.i20, %151
  br label %igbvf_desc_unused.exit

if.end.i22:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %count.i = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 4
  %152 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %count.i, align 8
  %154 = xor i32 %conv1.i, -1
  %add.i = add nsw i32 %conv.i20, %154
  %sub13.i = add i32 %add.i, %153
  br label %igbvf_desc_unused.exit

igbvf_desc_unused.exit:                           ; preds = %if.end.i22, %if.then.i21
  %retval.0.i = phi i32 [ %sub7.i, %if.then.i21 ], [ %sub13.i, %if.end.i22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool95.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool95.not, label %igbvf_desc_unused.exit.if.end97_crit_edge, label %if.then96

igbvf_desc_unused.exit.if.end97_crit_edge:        ; preds = %igbvf_desc_unused.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

if.then96:                                        ; preds = %igbvf_desc_unused.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @igbvf_alloc_rx_buffers(ptr noundef %1, i32 noundef %retval.0.i)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %igbvf_desc_unused.exit.if.end97_crit_edge
  %total_rx_packets = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 25
  %155 = ptrtoint ptr %total_rx_packets to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %total_rx_packets, align 32
  %add98 = add i32 %156, %total_packets.0.lcssa
  store i32 %add98, ptr %total_rx_packets, align 32
  %total_rx_bytes = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 24
  %157 = ptrtoint ptr %total_rx_bytes to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %total_rx_bytes, align 4
  %add99 = add i32 %158, %total_bytes.0.lcssa
  store i32 %add99, ptr %total_rx_bytes, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 2
  %159 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_bytes, align 8
  %add100 = add i32 %160, %total_bytes.0.lcssa
  store i32 %add100, ptr %rx_bytes, align 8
  %161 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %stats, align 8
  %add102 = add i32 %162, %total_packets.0.lcssa
  store i32 %add102, ptr %stats, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state = getelementptr i8, ptr %netdev, i32 3068
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ring = getelementptr i8, ptr %netdev, i32 3200
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 128
  %pdev1.i = getelementptr i8, ptr %netdev, i32 3320
  %4 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1.i, align 8
  %count.i = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  %mul.i = shl i32 %7, 5
  %call.i = tail call noalias ptr @vzalloc(i32 noundef %mul.i) #19
  %buffer_info.i = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %buffer_info.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.igbvf_setup_tx_resources.exit_crit_edge, label %if.end.i

if.end.igbvf_setup_tx_resources.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_setup_tx_resources.exit

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  %mul4.i = shl i32 %10, 4
  %size5.i = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 3
  %add.i = add i32 %mul4.i, 4095
  %and.i = and i32 %add.i, -4096
  %11 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i, ptr %size5.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %dma.i = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %and.i, ptr noundef %dma.i, i32 noundef 3264, i32 noundef 0) #16
  %desc.i = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %desc.i, align 4
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %if.end.i.igbvf_setup_tx_resources.exit_crit_edge, label %if.end6

if.end.i.igbvf_setup_tx_resources.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_setup_tx_resources.exit

igbvf_setup_tx_resources.exit:                    ; preds = %if.end.i.igbvf_setup_tx_resources.exit_crit_edge, %if.end.igbvf_setup_tx_resources.exit_crit_edge
  %13 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer_info.i, align 4
  tail call void @vfree(ptr noundef %14) #16
  %15 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev1.i, align 8
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str) #20
  br label %err_setup_tx

if.end6:                                          ; preds = %if.end.i
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %3, align 8
  %next_to_use.i = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %next_to_use.i, align 4
  %next_to_clean.i = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %next_to_clean.i, align 2
  %rx_ring = getelementptr i8, ptr %netdev, i32 3256
  %20 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_ring, align 8
  %call7 = tail call i32 @igbvf_setup_rx_resources(ptr noundef %add.ptr.i, ptr noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.err_setup_rx_crit_edge

if.end6.err_setup_rx_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_setup_rx

if.end10:                                         ; preds = %if.end6
  tail call fastcc void @igbvf_configure(ptr noundef %add.ptr.i)
  %call11 = tail call fastcc i32 @igbvf_request_irq(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %err_req_irq

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #16
  %22 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_ring, align 8
  %napi = getelementptr inbounds %struct.igbvf_ring, ptr %23, i32 0, i32 10
  tail call void @napi_enable(ptr noundef %napi) #16
  %hw_addr = getelementptr i8, ptr %netdev, i32 3372
  %24 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 5504
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !306
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !231
  tail call void @arm_heavy_mb() #16
  %eims_enable_mask.i = getelementptr i8, ptr %netdev, i32 4448
  %27 = ptrtoint ptr %eims_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %eims_enable_mask.i, align 32
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #16
  %30 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr, align 4
  %add.ptr.i42 = getelementptr i8, ptr %31, i32 5420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %29) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !232
  tail call void @arm_heavy_mb() #16
  %32 = ptrtoint ptr %eims_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %eims_enable_mask.i, align 32
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #16
  %35 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_addr, align 4
  %add.ptr7.i = getelementptr i8, ptr %36, i32 5424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %34) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !233
  tail call void @arm_heavy_mb() #16
  %37 = ptrtoint ptr %eims_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %eims_enable_mask.i, align 32
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #16
  %40 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_addr, align 4
  %add.ptr13.i = getelementptr i8, ptr %41, i32 5412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %39) #16, !srcloc !218
  %get_link_status = getelementptr i8, ptr %netdev, i32 3464
  %42 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %get_link_status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %43, 1
  %call19 = tail call i32 @mod_timer(ptr noundef %add.ptr.i, i32 noundef %add) #16
  br label %cleanup

err_req_irq:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_ring, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %pdev1.i43 = getelementptr inbounds %struct.igbvf_adapter, ptr %47, i32 0, i32 43
  %48 = ptrtoint ptr %pdev1.i43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev1.i43, align 8
  tail call fastcc void @igbvf_clean_rx_ring(ptr noundef %45) #16
  %buffer_info.i44 = getelementptr inbounds %struct.igbvf_ring, ptr %45, i32 0, i32 9
  %50 = ptrtoint ptr %buffer_info.i44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer_info.i44, align 4
  tail call void @vfree(ptr noundef %51) #16
  %52 = ptrtoint ptr %buffer_info.i44 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %buffer_info.i44, align 4
  %dev.i45 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.igbvf_ring, ptr %45, i32 0, i32 3
  %53 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i, align 4
  %desc.i46 = getelementptr inbounds %struct.igbvf_ring, ptr %45, i32 0, i32 1
  %55 = ptrtoint ptr %desc.i46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %desc.i46, align 4
  %dma.i47 = getelementptr inbounds %struct.igbvf_ring, ptr %45, i32 0, i32 2
  %57 = ptrtoint ptr %dma.i47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma.i47, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i45, i32 noundef %54, ptr noundef %56, i32 noundef %58, i32 noundef 0) #16
  %59 = ptrtoint ptr %desc.i46 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %desc.i46, align 4
  br label %err_setup_rx

err_setup_rx:                                     ; preds = %err_req_irq, %if.end6.err_setup_rx_crit_edge
  %err.0 = phi i32 [ %call7, %if.end6.err_setup_rx_crit_edge ], [ %call11, %err_req_irq ]
  %60 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_ring, align 128
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %pdev1.i48 = getelementptr inbounds %struct.igbvf_adapter, ptr %63, i32 0, i32 43
  %64 = ptrtoint ptr %pdev1.i48 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev1.i48, align 8
  tail call fastcc void @igbvf_clean_tx_ring(ptr noundef %61) #16
  %buffer_info.i49 = getelementptr inbounds %struct.igbvf_ring, ptr %61, i32 0, i32 9
  %66 = ptrtoint ptr %buffer_info.i49 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buffer_info.i49, align 4
  tail call void @vfree(ptr noundef %67) #16
  %68 = ptrtoint ptr %buffer_info.i49 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %buffer_info.i49, align 4
  %dev.i50 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %size.i51 = getelementptr inbounds %struct.igbvf_ring, ptr %61, i32 0, i32 3
  %69 = ptrtoint ptr %size.i51 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size.i51, align 4
  %desc.i52 = getelementptr inbounds %struct.igbvf_ring, ptr %61, i32 0, i32 1
  %71 = ptrtoint ptr %desc.i52 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %desc.i52, align 4
  %dma.i53 = getelementptr inbounds %struct.igbvf_ring, ptr %61, i32 0, i32 2
  %73 = ptrtoint ptr %dma.i53 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma.i53, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i50, i32 noundef %70, ptr noundef %72, i32 noundef %74, i32 noundef 0) #16
  %75 = ptrtoint ptr %desc.i52 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %desc.i52, align 4
  br label %err_setup_tx

err_setup_tx:                                     ; preds = %err_setup_rx, %igbvf_setup_tx_resources.exit
  %err.1 = phi i32 [ -12, %igbvf_setup_tx_resources.exit ], [ %err.0, %err_setup_rx ]
  tail call fastcc void @igbvf_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %err_setup_tx, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_setup_tx ], [ 0, %if.end14 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_close(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state = getelementptr i8, ptr %netdev, i32 3068
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !220

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1777, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @igbvf_down(ptr noundef %add.ptr.i)
  %msix_entries.i = getelementptr i8, ptr %netdev, i32 4440
  %3 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msix_entries.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.igbvf_free_irq.exit_crit_edge, label %for.body.preheader.i

if.end.igbvf_free_irq.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_free_irq.exit

for.body.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %netdev1.i = getelementptr i8, ptr %netdev, i32 3316
  %5 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev1.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %8, ptr noundef %6) #16
  %9 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msix_entries.i, align 8
  %arrayidx.1.i = getelementptr %struct.msix_entry, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i, align 4
  %call.1.i = tail call ptr @free_irq(i32 noundef %12, ptr noundef %6) #16
  %13 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msix_entries.i, align 8
  %arrayidx.2.i = getelementptr %struct.msix_entry, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.2.i, align 4
  %call.2.i = tail call ptr @free_irq(i32 noundef %16, ptr noundef %6) #16
  br label %igbvf_free_irq.exit

igbvf_free_irq.exit:                              ; preds = %for.body.preheader.i, %if.end.igbvf_free_irq.exit_crit_edge
  %tx_ring = getelementptr i8, ptr %netdev, i32 3200
  %17 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_ring, align 128
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %pdev1.i = getelementptr inbounds %struct.igbvf_adapter, ptr %20, i32 0, i32 43
  %21 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev1.i, align 8
  tail call fastcc void @igbvf_clean_tx_ring(ptr noundef %18) #16
  %buffer_info.i = getelementptr inbounds %struct.igbvf_ring, ptr %18, i32 0, i32 9
  %23 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer_info.i, align 4
  tail call void @vfree(ptr noundef %24) #16
  %25 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %buffer_info.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.igbvf_ring, ptr %18, i32 0, i32 3
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 4
  %desc.i = getelementptr inbounds %struct.igbvf_ring, ptr %18, i32 0, i32 1
  %28 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i, align 4
  %dma.i = getelementptr inbounds %struct.igbvf_ring, ptr %18, i32 0, i32 2
  %30 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 0) #16
  %32 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %desc.i, align 4
  %rx_ring = getelementptr i8, ptr %netdev, i32 3256
  %33 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_ring, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %pdev1.i26 = getelementptr inbounds %struct.igbvf_adapter, ptr %36, i32 0, i32 43
  %37 = ptrtoint ptr %pdev1.i26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev1.i26, align 8
  tail call fastcc void @igbvf_clean_rx_ring(ptr noundef %34) #16
  %buffer_info.i27 = getelementptr inbounds %struct.igbvf_ring, ptr %34, i32 0, i32 9
  %39 = ptrtoint ptr %buffer_info.i27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer_info.i27, align 4
  tail call void @vfree(ptr noundef %40) #16
  %41 = ptrtoint ptr %buffer_info.i27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %buffer_info.i27, align 4
  %dev.i28 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %size.i29 = getelementptr inbounds %struct.igbvf_ring, ptr %34, i32 0, i32 3
  %42 = ptrtoint ptr %size.i29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i29, align 4
  %desc.i30 = getelementptr inbounds %struct.igbvf_ring, ptr %34, i32 0, i32 1
  %44 = ptrtoint ptr %desc.i30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc.i30, align 4
  %dma.i31 = getelementptr inbounds %struct.igbvf_ring, ptr %34, i32 0, i32 2
  %46 = ptrtoint ptr %dma.i31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma.i31, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i28, i32 noundef %43, ptr noundef %45, i32 noundef %47, i32 noundef 0) #16
  %48 = ptrtoint ptr %desc.i30 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %desc.i30, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %netdev, i32 3068
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ring2 = getelementptr i8, ptr %netdev, i32 3200
  %3 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_ring2, align 128
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %7 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %8 to i32
  %9 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.87)
  switch i16 %6, label %if.end.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %if.end.if.then.i.i.i_crit_edge
    i16 -32512, label %if.end.if.then.i.i.i_crit_edge41
  ]

if.end.if.then.i.i.i_crit_edge41:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end.vlan_get_protocol.exit.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %vlan_get_protocol.exit.i

if.then.i.i.i:                                    ; preds = %if.end.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge41
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp.i.i.i = icmp ult i16 %8, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !221

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 598, i32 noundef 9, ptr noundef null) #16
  br label %vlan_get_protocol.exit.i

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %10 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #16
  %11 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !307
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %10, align 2, !annotation !307
  %13 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %17 = add i32 %vlan_depth.1.i.i.i, %16
  %sub.i1.i.i.i.i = sub i32 %14, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !220

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %19, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !221
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %20 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !221
  br i1 %20, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !221

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #16
  br label %vlan_get_protocol.exit.i

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #16
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %22, label %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge42
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge42: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vlan_get_protocol.exit.i

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge42
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

vlan_get_protocol.exit.i:                         ; preds = %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %if.end.vlan_get_protocol.exit.i_crit_edge
  %retval.2.i.i.i = phi i16 [ 0, %do.end.i.i.i ], [ %6, %if.end.vlan_get_protocol.exit.i_crit_edge ], [ 0, %cleanup.thread.i.i.i ], [ %22, %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge ]
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %cleanup

if.end.i:                                         ; preds = %vlan_get_protocol.exit.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %32 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %33 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_ring2, align 128
  %next_to_clean.i.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %next_to_clean.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %next_to_clean.i.i.i, align 2
  %conv.i.i95.i = zext i16 %36 to i32
  %next_to_use.i.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %34, i32 0, i32 5
  %37 = ptrtoint ptr %next_to_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next_to_use.i.i.i, align 4
  %conv1.i.i.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp.i.i96.i = icmp ugt i16 %36, %38
  br i1 %cmp.i.i96.i, label %if.then.i.i97.i, label %if.end.i.i.i

if.then.i.i97.i:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %39 = xor i32 %conv1.i.i.i, -1
  %sub7.i.i.i = add nsw i32 %39, %conv.i.i95.i
  br label %igbvf_desc_unused.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %count.i.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %34, i32 0, i32 4
  %40 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count.i.i.i, align 8
  %42 = xor i32 %conv1.i.i.i, -1
  %add.i.i98.i = add nsw i32 %42, %conv.i.i95.i
  %sub13.i.i.i = add i32 %add.i.i98.i, %41
  br label %igbvf_desc_unused.exit.i.i

igbvf_desc_unused.exit.i.i:                       ; preds = %if.end.i.i.i, %if.then.i.i97.i
  %retval.0.i.i.i = phi i32 [ %sub7.i.i.i, %if.then.i.i97.i ], [ %sub13.i.i.i, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %add.i)
  %cmp.not.i.i = icmp slt i32 %retval.0.i.i.i, %add.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %igbvf_desc_unused.exit.i.i.if.end9.i_crit_edge

igbvf_desc_unused.exit.i.i.if.end9.i_crit_edge:   ; preds = %igbvf_desc_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.end.i.i:                                       ; preds = %igbvf_desc_unused.exit.i.i
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %43 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_tx.i.i.i.i, align 128
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %44, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i.i) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !308
  %45 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_ring2, align 128
  %next_to_clean.i15.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %next_to_clean.i15.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %next_to_clean.i15.i.i, align 2
  %conv.i16.i.i = zext i16 %48 to i32
  %next_to_use.i17.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %next_to_use.i17.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %next_to_use.i17.i.i, align 4
  %conv1.i18.i.i = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp.i19.i.i = icmp ugt i16 %48, %50
  br i1 %cmp.i19.i.i, label %if.then.i21.i.i, label %if.end.i25.i.i

if.then.i21.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %51 = xor i32 %conv1.i18.i.i, -1
  %sub7.i20.i.i = add nsw i32 %51, %conv.i16.i.i
  br label %igbvf_desc_unused.exit27.i.i

if.end.i25.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %count.i22.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %46, i32 0, i32 4
  %52 = ptrtoint ptr %count.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count.i22.i.i, align 8
  %54 = xor i32 %conv1.i18.i.i, -1
  %add.i23.i.i = add nsw i32 %54, %conv.i16.i.i
  %sub13.i24.i.i = add i32 %add.i23.i.i, %53
  br label %igbvf_desc_unused.exit27.i.i

igbvf_desc_unused.exit27.i.i:                     ; preds = %if.end.i25.i.i, %if.then.i21.i.i
  %retval.0.i26.i.i = phi i32 [ %sub7.i20.i.i, %if.then.i21.i.i ], [ %sub13.i24.i.i, %if.end.i25.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i26.i.i, i32 %add.i)
  %cmp7.i.i = icmp slt i32 %retval.0.i26.i.i, %add.i
  br i1 %cmp7.i.i, label %igbvf_desc_unused.exit27.i.i.cleanup_crit_edge, label %if.end9.i.i

igbvf_desc_unused.exit27.i.i.cleanup_crit_edge:   ; preds = %igbvf_desc_unused.exit27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9.i.i:                                      ; preds = %igbvf_desc_unused.exit27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_tx.i.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %56) #16
  %restart_queue.i.i = getelementptr i8, ptr %netdev, i32 3204
  %57 = ptrtoint ptr %restart_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %restart_queue.i.i, align 4
  %inc.i.i = add i32 %58, 1
  store i32 %inc.i.i, ptr %restart_queue.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9.i.i, %igbvf_desc_unused.exit.i.i.if.end9.i_crit_edge
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %59 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool10.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool10.not.i, label %if.end9.i.if.end14.i_crit_edge, label %if.then11.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %60 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vlan_tci.i, align 2
  %conv12.i = zext i16 %61 to i32
  %shl.i = shl nuw i32 %conv12.i, 16
  %or13.i = or i32 %shl.i, 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end14.i_crit_edge
  %tx_flags.0.i = phi i32 [ %or13.i, %if.then11.i ], [ 0, %if.end9.i.if.end14.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %retval.2.i.i.i)
  %cmp16.i = icmp eq i16 %retval.2.i.i.i, 2048
  %or19.i = or i32 %tx_flags.0.i, 8
  %spec.select.i = select i1 %cmp16.i, i32 %or19.i, i32 %tx_flags.0.i
  %next_to_use.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 5
  %62 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %next_to_use.i, align 4
  %conv21.i = zext i16 %63 to i32
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %64 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %65 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %65)
  %cmp.not.i99.i = icmp eq i16 %65, 1536
  br i1 %cmp.not.i99.i, label %if.end.i100.i, label %if.end14.i.csum_failed.i.i_crit_edge

if.end14.i.csum_failed.i.i_crit_edge:             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %csum_failed.i.i

if.end.i100.i:                                    ; preds = %if.end14.i
  %66 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.i.not.i.i = icmp eq i16 %69, 0
  br i1 %tobool.i.not.i.i, label %if.end3.i111.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i100.i
  %cloned.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %70 = ptrtoint ptr %cloned.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i.i.i.i = load i8, ptr %cloned.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge, label %skb_header_cloned.exit.i.i.i

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

skb_header_cloned.exit.i.i.i:                     ; preds = %if.end3.i.i
  %dataref1.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i, i32 noundef 4) #16
  %71 = ptrtoint ptr %dataref1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %dataref1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %72, 65535
  %shr.i.i84.i.i = ashr i32 %72, 16
  %sub.i.i.i.i = sub nsw i32 %and.i.i.i.i, %shr.i.i84.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %sub.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %skb_header_cloned.exit.i.i.i.if.end8.i.i_crit_edge, label %skb_cow_head.exit.i.i

skb_header_cloned.exit.i.i.i.if.end8.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

skb_cow_head.exit.i.i:                            ; preds = %skb_header_cloned.exit.i.i.i
  %call4.i.i.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i.i.i, 0
  br i1 %cmp5.i.i, label %if.then27.i, label %skb_cow_head.exit.i.i.if.end8.i.i_crit_edge

skb_cow_head.exit.i.i.if.end8.i.i_crit_edge:      ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %skb_cow_head.exit.i.i.if.end8.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.if.end8.i.i_crit_edge, %if.end3.i.i.if.end8.i.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %73 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %75 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i101.i = zext i16 %76 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %74, i32 %conv.i.i101.i
  %77 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %77, align 8
  %conv.i86.i.i = zext i16 %79 to i32
  %add.ptr.i87.i.i = getelementptr i8, ptr %74, i32 %conv.i86.i.i
  %80 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load11.i.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.lshr12.mask.i.i = and i8 %bf.load11.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr12.mask.i.i)
  %cmp14.i.i = icmp eq i8 %bf.lshr12.mask.i.i, 64
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.else.i.i

if.then16.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear19.i.i = shl i8 %bf.load11.i.i, 2
  %81 = and i8 %bf.clear19.i.i, 60
  %mul.i.i = zext i8 %81 to i32
  %add.ptr.i102.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i87.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr.i102.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call21.i.i = call i32 @csum_partial(ptr noundef %add.ptr.i102.i, i32 noundef %sub.ptr.sub.i.i, i32 noundef 0) #16
  %82 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call21.i.i) #22, !srcloc !309
  %neg.i91.i.i = xor i32 %82, -1
  %shr.i.i.i = lshr i32 %neg.i91.i.i, 16
  %conv.i92.i.i = trunc i32 %shr.i.i.i to i16
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 7
  %83 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i92.i.i, ptr %check.i.i, align 2
  %tot_len.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %tot_len.i.i, align 2
  br label %if.then30.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %payload_len.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %payload_len.i.i, align 4
  %.pre.i.i = ptrtoint ptr %add.ptr.i87.i.i to i32
  br label %if.then30.i

if.then27.i:                                      ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %cleanup

if.then30.i:                                      ; preds = %if.else.i.i, %if.then16.i.i
  %sub.ptr.lhs.cast24.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.else.i.i ], [ %sub.ptr.lhs.cast.i.i, %if.then16.i.i ]
  %type_tucmd.0.i.i = phi i32 [ 538970112, %if.else.i.i ], [ 538971136, %if.then16.i.i ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %86 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.rhs.cast25.i.i = ptrtoint ptr %87 to i32
  %sub.ptr.sub26.i.i = sub i32 %sub.ptr.lhs.cast24.pre-phi.i.i, %sub.ptr.rhs.cast25.i.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i87.i.i, i32 0, i32 4
  %88 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load27.i.i = load i16, ptr %doff.i.i, align 4
  %89 = lshr i16 %bf.load27.i.i, 10
  %90 = and i16 %89, 60
  %mul30.i.i = zext i16 %90 to i32
  %add.i.i = add i32 %sub.ptr.sub26.i.i, %mul30.i.i
  %91 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len.i, align 4
  %sub.i.i = sub i32 %92, %sub.ptr.sub26.i.i
  %check32.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i87.i.i, i32 0, i32 6
  %93 = ptrtoint ptr %check32.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %check32.i.i, align 2
  %conv.i.i.i.i = zext i16 %94 to i32
  %neg.i.i.i = xor i32 %conv.i.i.i.i, -1
  %add.i.i.i.i = add i32 %sub.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %neg.i.i.i
  %conv.i4.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i4.i.i.i
  %95 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i.i) #22, !srcloc !309
  %neg.i.i.i.i = xor i32 %95, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i5.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %96 = ptrtoint ptr %check32.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i5.i.i.i, ptr %check32.i.i, align 2
  %conv33.i.i = and i32 %add.i.i, 255
  %sub34.i.i = sub i32 %conv33.i.i, %sub.ptr.sub26.i.i
  %shl.i.i = shl i32 %sub34.i.i, 8
  %97 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %gso_size.i.i, align 4
  %conv36.i.i = zext i16 %100 to i32
  %shl37.i.i = shl nuw i32 %conv36.i.i, 16
  %or38.i.i = or i32 %shl37.i.i, %shl.i.i
  %sub.ptr.rhs.cast40.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub41.i.i = sub i32 %sub.ptr.lhs.cast24.pre-phi.i.i, %sub.ptr.rhs.cast40.i.i
  %101 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.rhs.cast44.i.i = ptrtoint ptr %102 to i32
  %sub.ptr.sub45.i.i = sub i32 %sub.ptr.rhs.cast40.i.i, %sub.ptr.rhs.cast44.i.i
  %shl46.i.i = shl i32 %sub.ptr.sub45.i.i, 9
  %and.i.i = and i32 %spec.select.i, -65536
  %or47.i.i = or i32 %sub.ptr.sub41.i.i, %and.i.i
  %or48.i.i = or i32 %or47.i.i, %shl46.i.i
  %103 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %next_to_use.i, align 4
  %desc.i.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 1
  %105 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %desc.i.i.i, align 4
  %buffer_info1.i.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 9
  %107 = ptrtoint ptr %buffer_info1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %buffer_info1.i.i.i, align 4
  %inc.i.i.i = add i16 %104, 1
  %conv.i93.i.i = zext i16 %inc.i.i.i to i32
  %count.i.i104.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 4
  %109 = ptrtoint ptr %count.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %count.i.i104.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %conv.i93.i.i)
  %cmp.i.i105.i = icmp ugt i32 %110, %conv.i93.i.i
  %spec.select.i.i.i = select i1 %cmp.i.i105.i, i16 %inc.i.i.i, i16 0
  %idxprom.i.i.i = zext i16 %104 to i32
  %arrayidx3.i.i.i = getelementptr %struct.igbvf_buffer, ptr %108, i32 %idxprom.i.i.i
  %arrayidx.i.i.i = getelementptr %union.igbvf_desc, ptr %106, i32 %idxprom.i.i.i
  %111 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %spec.select.i.i.i, ptr %next_to_use.i, align 4
  %112 = call i32 @llvm.bswap.i32(i32 %or48.i.i) #16
  %113 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx.i.i.i, align 4
  %seqnum_seed.i.i.i = getelementptr inbounds %struct.e1000_adv_tx_context_desc, ptr %arrayidx.i.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %seqnum_seed.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %seqnum_seed.i.i.i, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %type_tucmd.0.i.i) #16
  %type_tucmd_mlhl.i.i.i = getelementptr inbounds %struct.e1000_adv_tx_context_desc, ptr %arrayidx.i.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %type_tucmd_mlhl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %type_tucmd_mlhl.i.i.i, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %or38.i.i) #16
  %mss_l4len_idx9.i.i.i = getelementptr inbounds %struct.e1000_adv_tx_context_desc, ptr %arrayidx.i.i.i, i32 0, i32 3
  %118 = ptrtoint ptr %mss_l4len_idx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %mss_l4len_idx9.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %119 = load volatile i32, ptr @jiffies, align 128
  %120 = getelementptr %struct.igbvf_buffer, ptr %108, i32 %idxprom.i.i.i, i32 2
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %119, ptr %120, align 8
  %122 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %arrayidx3.i.i.i, align 8
  %or31.i = or i32 %spec.select.i, 4
  br label %if.end43.i

csum_failed.i.i:                                  ; preds = %sw.default.i.i, %if.end14.i.csum_failed.i.i_crit_edge
  %and.i110.i = and i32 %spec.select.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110.i)
  %tobool.not.i.i = icmp eq i32 %and.i110.i, 0
  br i1 %tobool.not.i.i, label %csum_failed.i.i.if.end43.i_crit_edge, label %csum_failed.i.i.land.lhs.true.i_crit_edge

csum_failed.i.i.land.lhs.true.i_crit_edge:        ; preds = %csum_failed.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i

csum_failed.i.i.if.end43.i_crit_edge:             ; preds = %csum_failed.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43.i

if.end3.i111.i:                                   ; preds = %if.end.i100.i
  %123 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %csum_offset.i.i = getelementptr inbounds %struct.anon.60, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %csum_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %csum_offset.i.i, align 2
  %126 = zext i16 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %125, label %if.end3.i111.i.sw.default.i.i_crit_edge [
    i16 16, label %sw.bb.i.i
    i16 6, label %if.end3.i111.i.sw.epilog.i.i_crit_edge
    i16 8, label %sw.bb5.i.i
  ]

if.end3.i111.i.sw.epilog.i.i_crit_edge:           ; preds = %if.end3.i111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i.i

if.end3.i111.i.sw.default.i.i_crit_edge:          ; preds = %if.end3.i111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.end3.i111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.end3.i111.i
  %127 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.i.not.i112.i = icmp eq i32 %127, 0
  br i1 %tobool.i.not.i112.i, label %sw.bb5.i.i.sw.default.i.i_crit_edge, label %sw.bb5.i.i.sw.epilog.i.i_crit_edge

sw.bb5.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i.i

sw.bb5.i.i.sw.default.i.i_crit_edge:              ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default.i.i

sw.default.i.i:                                   ; preds = %sw.bb5.i.i.sw.default.i.i_crit_edge, %if.end3.i111.i.sw.default.i.i_crit_edge
  %call8.i.i = call i32 @skb_checksum_help(ptr noundef %skb) #16
  br label %csum_failed.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb5.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i, %if.end3.i111.i.sw.epilog.i.i_crit_edge
  %type_tucmd.0.i113.i = phi i32 [ 0, %if.end3.i111.i.sw.epilog.i.i_crit_edge ], [ 2048, %sw.bb.i.i ], [ 4096, %sw.bb5.i.i.sw.epilog.i.i_crit_edge ]
  %128 = ptrtoint ptr %123 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %123, align 8
  %conv.i.i114.i = zext i16 %129 to i32
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %130 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %131 to i32
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %132 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i115.i = zext i16 %133 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %131, i32 %conv.i.i.i115.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.i.i116.i = add i32 %sub.ptr.rhs.cast.i.i.i.i, %conv.i.i114.i
  %sub.i117.i = sub i32 %sub.i.i116.i, %sub.ptr.lhs.cast.i.i.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i.i, %csum_failed.i.i.land.lhs.true.i_crit_edge
  %vlan_macip_lens.0.i.i = phi i32 [ 0, %csum_failed.i.i.land.lhs.true.i_crit_edge ], [ %sub.i117.i, %sw.epilog.i.i ]
  %type_tucmd.1.i.i = phi i32 [ 0, %csum_failed.i.i.land.lhs.true.i_crit_edge ], [ %type_tucmd.0.i113.i, %sw.epilog.i.i ]
  %head.i.i2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %134 = ptrtoint ptr %head.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %head.i.i2.i.i, align 8
  %network_header.i.i3.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %136 = ptrtoint ptr %network_header.i.i3.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %network_header.i.i3.i.i, align 4
  %conv.i.i4.i.i = zext i16 %137 to i32
  %add.ptr.i.i5.i.i = getelementptr i8, ptr %135, i32 %conv.i.i4.i.i
  %data.i6.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %138 = ptrtoint ptr %data.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data.i6.i.i, align 4
  %sub.ptr.lhs.cast.i7.i.i = ptrtoint ptr %add.ptr.i.i5.i.i to i32
  %sub.ptr.rhs.cast.i8.i.i = ptrtoint ptr %139 to i32
  %sub.ptr.sub.i9.i.i = sub i32 %sub.ptr.lhs.cast.i7.i.i, %sub.ptr.rhs.cast.i8.i.i
  %shl.i118.i = shl i32 %sub.ptr.sub.i9.i.i, 9
  %and12.i.i = and i32 %spec.select.i, -65536
  %or.i.i = or i32 %vlan_macip_lens.0.i.i, %and12.i.i
  %or13.i.i = or i32 %or.i.i, %shl.i118.i
  %140 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %next_to_use.i, align 4
  %desc.i.i120.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 1
  %142 = ptrtoint ptr %desc.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %desc.i.i120.i, align 4
  %buffer_info1.i.i121.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 9
  %144 = ptrtoint ptr %buffer_info1.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %buffer_info1.i.i121.i, align 4
  %inc.i.i122.i = add i16 %141, 1
  %conv.i10.i.i = zext i16 %inc.i.i122.i to i32
  %count.i.i123.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 4
  %146 = ptrtoint ptr %count.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %count.i.i123.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %conv.i10.i.i)
  %cmp.i.i124.i = icmp ugt i32 %147, %conv.i10.i.i
  %spec.select.i.i125.i = select i1 %cmp.i.i124.i, i16 %inc.i.i122.i, i16 0
  %idxprom.i.i126.i = zext i16 %141 to i32
  %arrayidx3.i.i127.i = getelementptr %struct.igbvf_buffer, ptr %145, i32 %idxprom.i.i126.i
  %arrayidx.i.i128.i = getelementptr %union.igbvf_desc, ptr %143, i32 %idxprom.i.i126.i
  %148 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %spec.select.i.i125.i, ptr %next_to_use.i, align 4
  %or.i.i.i = or i32 %type_tucmd.1.i.i, 538968064
  %149 = call i32 @llvm.bswap.i32(i32 %or13.i.i) #16
  %150 = ptrtoint ptr %arrayidx.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %arrayidx.i.i128.i, align 4
  %seqnum_seed.i.i129.i = getelementptr inbounds %struct.e1000_adv_tx_context_desc, ptr %arrayidx.i.i128.i, i32 0, i32 1
  %151 = ptrtoint ptr %seqnum_seed.i.i129.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %seqnum_seed.i.i129.i, align 4
  %152 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #16
  %type_tucmd_mlhl.i.i130.i = getelementptr inbounds %struct.e1000_adv_tx_context_desc, ptr %arrayidx.i.i128.i, i32 0, i32 2
  %153 = ptrtoint ptr %type_tucmd_mlhl.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %type_tucmd_mlhl.i.i130.i, align 4
  %mss_l4len_idx9.i.i131.i = getelementptr inbounds %struct.e1000_adv_tx_context_desc, ptr %arrayidx.i.i128.i, i32 0, i32 3
  %154 = ptrtoint ptr %mss_l4len_idx9.i.i131.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %mss_l4len_idx9.i.i131.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %155 = load volatile i32, ptr @jiffies, align 128
  %156 = getelementptr %struct.igbvf_buffer, ptr %145, i32 %idxprom.i.i126.i, i32 2
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %155, ptr %156, align 8
  %158 = ptrtoint ptr %arrayidx3.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %arrayidx3.i.i127.i, align 8
  %159 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %bf.load34.i = load i16, ptr %ip_summed.i.i, align 8
  %160 = and i16 %bf.load34.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %160)
  %cmp38.i = icmp eq i16 %160, 1536
  %or41.i = zext i1 %cmp38.i to i32
  %spec.select94.i = or i32 %spec.select.i, %or41.i
  br label %if.end43.i

if.end43.i:                                       ; preds = %land.lhs.true.i, %csum_failed.i.i.if.end43.i_crit_edge, %if.then30.i
  %hdr_len.0.ph208.i = phi i32 [ %conv33.i.i, %if.then30.i ], [ 0, %land.lhs.true.i ], [ 0, %csum_failed.i.i.if.end43.i_crit_edge ]
  %tx_flags.2.i = phi i32 [ %or31.i, %if.then30.i ], [ %spec.select94.i, %land.lhs.true.i ], [ %spec.select.i, %csum_failed.i.i.if.end43.i_crit_edge ]
  %pdev1.i.i = getelementptr i8, ptr %netdev, i32 3320
  %161 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %len.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %163 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i133.i = sub i32 %162, %164
  %165 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %next_to_use.i, align 4
  %conv.i.i = zext i16 %166 to i32
  %buffer_info2.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i.i133.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i133.i, 65535
  br i1 %cmp.i.i, label %do.body5.i.i, label %do.end10.i.i, !prof !221

do.body5.i.i:                                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/igbvf/netdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2157, 0\0A.popsection", ""() #16, !srcloc !310
  unreachable

do.end10.i.i:                                     ; preds = %if.end43.i
  %167 = ptrtoint ptr %pdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pdev1.i.i, align 8
  %169 = ptrtoint ptr %buffer_info2.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %buffer_info2.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.igbvf_buffer, ptr %170, i32 %conv.i.i
  %conv11.i.i = trunc i32 %sub.i.i133.i to i16
  %171 = getelementptr %struct.igbvf_buffer, ptr %170, i32 %conv.i.i, i32 2
  %length.i.i = getelementptr inbounds %struct.anon.163, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv11.i.i, ptr %length.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %173 = load volatile i32, ptr @jiffies, align 128
  %174 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %171, align 8
  %mapped_as_page.i.i = getelementptr inbounds %struct.anon.163, ptr %171, i32 0, i32 3
  %175 = ptrtoint ptr %mapped_as_page.i.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %mapped_as_page.i.i, align 2
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 44
  %data.i134.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %176 = ptrtoint ptr %data.i134.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data.i134.i, align 4
  %call.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %177) #16
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %do.end10.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i136.i, !prof !220

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i136.i:                                 ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %dev.i.i) #16
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 44, i32 3
  %178 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i135.i = icmp eq ptr %179, null
  br i1 %tobool.not.i.i.i135.i, label %if.end.i.i.i.i, label %if.then.i.i136.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i136.i.dev_name.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i136.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i136.i
  call void @__sanitizer_cov_trace_pc() #18
  %180 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i136.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %181, %if.end.i.i.i.i ], [ %179, %if.then.i.i136.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #16
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %182 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 -1, ptr %arrayidx.i.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef -1) #16
  br label %do.end73.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %do.end10.i.i
  call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %177, i32 noundef %sub.i.i133.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %183 = load ptr, ptr @mem_map, align 4
  %184 = ptrtoint ptr %177 to i32
  %sub.i147.i.i = add i32 %184, 1073741824
  %shr.i.i137.i = lshr i32 %sub.i147.i.i, 12
  %add.ptr.i.i138.i = getelementptr %struct.page, ptr %183, i32 %shr.i.i137.i
  %and.i.i.i = and i32 %184, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i138.i, i32 noundef %and.i.i.i, i32 noundef %sub.i.i133.i, i32 noundef 1, i32 noundef 0) #16
  %185 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %call41.i.i.i, ptr %arrayidx.i.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef %call41.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i139.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i139.i, label %dma_map_single_attrs.exit.i.i.do.end73.i.i_crit_edge, label %for.cond.preheader.i.i

dma_map_single_attrs.exit.i.i.do.end73.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end73.i.i

for.cond.preheader.i.i:                           ; preds = %dma_map_single_attrs.exit.i.i
  %186 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %end.i.i, align 4
  %nr_frags160.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %nr_frags160.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %nr_frags160.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %cmp21162.not.i.i = icmp eq i8 %189, 0
  br i1 %cmp21162.not.i.i, label %for.cond.preheader.i.i.if.then46.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.then46.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %count24.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %190 = phi ptr [ %187, %for.body.lr.ph.i.i ], [ %208, %for.inc.i.i.for.body.i.i_crit_edge ]
  %f.0165.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc66.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0164.i.i = phi i32 [ %conv.i.i, %for.body.lr.ph.i.i ], [ %spec.store.select.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %count.0163.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %phi.bo.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %inc23.i.i = add i32 %i.0164.i.i, 1
  %191 = ptrtoint ptr %count24.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %count24.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc23.i.i, i32 %192)
  %cmp25.i.i = icmp eq i32 %inc23.i.i, %192
  %spec.store.select.i.i = select i1 %cmp25.i.i, i32 0, i32 %inc23.i.i
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %190, i32 0, i32 12, i32 %f.0165.i.i, i32 1
  %193 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %194)
  %cmp35.i.i = icmp ugt i32 %194, 65535
  br i1 %cmp35.i.i, label %do.body44.i.i, label %do.end52.i.i, !prof !221

do.body44.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/igbvf/netdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2179, 0\0A.popsection", ""() #16, !srcloc !311
  unreachable

do.end52.i.i:                                     ; preds = %for.body.i.i
  %195 = ptrtoint ptr %buffer_info2.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %buffer_info2.i.i, align 4
  %arrayidx33.i.i = getelementptr %struct.igbvf_buffer, ptr %196, i32 %spec.store.select.i.i
  %arrayidx30.i.i = getelementptr %struct.skb_shared_info, ptr %190, i32 0, i32 12, i32 %f.0165.i.i
  %conv53.i.i = trunc i32 %194 to i16
  %197 = getelementptr %struct.igbvf_buffer, ptr %196, i32 %spec.store.select.i.i, i32 2
  %length54.i.i = getelementptr inbounds %struct.anon.163, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %length54.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv53.i.i, ptr %length54.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %199 = load volatile i32, ptr @jiffies, align 128
  %200 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %197, align 8
  %mapped_as_page56.i.i = getelementptr inbounds %struct.anon.163, ptr %197, i32 0, i32 3
  %201 = ptrtoint ptr %mapped_as_page56.i.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 1, ptr %mapped_as_page56.i.i, align 2
  %202 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx30.i.i, align 4
  %bv_offset.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %190, i32 0, i32 12, i32 %f.0165.i.i, i32 2
  %204 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %call2.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %203, i32 noundef %205, i32 noundef %194, i32 noundef 1, i32 noundef 0) #16
  %206 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %call2.i.i.i, ptr %arrayidx33.i.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef %call2.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp.i149.not.i.i = icmp eq i32 %call2.i.i.i, -1
  br i1 %cmp.i149.not.i.i, label %do.end52.i.i.do.end73.i.i_crit_edge, label %for.inc.i.i

do.end52.i.i.do.end73.i.i_crit_edge:              ; preds = %do.end52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end73.i.i

for.inc.i.i:                                      ; preds = %do.end52.i.i
  %inc66.i.i = add nuw nsw i32 %f.0165.i.i, 1
  %phi.bo.i.i = add nuw nsw i32 %count.0163.i.i, 1
  %207 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %nr_frags.i.i, align 2
  %conv20.i.i = zext i8 %210 to i32
  %cmp21.i.i = icmp ult i32 %inc66.i.i, %conv20.i.i
  br i1 %cmp21.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.then46.i_crit_edge

for.inc.i.i.if.then46.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

do.end73.i.i:                                     ; preds = %do.end52.i.i.do.end73.i.i_crit_edge, %dma_map_single_attrs.exit.i.i.do.end73.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  %buffer_info.0.i.i = phi ptr [ %arrayidx.i.i, %dma_map_single_attrs.exit.i.i.do.end73.i.i_crit_edge ], [ %arrayidx.i.i, %dma_map_single_attrs.exit.thread.i.i ], [ %arrayidx33.i.i, %do.end52.i.i.do.end73.i.i_crit_edge ]
  %count.1.i.i = phi i32 [ 0, %dma_map_single_attrs.exit.i.i.do.end73.i.i_crit_edge ], [ 0, %dma_map_single_attrs.exit.thread.i.i ], [ %count.0163.i.i, %do.end52.i.i.do.end73.i.i_crit_edge ]
  %i.1.i.i = phi i32 [ %conv.i.i, %dma_map_single_attrs.exit.i.i.do.end73.i.i_crit_edge ], [ %conv.i.i, %dma_map_single_attrs.exit.thread.i.i ], [ %spec.store.select.i.i, %do.end52.i.i.do.end73.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.61) #20
  %211 = ptrtoint ptr %buffer_info.0.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %buffer_info.0.i.i, align 8
  %212 = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.0.i.i, i32 0, i32 2
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %212, align 8
  %length77.i.i = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.0.i.i, i32 0, i32 2, i32 0, i32 1
  %214 = ptrtoint ptr %length77.i.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 0, ptr %length77.i.i, align 8
  %mapped_as_page78.i.i = getelementptr inbounds %struct.anon.163, ptr %212, i32 0, i32 3
  %215 = ptrtoint ptr %mapped_as_page78.i.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %mapped_as_page78.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count.1.i.i)
  %216 = icmp ult i32 %count.1.i.i, 2
  br i1 %216, label %do.end73.i.i.if.else49.i_crit_edge, label %while.body.lr.ph.i.i

do.end73.i.i.if.else49.i_crit_edge:               ; preds = %do.end73.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else49.i

while.body.lr.ph.i.i:                             ; preds = %do.end73.i.i
  %dec.i.i = add nsw i32 %count.1.i.i, -1
  %count87.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %igbvf_put_txbuf.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %dec82170.in.i.i = phi i32 [ %dec.i.i, %while.body.lr.ph.i.i ], [ %dec82170.i.i, %igbvf_put_txbuf.exit.i.i.while.body.i.i_crit_edge ]
  %i.2169.i.i = phi i32 [ %i.1.i.i, %while.body.lr.ph.i.i ], [ %dec89.i.i, %igbvf_put_txbuf.exit.i.i.while.body.i.i_crit_edge ]
  %dec82170.i.i = add nsw i32 %dec82170.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2169.i.i)
  %cmp84.i.i = icmp eq i32 %i.2169.i.i, 0
  br i1 %cmp84.i.i, label %if.then86.i.i, label %while.body.i.i.if.end88.i.i_crit_edge

while.body.i.i.if.end88.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88.i.i

if.then86.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %217 = ptrtoint ptr %count87.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %count87.i.i, align 8
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.then86.i.i, %while.body.i.i.if.end88.i.i_crit_edge
  %i.3.i.i = phi i32 [ %218, %if.then86.i.i ], [ %i.2169.i.i, %while.body.i.i.if.end88.i.i_crit_edge ]
  %dec89.i.i = add i32 %i.3.i.i, -1
  %219 = ptrtoint ptr %buffer_info2.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %buffer_info2.i.i, align 4
  %arrayidx91.i.i = getelementptr %struct.igbvf_buffer, ptr %220, i32 %dec89.i.i
  %221 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx91.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool.not.i.i140.i = icmp eq i32 %222, 0
  br i1 %tobool.not.i.i140.i, label %if.end88.i.i.if.end10.i.i.i_crit_edge, label %if.then.i151.i.i

if.end88.i.i.if.end10.i.i.i_crit_edge:            ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i.i.i

if.then.i151.i.i:                                 ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %223 = ptrtoint ptr %pdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %pdev1.i.i, align 8
  %dev5.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %224, i32 0, i32 44
  %length7.i.i.i = getelementptr %struct.igbvf_buffer, ptr %220, i32 %dec89.i.i, i32 2, i32 0, i32 1
  %225 = ptrtoint ptr %length7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %length7.i.i.i, align 8
  %conv8.i.i.i = zext i16 %226 to i32
  call void @dma_unmap_page_attrs(ptr noundef %dev5.i.i.i, i32 noundef %222, i32 noundef %conv8.i.i.i, i32 noundef 1, i32 noundef 0) #16
  %227 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %arrayidx91.i.i, align 8
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then.i151.i.i, %if.end88.i.i.if.end10.i.i.i_crit_edge
  %skb.i.i.i = getelementptr %struct.igbvf_buffer, ptr %220, i32 %dec89.i.i, i32 1
  %228 = ptrtoint ptr %skb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %skb.i.i.i, align 4
  %tobool11.not.i.i.i = icmp eq ptr %229, null
  br i1 %tobool11.not.i.i.i, label %if.end10.i.i.i.igbvf_put_txbuf.exit.i.i_crit_edge, label %if.then12.i.i.i

if.end10.i.i.i.igbvf_put_txbuf.exit.i.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_put_txbuf.exit.i.i

if.then12.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__dev_kfree_skb_any(ptr noundef nonnull %229, i32 noundef 1) #16
  %230 = ptrtoint ptr %skb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %skb.i.i.i, align 4
  br label %igbvf_put_txbuf.exit.i.i

igbvf_put_txbuf.exit.i.i:                         ; preds = %if.then12.i.i.i, %if.end10.i.i.i.igbvf_put_txbuf.exit.i.i_crit_edge
  %231 = getelementptr %struct.igbvf_buffer, ptr %220, i32 %dec89.i.i, i32 2
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %231, align 8
  %tobool83.not.i.i = icmp eq i32 %dec82170.i.i, 0
  br i1 %tobool83.not.i.i, label %igbvf_put_txbuf.exit.i.i.if.else49.i_crit_edge, label %igbvf_put_txbuf.exit.i.i.while.body.i.i_crit_edge

igbvf_put_txbuf.exit.i.i.while.body.i.i_crit_edge: ; preds = %igbvf_put_txbuf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

igbvf_put_txbuf.exit.i.i.if.else49.i_crit_edge:   ; preds = %igbvf_put_txbuf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else49.i

if.then46.i:                                      ; preds = %for.inc.i.i.if.then46.i_crit_edge, %for.cond.preheader.i.i.if.then46.i_crit_edge
  %count.0.lcssa.i.i = phi i32 [ 1, %for.cond.preheader.i.i.if.then46.i_crit_edge ], [ %phi.bo.i.i, %for.inc.i.i.if.then46.i_crit_edge ]
  %i.0.lcssa.i.i = phi i32 [ %conv.i.i, %for.cond.preheader.i.i.if.then46.i_crit_edge ], [ %spec.store.select.i.i, %for.inc.i.i.if.then46.i_crit_edge ]
  %233 = ptrtoint ptr %buffer_info2.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %buffer_info2.i.i, align 4
  %skb69.i.i = getelementptr %struct.igbvf_buffer, ptr %234, i32 %i.0.lcssa.i.i, i32 1
  %235 = ptrtoint ptr %skb69.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %skb, ptr %skb69.i.i, align 4
  %236 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %len.i, align 4
  %and.i142.i = and i32 %tx_flags.2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142.i)
  %tobool.not.i143.i = icmp eq i32 %and.i142.i, 0
  %spec.select.i.i = select i1 %tobool.not.i143.i, i32 573571072, i32 1647312896
  %and1.i144.i = and i32 %tx_flags.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i144.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i144.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i145.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #18
  %or4.i.i = or i32 %spec.select.i.i, -2147483648
  %and6.i.i = and i32 %tx_flags.2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %spec.select67.i.i = select i1 %tobool7.not.i.i, i32 512, i32 768
  br label %while.body.lr.ph.i150.i

if.else.i145.i:                                   ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #18
  %and11.i.i = shl i32 %tx_flags.2.i, 9
  %238 = and i32 %and11.i.i, 512
  br label %while.body.lr.ph.i150.i

while.body.lr.ph.i150.i:                          ; preds = %if.else.i145.i, %if.then3.i.i
  %olinfo_status.0.i.i = phi i32 [ %spec.select67.i.i, %if.then3.i.i ], [ %238, %if.else.i145.i ]
  %cmd_type_len.1.i.i = phi i32 [ %or4.i.i, %if.then3.i.i ], [ %spec.select.i.i, %if.else.i145.i ]
  %239 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %next_to_use.i, align 4
  %conv18.i.i = zext i16 %240 to i32
  %sub.i148.i = sub i32 %237, %hdr_len.0.ph208.i
  %shl.i149.i = shl i32 %sub.i148.i, 14
  %or17.i.i = or i32 %olinfo_status.0.i.i, %shl.i149.i
  %desc.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 1
  %241 = call i32 @llvm.bswap.i32(i32 %or17.i.i) #16
  %count27.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 4
  br label %while.body.i157.i

while.body.i157.i:                                ; preds = %while.body.i157.i.while.body.i157.i_crit_edge, %while.body.lr.ph.i150.i
  %i.071.i.i = phi i32 [ %conv18.i.i, %while.body.lr.ph.i150.i ], [ %spec.store.select.i156.i, %while.body.i157.i.while.body.i157.i_crit_edge ]
  %count.addr.070.i.i = phi i32 [ %count.0.lcssa.i.i, %while.body.lr.ph.i150.i ], [ %dec.i151.i, %while.body.i157.i.while.body.i157.i_crit_edge ]
  %dec.i151.i = add nsw i32 %count.addr.070.i.i, -1
  %242 = ptrtoint ptr %buffer_info2.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %buffer_info2.i.i, align 4
  %arrayidx.i152.i = getelementptr %struct.igbvf_buffer, ptr %243, i32 %i.071.i.i
  %244 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %desc.i.i, align 4
  %arrayidx21.i.i = getelementptr %union.igbvf_desc, ptr %245, i32 %i.071.i.i
  %246 = ptrtoint ptr %arrayidx.i152.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx.i152.i, align 8
  %conv22.i.i = zext i32 %247 to i64
  %248 = call i64 @llvm.bswap.i64(i64 %conv22.i.i) #16
  %249 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 %248, ptr %arrayidx21.i.i, align 8
  %length.i153.i = getelementptr %struct.igbvf_buffer, ptr %243, i32 %i.071.i.i, i32 2, i32 0, i32 1
  %250 = ptrtoint ptr %length.i153.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %length.i153.i, align 8
  %conv23.i.i = zext i16 %251 to i32
  %or24.i.i = or i32 %cmd_type_len.1.i.i, %conv23.i.i
  %252 = call i32 @llvm.bswap.i32(i32 %or24.i.i) #16
  %cmd_type_len25.i.i = getelementptr inbounds %struct.anon.160, ptr %arrayidx21.i.i, i32 0, i32 1
  %253 = ptrtoint ptr %cmd_type_len25.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %cmd_type_len25.i.i, align 8
  %olinfo_status26.i.i = getelementptr inbounds %struct.anon.160, ptr %arrayidx21.i.i, i32 0, i32 2
  %254 = ptrtoint ptr %olinfo_status26.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %241, ptr %olinfo_status26.i.i, align 4
  %inc.i154.i = add i32 %i.071.i.i, 1
  %255 = ptrtoint ptr %count27.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %count27.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i154.i, i32 %256)
  %cmp.i155.i = icmp eq i32 %inc.i154.i, %256
  %spec.store.select.i156.i = select i1 %cmp.i155.i, i32 0, i32 %inc.i154.i
  %tobool19.not.i.i = icmp eq i32 %dec.i151.i, 0
  br i1 %tobool19.not.i.i, label %igbvf_tx_queue_adv.exit.i, label %while.body.i157.i.while.body.i157.i_crit_edge

while.body.i157.i.while.body.i157.i_crit_edge:    ; preds = %while.body.i157.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i157.i

igbvf_tx_queue_adv.exit.i:                        ; preds = %while.body.i157.i
  %cmd_type_len25.i.i.le = getelementptr inbounds %struct.anon.160, ptr %arrayidx21.i.i, i32 0, i32 1
  %txd_cmd.i.i = getelementptr i8, ptr %netdev, i32 3208
  %257 = ptrtoint ptr %txd_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %txd_cmd.i.i, align 8
  %259 = or i32 %258, %or24.i.i
  %260 = call i32 @llvm.bswap.i32(i32 %259)
  %261 = ptrtoint ptr %cmd_type_len25.i.i.le to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %cmd_type_len25.i.i.le, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !312
  call void @arm_heavy_mb() #16
  %262 = ptrtoint ptr %buffer_info2.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %buffer_info2.i.i, align 4
  %264 = getelementptr %struct.igbvf_buffer, ptr %263, i32 %conv21.i, i32 2
  %next_to_watch.i.i = getelementptr inbounds %struct.anon.163, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %next_to_watch.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %arrayidx21.i.i, ptr %next_to_watch.i.i, align 4
  %conv35.i.i = trunc i32 %spec.store.select.i156.i to i16
  %266 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %conv35.i.i, ptr %next_to_use.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !313
  call void @arm_heavy_mb() #16
  %267 = call i32 @llvm.bswap.i32(i32 %spec.store.select.i156.i) #16
  %hw_addr.i.i = getelementptr i8, ptr %netdev, i32 3372
  %268 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %hw_addr.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.igbvf_ring, ptr %4, i32 0, i32 8
  %270 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %tail.i.i, align 2
  %conv40.i.i = zext i16 %271 to i32
  %add.ptr.i159.i = getelementptr i8, ptr %269, i32 %conv40.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i, i32 %267) #16, !srcloc !218
  %272 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %tx_ring2, align 128
  %next_to_clean.i.i161.i = getelementptr inbounds %struct.igbvf_ring, ptr %273, i32 0, i32 6
  %274 = ptrtoint ptr %next_to_clean.i.i161.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %next_to_clean.i.i161.i, align 2
  %conv.i.i162.i = zext i16 %275 to i32
  %next_to_use.i.i163.i = getelementptr inbounds %struct.igbvf_ring, ptr %273, i32 0, i32 5
  %276 = ptrtoint ptr %next_to_use.i.i163.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %next_to_use.i.i163.i, align 4
  %conv1.i.i164.i = zext i16 %277 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %275, i16 %277)
  %cmp.i.i165.i = icmp ugt i16 %275, %277
  br i1 %cmp.i.i165.i, label %if.then.i.i167.i, label %if.end.i.i171.i

if.then.i.i167.i:                                 ; preds = %igbvf_tx_queue_adv.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %278 = xor i32 %conv1.i.i164.i, -1
  %sub7.i.i166.i = add nsw i32 %278, %conv.i.i162.i
  br label %igbvf_desc_unused.exit.i174.i

if.end.i.i171.i:                                  ; preds = %igbvf_tx_queue_adv.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %count.i.i168.i = getelementptr inbounds %struct.igbvf_ring, ptr %273, i32 0, i32 4
  %279 = ptrtoint ptr %count.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %count.i.i168.i, align 8
  %281 = xor i32 %conv1.i.i164.i, -1
  %add.i.i169.i = add nsw i32 %281, %conv.i.i162.i
  %sub13.i.i170.i = add i32 %add.i.i169.i, %280
  br label %igbvf_desc_unused.exit.i174.i

igbvf_desc_unused.exit.i174.i:                    ; preds = %if.end.i.i171.i, %if.then.i.i167.i
  %retval.0.i.i172.i = phi i32 [ %sub7.i.i166.i, %if.then.i.i167.i ], [ %sub13.i.i170.i, %if.end.i.i171.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %retval.0.i.i172.i)
  %cmp.not.i173.i = icmp slt i32 %retval.0.i.i172.i, 21
  br i1 %cmp.not.i173.i, label %if.end.i182.i, label %igbvf_desc_unused.exit.i174.i.cleanup_crit_edge

igbvf_desc_unused.exit.i174.i.cleanup_crit_edge:  ; preds = %igbvf_desc_unused.exit.i174.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i182.i:                                    ; preds = %igbvf_desc_unused.exit.i174.i
  %_tx.i.i.i175.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %282 = ptrtoint ptr %_tx.i.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %_tx.i.i.i175.i, align 128
  %state.i.i.i176.i = getelementptr inbounds %struct.netdev_queue, ptr %283, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i176.i) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !308
  %284 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %tx_ring2, align 128
  %next_to_clean.i15.i177.i = getelementptr inbounds %struct.igbvf_ring, ptr %285, i32 0, i32 6
  %286 = ptrtoint ptr %next_to_clean.i15.i177.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %next_to_clean.i15.i177.i, align 2
  %conv.i16.i178.i = zext i16 %287 to i32
  %next_to_use.i17.i179.i = getelementptr inbounds %struct.igbvf_ring, ptr %285, i32 0, i32 5
  %288 = ptrtoint ptr %next_to_use.i17.i179.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %next_to_use.i17.i179.i, align 4
  %conv1.i18.i180.i = zext i16 %289 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %287, i16 %289)
  %cmp.i19.i181.i = icmp ugt i16 %287, %289
  br i1 %cmp.i19.i181.i, label %if.then.i21.i184.i, label %if.end.i25.i188.i

if.then.i21.i184.i:                               ; preds = %if.end.i182.i
  call void @__sanitizer_cov_trace_pc() #18
  %290 = xor i32 %conv1.i18.i180.i, -1
  %sub7.i20.i183.i = add nsw i32 %290, %conv.i16.i178.i
  br label %igbvf_desc_unused.exit27.i191.i

if.end.i25.i188.i:                                ; preds = %if.end.i182.i
  call void @__sanitizer_cov_trace_pc() #18
  %count.i22.i185.i = getelementptr inbounds %struct.igbvf_ring, ptr %285, i32 0, i32 4
  %291 = ptrtoint ptr %count.i22.i185.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %count.i22.i185.i, align 8
  %293 = xor i32 %conv1.i18.i180.i, -1
  %add.i23.i186.i = add nsw i32 %293, %conv.i16.i178.i
  %sub13.i24.i187.i = add i32 %add.i23.i186.i, %292
  br label %igbvf_desc_unused.exit27.i191.i

igbvf_desc_unused.exit27.i191.i:                  ; preds = %if.end.i25.i188.i, %if.then.i21.i184.i
  %retval.0.i26.i189.i = phi i32 [ %sub7.i20.i183.i, %if.then.i21.i184.i ], [ %sub13.i24.i187.i, %if.end.i25.i188.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %retval.0.i26.i189.i)
  %cmp7.i190.i = icmp slt i32 %retval.0.i26.i189.i, 21
  br i1 %cmp7.i190.i, label %igbvf_desc_unused.exit27.i191.i.cleanup_crit_edge, label %if.end9.i194.i

igbvf_desc_unused.exit27.i191.i.cleanup_crit_edge: ; preds = %igbvf_desc_unused.exit27.i191.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9.i194.i:                                   ; preds = %igbvf_desc_unused.exit27.i191.i
  call void @__sanitizer_cov_trace_pc() #18
  %294 = ptrtoint ptr %_tx.i.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %_tx.i.i.i175.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %295) #16
  %restart_queue.i192.i = getelementptr i8, ptr %netdev, i32 3204
  %296 = ptrtoint ptr %restart_queue.i192.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %restart_queue.i192.i, align 4
  %inc.i193.i = add i32 %297, 1
  store i32 %inc.i193.i, ptr %restart_queue.i192.i, align 4
  br label %cleanup

if.else49.i:                                      ; preds = %igbvf_put_txbuf.exit.i.i.if.else49.i_crit_edge, %do.end73.i.i.if.else49.i_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  %298 = ptrtoint ptr %buffer_info2.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %buffer_info2.i.i, align 4
  %300 = getelementptr %struct.igbvf_buffer, ptr %299, i32 %conv21.i, i32 2
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 0, ptr %300, align 8
  %302 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %63, ptr %next_to_use.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else49.i, %if.end9.i194.i, %igbvf_desc_unused.exit27.i191.i.cleanup_crit_edge, %igbvf_desc_unused.exit.i174.i.cleanup_crit_edge, %if.then27.i, %igbvf_desc_unused.exit27.i.i.cleanup_crit_edge, %if.then3.i, %if.then.i, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then.i ], [ 0, %if.then3.i ], [ 0, %if.then27.i ], [ 0, %if.else49.i ], [ 16, %igbvf_desc_unused.exit27.i.i.cleanup_crit_edge ], [ 0, %igbvf_desc_unused.exit.i174.i.cleanup_crit_edge ], [ 0, %igbvf_desc_unused.exit27.i191.i.cleanup_crit_edge ], [ 0, %if.end9.i194.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @igbvf_features_check(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %dev, i64 noundef %features) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub.ptr.sub)
  %cmp = icmp ugt i32 %sub.ptr.sub, 127
  br i1 %cmp, label %if.then, label %if.end, !prof !221

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %and = and i64 %features, -68720590985
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 8
  %conv.i33 = zext i16 %8 to i32
  %gepdiff = sub nsw i32 %conv.i33, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %gepdiff)
  %cmp7 = icmp ugt i32 %gepdiff, 511
  br i1 %cmp7, label %if.then14, label %if.end16, !prof !221

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %and15 = and i64 %features, -68720590857
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %9 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %encapsulation, align 8
  %10 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool17.not = icmp ne i16 %10, 0
  %and18 = and i64 %features, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  %or.cond = and i1 %tobool19.not, %tobool17.not
  %and21 = and i64 %features, -65537
  %features.addr.0 = select i1 %or.cond, i64 %and21, i64 %features
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then
  %retval.0 = phi i64 [ %and, %if.then ], [ %and15, %if.then14 ], [ %features.addr.0, %if.end16 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_set_mac(ptr noundef %netdev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %hw1 = getelementptr i8, ptr %netdev, i32 3368
  %addr3 = getelementptr i8, ptr %netdev, i32 3444
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %5 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %6 to i32
  %7 = call ptr @memcpy(ptr %addr3, ptr %sa_data, i32 %conv)
  %mbx_lock = getelementptr i8, ptr %netdev, i32 3532
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock) #16
  %rar_set = getelementptr i8, ptr %netdev, i32 3432
  %8 = ptrtoint ptr %rar_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rar_set, align 4
  tail call void %9(ptr noundef %hw1, ptr noundef %addr3, i32 noundef 0) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock) #16
  %10 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sa_data, align 4
  %12 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr3, align 4
  %xor.i = xor i32 %13, %11
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %netdev, i32 3448
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %17, %15
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_ioctl(ptr nocapture noundef readnone %netdev, ptr nocapture noundef readnone %ifr, i32 noundef %cmd) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %add1 = add i32 %new_mtu, 18
  %state = getelementptr i8, ptr %netdev, i32 3068
  %call257 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257)
  %tobool.not58 = icmp eq i32 %call257, 0
  br i1 %tobool.not58, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #16
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %max_frame_size = getelementptr i8, ptr %netdev, i32 3308
  %0 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add1, ptr %max_frame_size, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igbvf_down(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add1)
  %cmp.inv = icmp sgt i32 %add1, 1024
  %. = select i1 %cmp.inv, i32 2048, i32 1024
  %rx_buffer_len7 = getelementptr i8, ptr %netdev, i32 3008
  %3 = ptrtoint ptr %rx_buffer_len7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %., ptr %rx_buffer_len7, align 64
  %4 = zext i32 %new_mtu to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %new_mtu, label %if.end.do.body17_crit_edge [
    i32 1500, label %if.end.if.then14_crit_edge
    i32 1504, label %if.end.if.then14_crit_edge59
  ]

if.end.if.then14_crit_edge59:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

if.end.do.body17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body17

if.then14:                                        ; preds = %if.end.if.then14_crit_edge, %if.end.if.then14_crit_edge59
  %rx_buffer_len15 = getelementptr i8, ptr %netdev, i32 3008
  %5 = ptrtoint ptr %rx_buffer_len15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1522, ptr %rx_buffer_len15, align 64
  br label %do.body17

do.body17:                                        ; preds = %if.then14, %if.end.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igbvf_change_mtu.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igbvf_change_mtu, %if.then22)) #16
          to label %do.end25 [label %if.then22], !srcloc !226

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #18
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igbvf_change_mtu.__UNIQUE_ID_ddebug504, ptr noundef %netdev, ptr noundef nonnull @.str.64, i32 noundef %7, i32 noundef %new_mtu) #16
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body17
  %mtu26 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %8 = ptrtoint ptr %mtu26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %new_mtu, ptr %mtu26, align 4
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i54 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i54)
  %tobool.i55.not = icmp eq i32 %and1.i.i54, 0
  br i1 %tobool.i55.not, label %if.else30, label %if.then28

if.then28:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #18
  %call29 = tail call i32 @igbvf_up(ptr noundef %add.ptr.i)
  br label %if.end31

if.else30:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @igbvf_reset(ptr noundef %add.ptr.i)
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then28
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_timeout_count = getelementptr i8, ptr %netdev, i32 3236
  %0 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_timeout_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_timeout_count, align 4
  %reset_task = getelementptr i8, ptr %netdev, i32 2400
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %reset_task) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_vlan_rx_kill_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3368
  %mbx_lock = getelementptr i8, ptr %netdev, i32 3532
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock) #16
  %set_vfta = getelementptr i8, ptr %netdev, i32 3440
  %0 = ptrtoint ptr %set_vfta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_vfta, align 4
  %call2 = tail call i32 %1(ptr noundef %hw1, i16 noundef zeroext %vid, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pdev = getelementptr i8, ptr %netdev, i32 3320
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %conv = zext i16 %vid to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %conv) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock) #16
  %conv5 = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %netdev, i32 2492
  tail call void @_clear_bit(i32 noundef %conv5, ptr noundef %active_vlans) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_netpoll(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %netdev, i32 3320
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #16
  %tx_ring = getelementptr i8, ptr %netdev, i32 3200
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 128
  %call1 = tail call fastcc zeroext i1 @igbvf_clean_tx_irq(ptr noundef %5)
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %irq3 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq3, align 4
  tail call void @enable_irq(i32 noundef %9) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igbvf_set_features(ptr nocapture noundef %netdev, i64 noundef %features) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr i8, ptr %netdev, i32 4484
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags2, align 4
  %and1 = and i32 %1, -2
  %and = lshr i64 %features, 40
  %2 = trunc i64 %and to i32
  %3 = and i32 %2, 1
  %4 = or i32 %3, %and1
  %or.sink = xor i32 %4, 1
  store i32 %or.sink, ptr %flags2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igbvf_request_irq(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msix_entries = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 52
  %0 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msix_entries, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %entry
  %netdev1.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 42
  %2 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %3) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 11
  %tx_ring.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 17
  %4 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring.i, align 128
  %name2.i = getelementptr inbounds %struct.igbvf_ring, ptr %5, i32 0, i32 11
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name2.i, ptr noundef nonnull @.str.58, ptr noundef %3) #16
  %rx_ring.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 31
  %6 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring.i, align 8
  %name7.i = getelementptr inbounds %struct.igbvf_ring, ptr %7, i32 0, i32 11
  %call11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name7.i, ptr noundef nonnull @.str.59, ptr noundef %3) #16
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %8 = call ptr @memcpy(ptr %name2.i, ptr %3, i32 16)
  %rx_ring17.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 31
  %9 = ptrtoint ptr %rx_ring17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_ring17.i, align 8
  %name18.i = getelementptr inbounds %struct.igbvf_ring, ptr %10, i32 0, i32 11
  %11 = call ptr @memcpy(ptr %name18.i, ptr %3, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %12 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msix_entries, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_ring.i, align 128
  %name24.i = getelementptr inbounds %struct.igbvf_ring, ptr %17, i32 0, i32 11
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @igbvf_intr_msix_tx, ptr noundef null, i32 noundef 0, ptr noundef %name24.i, ptr noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end28.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end28.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring.i, align 128
  %itr_register.i = getelementptr inbounds %struct.igbvf_ring, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %itr_register.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 5760, ptr %itr_register.i, align 4
  %current_itr.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 15
  %21 = ptrtoint ptr %current_itr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %current_itr.i, align 4
  %23 = load ptr, ptr %tx_ring.i, align 128
  %itr_val.i = getelementptr inbounds %struct.igbvf_ring, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %itr_val.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %itr_val.i, align 4
  %25 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %msix_entries, align 8
  %arrayidx32.i = getelementptr %struct.msix_entry, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx32.i, align 4
  %rx_ring34.i = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 31
  %29 = ptrtoint ptr %rx_ring34.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_ring34.i, align 8
  %name35.i = getelementptr inbounds %struct.igbvf_ring, ptr %30, i32 0, i32 11
  %call.i94.i = tail call i32 @request_threaded_irq(i32 noundef %28, ptr noundef nonnull @igbvf_intr_msix_rx, ptr noundef null, i32 noundef 0, ptr noundef %name35.i, ptr noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %tobool38.not.i = icmp eq i32 %call.i94.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end28.i.do.end_crit_edge

if.end28.i.do.end_crit_edge:                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end40.i:                                       ; preds = %if.end28.i
  %31 = ptrtoint ptr %rx_ring34.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_ring34.i, align 8
  %itr_register45.i = getelementptr inbounds %struct.igbvf_ring, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %itr_register45.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 5764, ptr %itr_register45.i, align 4
  %34 = ptrtoint ptr %current_itr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %current_itr.i, align 4
  %36 = load ptr, ptr %rx_ring34.i, align 8
  %itr_val48.i = getelementptr inbounds %struct.igbvf_ring, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %itr_val48.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %itr_val48.i, align 4
  %38 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msix_entries, align 8
  %arrayidx51.i = getelementptr %struct.msix_entry, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx51.i, align 4
  %call.i95.i = tail call i32 @request_threaded_irq(i32 noundef %41, ptr noundef nonnull @igbvf_msix_other, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i)
  %tobool56.not.i = icmp eq i32 %call.i95.i, 0
  br i1 %tobool56.not.i, label %if.end, label %if.end40.i.do.end_crit_edge

if.end40.i.do.end_crit_edge:                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end:                                           ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @igbvf_configure_msix(ptr noundef %adapter) #16
  br label %cleanup

do.end:                                           ; preds = %if.end40.i.do.end_crit_edge, %if.end28.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %err.0.ph = phi i32 [ %call.i95.i, %if.end40.i.do.end_crit_edge ], [ %call.i94.i, %if.end28.i.do.end_crit_edge ], [ %call.i.i, %if.end.i.do.end_crit_edge ], [ -1, %entry.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.igbvf_adapter, ptr %adapter, i32 0, i32 43
  %42 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %err.0.ph) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end
  %err.012 = phi i32 [ 0, %if.end ], [ %err.0.ph, %do.end ]
  ret i32 %err.012
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_intr_msix_tx(i32 noundef %irq, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring2 = getelementptr i8, ptr %data, i32 3200
  %0 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring2, align 128
  %set_itr = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %set_itr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %set_itr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !314
  tail call void @arm_heavy_mb() #16
  %itr_val = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %itr_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %itr_val, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %hw_addr = getelementptr i8, ptr %data, i32 3372
  %7 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr, align 4
  %itr_register = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %itr_register to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %itr_register, align 4
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #16, !srcloc !218
  %11 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_ring2, align 128
  %set_itr5 = getelementptr inbounds %struct.igbvf_ring, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %set_itr5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %set_itr5, align 8
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %total_tx_bytes = getelementptr i8, ptr %data, i32 3220
  %14 = ptrtoint ptr %total_tx_bytes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %total_tx_bytes, align 4
  %total_tx_packets = getelementptr i8, ptr %data, i32 3224
  %15 = ptrtoint ptr %total_tx_packets to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %total_tx_packets, align 8
  %call6 = tail call fastcc zeroext i1 @igbvf_clean_tx_irq(ptr noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16
  tail call void @arm_heavy_mb() #16
  %eims_value16 = getelementptr inbounds %struct.igbvf_ring, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %eims_value16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eims_value16, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %hw_addr17 = getelementptr i8, ptr %data, i32 3372
  %19 = ptrtoint ptr %hw_addr17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_addr17, align 4
  br i1 %call6, label %do.body13, label %do.body8

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr12 = getelementptr i8, ptr %20, i32 5408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %18) #16, !srcloc !218
  br label %if.end19

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr18 = getelementptr i8, ptr %20, i32 5412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %18) #16, !srcloc !218
  br label %if.end19

if.end19:                                         ; preds = %do.body13, %do.body8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_intr_msix_rx(i32 noundef %irq, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %int_counter0 = getelementptr i8, ptr %data, i32 4456
  %0 = ptrtoint ptr %int_counter0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_counter0, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %int_counter0, align 8
  %rx_ring = getelementptr i8, ptr %data, i32 3256
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 8
  %set_itr = getelementptr inbounds %struct.igbvf_ring, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %set_itr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %set_itr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !315
  tail call void @arm_heavy_mb() #16
  %6 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring, align 8
  %itr_val = getelementptr inbounds %struct.igbvf_ring, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %itr_val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %itr_val, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %hw_addr = getelementptr i8, ptr %data, i32 3372
  %11 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr, align 4
  %itr_register = getelementptr inbounds %struct.igbvf_ring, ptr %7, i32 0, i32 15
  %13 = ptrtoint ptr %itr_register to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %itr_register, align 4
  %conv = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #16, !srcloc !218
  %15 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_ring, align 8
  %set_itr4 = getelementptr inbounds %struct.igbvf_ring, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %set_itr4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %set_itr4, align 8
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_ring, align 8
  %napi = getelementptr inbounds %struct.igbvf_ring, ptr %19, i32 0, i32 10
  %call6 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #16
  br i1 %call6, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %total_rx_bytes = getelementptr i8, ptr %data, i32 3228
  %20 = ptrtoint ptr %total_rx_bytes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %total_rx_bytes, align 4
  %total_rx_packets = getelementptr i8, ptr %data, i32 3232
  %21 = ptrtoint ptr %total_rx_packets to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %total_rx_packets, align 32
  %22 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_ring, align 8
  %napi9 = getelementptr inbounds %struct.igbvf_ring, ptr %23, i32 0, i32 10
  tail call void @__napi_schedule(ptr noundef %napi9) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_msix_other(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %int_counter1 = getelementptr i8, ptr %data, i32 4460
  %0 = ptrtoint ptr %int_counter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_counter1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %int_counter1, align 4
  %get_link_status = getelementptr i8, ptr %data, i32 3464
  %2 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %get_link_status, align 4
  %state = getelementptr i8, ptr %data, i32 3068
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %data, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 1
  %call3 = tail call i32 @mod_timer(ptr noundef %add.ptr.i, i32 noundef %add) #16
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !316
  tail call void @arm_heavy_mb() #16
  %eims_other = getelementptr i8, ptr %data, i32 4452
  %7 = ptrtoint ptr %eims_other to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eims_other, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %hw_addr = getelementptr i8, ptr %data, i32 3372
  %10 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 5412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #16, !srcloc !218
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @igbvf_clean_tx_irq(ptr nocapture noundef %tx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %netdev2 = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  %next_to_clean = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 6
  %4 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_to_clean, align 2
  %conv = zext i16 %5 to i32
  %buffer_info3 = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 9
  %6 = ptrtoint ptr %buffer_info3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_info3, align 4
  %arrayidx = getelementptr %struct.igbvf_buffer, ptr %7, i32 %conv
  %8 = getelementptr %struct.igbvf_buffer, ptr %7, i32 %conv, i32 2
  %desc = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 1
  %pdev4.i = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 43
  %count25 = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry
  %buffer_info.0 = phi ptr [ %arrayidx, %entry ], [ %arrayidx31, %for.end.do.body_crit_edge ]
  %.pn = phi ptr [ %8, %entry ], [ %43, %for.end.do.body_crit_edge ]
  %total_bytes.0 = phi i32 [ 0, %entry ], [ %total_bytes.2, %for.end.do.body_crit_edge ]
  %total_packets.0 = phi i32 [ 0, %entry ], [ %total_packets.2, %for.end.do.body_crit_edge ]
  %i.0 = phi i32 [ %conv, %entry ], [ %spec.store.select, %for.end.do.body_crit_edge ]
  %count.0 = phi i32 [ 0, %entry ], [ %inc32, %for.end.do.body_crit_edge ]
  %eop_desc.0.in = getelementptr inbounds %struct.anon.163, ptr %.pn, i32 0, i32 1
  %9 = ptrtoint ptr %eop_desc.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %eop_desc.0 = load ptr, ptr %eop_desc.0.in, align 4
  %tobool.not = icmp eq ptr %eop_desc.0, null
  br i1 %tobool.not, label %do.body.do.end38_crit_edge, label %do.end

do.body.do.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end38

do.end:                                           ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !317
  %status = getelementptr inbounds %struct.anon.161, ptr %eop_desc.0, i32 0, i32 2
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %and = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.end.do.end38_crit_edge, label %if.end10

do.end.do.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end38

if.end10:                                         ; preds = %do.end
  %12 = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.0, i32 0, i32 2
  %next_to_watch11 = getelementptr inbounds %struct.anon.163, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %next_to_watch11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %next_to_watch11, align 4
  br label %for.body

for.body:                                         ; preds = %igbvf_put_txbuf.exit.for.body_crit_edge, %if.end10
  %count.1117 = phi i32 [ %count.0, %if.end10 ], [ %inc32, %igbvf_put_txbuf.exit.for.body_crit_edge ]
  %i.1116 = phi i32 [ %i.0, %if.end10 ], [ %spec.store.select, %igbvf_put_txbuf.exit.for.body_crit_edge ]
  %total_packets.1115 = phi i32 [ %total_packets.0, %if.end10 ], [ %total_packets.2, %igbvf_put_txbuf.exit.for.body_crit_edge ]
  %total_bytes.1114 = phi i32 [ %total_bytes.0, %if.end10 ], [ %total_bytes.2, %igbvf_put_txbuf.exit.for.body_crit_edge ]
  %buffer_info.1113 = phi ptr [ %buffer_info.0, %if.end10 ], [ %arrayidx31, %igbvf_put_txbuf.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %arrayidx13 = getelementptr %union.igbvf_desc, ptr %15, i32 %i.1116
  %cmp = icmp eq ptr %arrayidx13, %eop_desc.0
  %skb15 = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.1113, i32 0, i32 1
  %16 = ptrtoint ptr %skb15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb15, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %for.body.if.end23_crit_edge, label %if.then17

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %gso_segs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool19.not = icmp eq i16 %21, 0
  %narrow = select i1 %tobool19.not, i16 1, i16 %21
  %conv18. = zext i16 %narrow to i32
  %sub = add nsw i32 %conv18., -1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %23, %25
  %mul = mul i32 %sub, %sub.i
  %add21 = add i32 %total_packets.1115, %conv18.
  %add = add i32 %23, %total_bytes.1114
  %add22 = add i32 %add, %mul
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %for.body.if.end23_crit_edge
  %total_bytes.2 = phi i32 [ %add22, %if.then17 ], [ %total_bytes.1114, %for.body.if.end23_crit_edge ]
  %total_packets.2 = phi i32 [ %add21, %if.then17 ], [ %total_packets.1115, %for.body.if.end23_crit_edge ]
  %26 = ptrtoint ptr %buffer_info.1113 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_info.1113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end23.if.end10.i_crit_edge, label %if.then.i

if.end23.if.end10.i_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev4.i, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %length7.i = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.1113, i32 0, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %length7.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %length7.i, align 8
  %conv8.i = zext i16 %31 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev5.i, i32 noundef %27, i32 noundef %conv8.i, i32 noundef 1, i32 noundef 0) #16
  %32 = ptrtoint ptr %buffer_info.1113 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %buffer_info.1113, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %if.end23.if.end10.i_crit_edge
  %33 = ptrtoint ptr %skb15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb15, align 4
  %tobool11.not.i = icmp eq ptr %34, null
  br i1 %tobool11.not.i, label %if.end10.i.igbvf_put_txbuf.exit_crit_edge, label %if.then12.i

if.end10.i.igbvf_put_txbuf.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %igbvf_put_txbuf.exit

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %34, i32 noundef 1) #16
  %35 = ptrtoint ptr %skb15 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %skb15, align 4
  br label %igbvf_put_txbuf.exit

igbvf_put_txbuf.exit:                             ; preds = %if.then12.i, %if.end10.i.igbvf_put_txbuf.exit_crit_edge
  %36 = getelementptr inbounds %struct.igbvf_buffer, ptr %buffer_info.1113, i32 0, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %36, align 8
  %status24 = getelementptr inbounds %struct.anon.161, ptr %arrayidx13, i32 0, i32 2
  %38 = ptrtoint ptr %status24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %status24, align 4
  %inc = add i32 %i.1116, 1
  %39 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count25, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %40)
  %cmp26 = icmp eq i32 %inc, %40
  %spec.store.select = select i1 %cmp26, i32 0, i32 %inc
  %41 = ptrtoint ptr %buffer_info3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer_info3, align 4
  %arrayidx31 = getelementptr %struct.igbvf_buffer, ptr %42, i32 %spec.store.select
  %inc32 = add i32 %count.1117, 1
  br i1 %cmp, label %for.end, label %igbvf_put_txbuf.exit.for.body_crit_edge

igbvf_put_txbuf.exit.for.body_crit_edge:          ; preds = %igbvf_put_txbuf.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %igbvf_put_txbuf.exit
  %43 = getelementptr %struct.igbvf_buffer, ptr %42, i32 %spec.store.select, i32 2
  %44 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count25, align 8
  %cmp36 = icmp ult i32 %inc32, %45
  br i1 %cmp36, label %for.end.do.body_crit_edge, label %for.end.do.end38_crit_edge

for.end.do.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end38

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end38:                                         ; preds = %for.end.do.end38_crit_edge, %do.end.do.end38_crit_edge, %do.body.do.end38_crit_edge
  %total_bytes.3 = phi i32 [ %total_bytes.2, %for.end.do.end38_crit_edge ], [ %total_bytes.0, %do.end.do.end38_crit_edge ], [ %total_bytes.0, %do.body.do.end38_crit_edge ]
  %total_packets.3 = phi i32 [ %total_packets.2, %for.end.do.end38_crit_edge ], [ %total_packets.0, %do.end.do.end38_crit_edge ], [ %total_packets.0, %do.body.do.end38_crit_edge ]
  %i.2 = phi i32 [ %spec.store.select, %for.end.do.end38_crit_edge ], [ %i.0, %do.end.do.end38_crit_edge ], [ %i.0, %do.body.do.end38_crit_edge ]
  %count.2 = phi i32 [ %inc32, %for.end.do.end38_crit_edge ], [ %count.0, %do.end.do.end38_crit_edge ], [ %count.0, %do.body.do.end38_crit_edge ]
  %conv39 = trunc i32 %i.2 to i16
  %46 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv39, ptr %next_to_clean, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2)
  %tobool41.not = icmp eq i32 %count.2, 0
  br i1 %tobool41.not, label %do.end38.if.end65_crit_edge, label %land.lhs.true

do.end38.if.end65_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

land.lhs.true:                                    ; preds = %do.end38
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %47 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %state.i, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i110 = icmp eq i32 %49, 0
  br i1 %tobool.not.i110, label %land.rhs, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

land.rhs:                                         ; preds = %land.lhs.true
  %conv.i = and i32 %i.2, 65535
  %next_to_use.i = getelementptr inbounds %struct.igbvf_ring, ptr %tx_ring, i32 0, i32 5
  %50 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %next_to_use.i, align 4
  %conv1.i = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %conv39)
  %cmp.i = icmp ult i16 %51, %conv39
  br i1 %cmp.i, label %if.then.i111, label %if.end.i

if.then.i111:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %52 = xor i32 %conv1.i, -1
  %sub7.i = add nsw i32 %conv.i, %52
  br label %igbvf_desc_unused.exit

if.end.i:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count25, align 8
  %55 = xor i32 %conv1.i, -1
  %add.i = add nsw i32 %conv.i, %55
  %sub13.i = add i32 %add.i, %54
  br label %igbvf_desc_unused.exit

igbvf_desc_unused.exit:                           ; preds = %if.end.i, %if.then.i111
  %retval.0.i = phi i32 [ %sub7.i, %if.then.i111 ], [ %sub13.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %retval.0.i)
  %cmp45 = icmp sgt i32 %retval.0.i, 31
  br i1 %cmp45, label %do.end54, label %igbvf_desc_unused.exit.if.end65_crit_edge, !prof !221

igbvf_desc_unused.exit.if.end65_crit_edge:        ; preds = %igbvf_desc_unused.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

do.end54:                                         ; preds = %igbvf_desc_unused.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !318
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %56 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %do.end54.if.end65_crit_edge, label %land.lhs.true59

do.end54.if.end65_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

land.lhs.true59:                                  ; preds = %do.end54
  %state = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 13
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %state, align 4
  %62 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool61.not = icmp eq i32 %62, 0
  br i1 %tobool61.not, label %if.then62, label %land.lhs.true59.if.end65_crit_edge

land.lhs.true59.if.end65_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then62:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_tx_wake_queue(ptr noundef %57) #16
  %restart_queue = getelementptr inbounds %struct.igbvf_adapter, ptr %1, i32 0, i32 18
  %63 = ptrtoint ptr %restart_queue to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %restart_queue, align 4
  %inc63 = add i32 %64, 1
  store i32 %inc63, ptr %restart_queue, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %land.lhs.true59.if.end65_crit_edge, %do.end54.if.end65_crit_edge, %igbvf_desc_unused.exit.if.end65_crit_edge, %land.lhs.true.if.end65_crit_edge, %do.end38.if.end65_crit_edge
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 3
  %65 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_bytes, align 4
  %add66 = add i32 %66, %total_bytes.3
  store i32 %add66, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 1
  %67 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_packets, align 4
  %add68 = add i32 %68, %total_packets.3
  store i32 %add68, ptr %tx_packets, align 4
  %69 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count25, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %count.2, i32 %70)
  %cmp70 = icmp ult i32 %count.2, %70
  ret i1 %cmp70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_suspend(ptr nocapture noundef readonly %dev_d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @netif_device_detach(ptr noundef %1) #16
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then:                                          ; preds = %entry
  %state = getelementptr i8, ptr %1, i32 3068
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end, !prof !220

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2462, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call void @igbvf_down(ptr noundef %add.ptr.i)
  %msix_entries.i = getelementptr i8, ptr %1, i32 4440
  %7 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msix_entries.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.if.end24_crit_edge, label %for.body.preheader.i

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

for.body.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %netdev1.i = getelementptr i8, ptr %1, i32 3316
  %9 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev1.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %12, ptr noundef %10) #16
  %13 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msix_entries.i, align 8
  %arrayidx.1.i = getelementptr %struct.msix_entry, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1.i, align 4
  %call.1.i = tail call ptr @free_irq(i32 noundef %16, ptr noundef %10) #16
  %17 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msix_entries.i, align 8
  %arrayidx.2.i = getelementptr %struct.msix_entry, ptr %18, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2.i, align 4
  %call.2.i = tail call ptr @free_irq(i32 noundef %20, ptr noundef %10) #16
  br label %if.end24

if.end24:                                         ; preds = %for.body.preheader.i, %if.end.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_io_error_detected(ptr noundef %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @netif_device_detach(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @igbvf_down(ptr noundef %add.ptr.i)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end4 ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_io_slot_reset(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @pci_set_master(ptr noundef %pdev) #16
  tail call fastcc void @igbvf_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 4, %do.end ], [ 5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igbvf_io_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call3 = tail call i32 @igbvf_up(ptr noundef %add.ptr.i)
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igbvf_resume(ptr noundef %dev_d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev_d, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @pci_set_master(ptr noundef %add.ptr) #16
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @igbvf_request_irq(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call fastcc void @igbvf_reset(ptr noundef %add.ptr.i)
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i21 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i21)
  %tobool.i22.not = icmp eq i32 %and1.i.i21, 0
  br i1 %tobool.i22.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = tail call i32 @igbvf_up(ptr noundef %add.ptr.i)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind readnone }
attributes #23 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !119, !121, !123, !125, !127, !128, !130, !131, !133, !134, !136, !137, !138, !139, !141, !143, !145, !146, !147, !148, !150, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !197, !198, !199, !200, !202, !203, !204, !205}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @igbvf_driver_name, !1, !"igbvf_driver_name", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 27, i32 6}
!2 = !{ptr @__param_debug, !3, !"__param_debug", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_debugtype498, !3, !"__UNIQUE_ID_debugtype498", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_debug499, !6, !"__UNIQUE_ID_debug499", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 36, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 444, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @igbvf_setup_tx_resources._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @igbvf_setup_tx_resources._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 488, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @igbvf_setup_rx_resources._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @igbvf_setup_rx_resources._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_igbvf__505_2968_igbvf_init_module6, !21, !"__initcall__kmod_igbvf__505_2968_igbvf_init_module6", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2968, i32 1}
!22 = !{ptr @__exitcall_igbvf_exit_module, !23, !"__exitcall_igbvf_exit_module", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2980, i32 1}
!24 = !{ptr @__UNIQUE_ID_author506, !25, !"__UNIQUE_ID_author506", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2982, i32 1}
!26 = !{ptr @__UNIQUE_ID_description507, !27, !"__UNIQUE_ID_description507", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2983, i32 1}
!28 = !{ptr @__UNIQUE_ID_file508, !29, !"__UNIQUE_ID_file508", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2984, i32 1}
!30 = !{ptr @__UNIQUE_ID_license509, !29, !"__UNIQUE_ID_license509", i1 false, i1 false}
!31 = !{ptr @__param_str_debug, !3, !"__param_str_debug", i1 false, i1 false}
!32 = !{ptr @debug, !33, !"debug", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 34, i32 12}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/mm.h", i32 717, i32 2}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1453, i32 3}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @igbvf_set_uni._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @igbvf_set_uni._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1239, i32 3}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @igbvf_vlan_rx_add_vid._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @igbvf_vlan_rx_add_vid._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 176, i32 5}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @igbvf_alloc_rx_buffers._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @igbvf_alloc_rx_buffers._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @igbvf_alloc_rx_buffers._entry.15, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 195, i32 5}
!54 = !{ptr @igbvf_alloc_rx_buffers._entry_ptr.16, !53, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1523, i32 3}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @igbvf_reset._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @igbvf_reset._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2961, i32 2}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @igbvf_init_module._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @igbvf_init_module._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @igbvf_init_module._entry.25, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2962, i32 2}
!74 = !{ptr @igbvf_init_module._entry_ptr.26, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2964, i32 8}
!77 = !{ptr @igbvf_driver_string, !78, !"igbvf_driver_string", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 28, i32 19}
!79 = !{ptr @igbvf_copyright, !80, !"igbvf_copyright", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 30, i32 19}
!81 = !{ptr @igbvf_driver, !82, !"igbvf_driver", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2941, i32 26}
!83 = !{ptr @igbvf_pci_tbl, !84, !"igbvf_pci_tbl", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2931, i32 35}
!85 = !{ptr @igbvf_probe.cards_found, !86, !"cards_found", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2688, i32 13}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2702, i32 4}
!89 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @igbvf_probe._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @igbvf_probe._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2809, i32 3}
!94 = !{ptr @igbvf_probe._entry.30, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @igbvf_probe._entry_ptr.32, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2814, i32 4}
!98 = !{ptr @igbvf_probe._entry.33, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @igbvf_probe._entry_ptr.35, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2816, i32 4}
!102 = !{ptr @igbvf_probe._entry.36, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @igbvf_probe._entry_ptr.38, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2824, i32 3}
!106 = !{ptr @igbvf_probe._entry.39, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @igbvf_probe._entry_ptr.41, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @igbvf_probe.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2830, i32 2}
!110 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @igbvf_probe.__key.43, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2832, i32 2}
!113 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @igbvf_probe.__key.45, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2833, i32 2}
!116 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2846, i32 23}
!119 = !{ptr @igbvf_info_tbl, !120, !"igbvf_info_tbl", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 57, i32 33}
!121 = !{ptr @igbvf_vf_info, !122, !"igbvf_vf_info", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 43, i32 26}
!123 = !{ptr @igbvf_i350_vf_info, !124, !"igbvf_i350_vf_info", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 50, i32 26}
!125 = !{ptr @igbvf_sw_init.__key, !126, !"__key", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1656, i32 2}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @igbvf_sw_init.__key.49, !129, !"__key", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1661, i32 2}
!130 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @igbvf_sw_init.__key.51, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1662, i32 2}
!133 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1037, i32 3}
!136 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @igbvf_set_interrupt_capability._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @igbvf_set_interrupt_capability._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!141 = !{ptr @igbvf_netdev_ops, !142, !"igbvf_netdev_ops", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2652, i32 36}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1135, i32 2}
!145 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @igbvf_request_irq._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @igbvf_request_irq._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1056, i32 35}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1057, i32 35}
!152 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2194, i32 2}
!156 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @igbvf_tx_map_adv._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @igbvf_tx_map_adv._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2432, i32 2}
!161 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @igbvf_change_mtu.__UNIQUE_ID_ddebug504, !160, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1259, i32 3}
!165 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @igbvf_vlan_rx_kill_vid._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @igbvf_vlan_rx_kill_vid._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1937, i32 4}
!170 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @igbvf_watchdog_task._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @igbvf_watchdog_task._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 1867, i32 2}
!175 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @igbvf_print_link_info._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @igbvf_print_link_info._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2599, i32 3}
!182 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @igbvf_print_device_info._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @igbvf_print_device_info._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2601, i32 3}
!187 = !{ptr @igbvf_print_device_info._entry.75, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @igbvf_print_device_info._entry_ptr.77, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2602, i32 2}
!191 = !{ptr @igbvf_print_device_info._entry.78, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @igbvf_print_device_info._entry_ptr.80, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @igbvf_err_handler, !194, !"igbvf_err_handler", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2925, i32 40}
!195 = !{ptr @.str.81, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2557, i32 3}
!197 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @igbvf_io_slot_reset._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @igbvf_io_slot_reset._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2583, i32 4}
!202 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @igbvf_io_resume._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @igbvf_io_resume._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @igbvf_pm_ops, !206, !"igbvf_pm_ops", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/intel/igbvf/netdev.c", i32 2938, i32 8}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{i64 2158133462}
!218 = !{i64 5056987}
!219 = !{i64 2158133879}
!220 = !{!"branch_weights", i32 2000, i32 1}
!221 = !{!"branch_weights", i32 1, i32 2000}
!222 = !{i64 2154297494, i64 2154297977, i64 2154297531, i64 2154297587, i64 2154297621, i64 2154297645, i64 2154297686, i64 2154297707, i64 2154297735, i64 2154297769}
!223 = !{i64 2148505550}
!224 = !{i64 2148420259, i64 2148420291, i64 2148420320, i64 2148420354, i64 2148420385, i64 2148420408}
!225 = !{i64 2148505779}
!226 = !{i64 2149030451, i64 2149030456, i64 2149030469, i64 2149030513, i64 2149030547, i64 2149030568}
!227 = !{i64 2158134754}
!228 = !{i64 2158135171}
!229 = !{i64 5057405}
!230 = !{i64 2158189376}
!231 = !{i64 2158152978}
!232 = !{i64 2158153571}
!233 = !{i64 2158154164}
!234 = !{i64 2158161188}
!235 = !{i64 2158161677}
!236 = !{i64 2158162568}
!237 = !{i64 2158163096}
!238 = !{i64 2158164079}
!239 = !{i64 2158164951}
!240 = !{i64 2158165668}
!241 = !{i64 2158166352}
!242 = !{i64 2158167412}
!243 = !{i64 2158167847}
!244 = !{i64 2158168532}
!245 = !{i64 2158169677}
!246 = !{i64 2158170866}
!247 = !{i64 2158171355}
!248 = !{i64 2158172246}
!249 = !{i64 2158172834}
!250 = !{i64 2158173706}
!251 = !{i64 2158174521}
!252 = !{i64 2158175506}
!253 = !{i64 2158176190}
!254 = !{i64 2158176910}
!255 = !{i64 2158144004}
!256 = !{i64 2158144433}
!257 = !{i64 2158144891}
!258 = !{i64 2158142715}
!259 = !{i64 2158143144}
!260 = !{i64 2158145371}
!261 = !{i64 2158145910}
!262 = !{i64 2158147493}
!263 = !{i64 2158190411}
!264 = !{i64 2158190900}
!265 = !{i64 2158192134}
!266 = !{i64 2158192623}
!267 = !{i64 2158193514}
!268 = !{i64 2158151981}
!269 = !{i64 2158152457}
!270 = !{i64 2158207048}
!271 = !{i64 2158207942}
!272 = !{i64 2158208836}
!273 = !{i64 2158209730}
!274 = !{i64 2158210624}
!275 = !{i64 2158211534}
!276 = !{i64 2158212448}
!277 = !{i64 2158213362}
!278 = !{i64 2158214276}
!279 = !{i64 2158126023}
!280 = !{i64 2158126253}
!281 = !{i8 0, i8 2}
!282 = !{i64 2158221032}
!283 = !{i64 2158195283}
!284 = !{i64 2158195846}
!285 = !{i64 2158196409}
!286 = !{i64 2158196972}
!287 = !{i64 2158197535}
!288 = !{i64 2158198102}
!289 = !{i64 2158198669}
!290 = !{i64 2158199236}
!291 = !{i64 2158199803}
!292 = !{i64 2158200366}
!293 = !{i64 2158200929}
!294 = !{i64 2158201492}
!295 = !{i64 2158202055}
!296 = !{i64 2158202618}
!297 = !{i64 2158203185}
!298 = !{i64 2158203752}
!299 = !{i64 2158204319}
!300 = !{i64 2158204886}
!301 = !{i64 2158155997}
!302 = !{i64 2158126753}
!303 = !{i64 915362}
!304 = !{i64 2154317406, i64 2154317890, i64 2154317443, i64 2154317499, i64 2154317533, i64 2154317557, i64 2154317598, i64 2154317619, i64 2154317647, i64 2154317681}
!305 = !{i64 2148417074, i64 2148417100, i64 2148417129, i64 2148417163, i64 2148417194, i64 2148417217}
!306 = !{i64 2158205584}
!307 = !{!"auto-init"}
!308 = !{i64 2158222486}
!309 = !{i64 7889799}
!310 = !{i64 2158223081, i64 2158223588, i64 2158223118, i64 2158223174, i64 2158223208, i64 2158223232, i64 2158223273, i64 2158223294, i64 2158223322, i64 2158223356}
!311 = !{i64 2158229017, i64 2158229524, i64 2158229054, i64 2158229110, i64 2158229144, i64 2158229168, i64 2158229209, i64 2158229230, i64 2158229258, i64 2158229292}
!312 = !{i64 2158232849}
!313 = !{i64 2158233079}
!314 = !{i64 2158140152}
!315 = !{i64 2158141789}
!316 = !{i64 2158139660}
!317 = !{i64 2158138824}
!318 = !{i64 2158139308}
