; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/jme.c_pt.bc'
source_filename = "../drivers/net/ethernet/jme.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.149, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.149 = type { ptr }
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
%struct.rxdesc = type { %union.anon.155 }
%union.anon.155 = type { [4 x i32] }
%struct.jme_buffer_info = type { ptr, i32, i32, i32, i32 }
%struct.anon.156 = type { i16, i8, i8, i16, i16, i32, i32 }
%struct.jme_adapter = type { ptr, ptr, ptr, %struct.mii_if_info, [4 x %struct.jme_ring], [8 x %struct.jme_ring], %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.work_struct, %struct.tasklet_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i32, %struct.ethtool_link_ksettings, i32, %struct.dynpcc_info, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.napi_struct }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.jme_ring = type { ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, %struct.atomic_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.150, i32 }
%union.anon.150 = type { ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.147, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.147 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.dynpcc_info = type { i32, i32, i32, i8, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.txdesc = type { %union.anon.151 }
%union.anon.151 = type { [4 x i32] }
%struct.anon.152 = type { i16, i8, i8, i16, i16, i16, i16, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.anon.153 = type { i16, i8, i8, i16, i16, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.132, %union.anon.133 }
%union.anon.132 = type { [16 x i8] }
%union.anon.133 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.anon.154 = type { i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.anon.157 = type { i16, i16, i16, i8, i8, i32, i8, i8, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }

@__param_str_force_pseudohp = internal constant [19 x i8] c"jme.force_pseudohp\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_pseudohp = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_force_pseudohp = internal constant %struct.kernel_param { ptr @__param_str_force_pseudohp, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @force_pseudohp } }, section "__param", align 4
@__UNIQUE_ID_force_pseudohptype496 = internal constant [32 x i8] c"jme.parmtype=force_pseudohp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_pseudohp497 = internal constant [91 x i8] c"jme.parm=force_pseudohp:Enable pseudo hot-plug feature manually by driver instead of BIOS.\00", section ".modinfo", align 1
@__param_str_no_pseudohp = internal constant [16 x i8] c"jme.no_pseudohp\00", align 1
@no_pseudohp = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_no_pseudohp = internal constant %struct.kernel_param { ptr @__param_str_no_pseudohp, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @no_pseudohp } }, section "__param", align 4
@__UNIQUE_ID_no_pseudohptype498 = internal constant [29 x i8] c"jme.parmtype=no_pseudohp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_pseudohp499 = internal constant [54 x i8] c"jme.parm=no_pseudohp:Disable pseudo hot-plug feature.\00", section ".modinfo", align 1
@__param_str_no_extplug = internal constant [15 x i8] c"jme.no_extplug\00", align 1
@no_extplug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_no_extplug = internal constant %struct.kernel_param { ptr @__param_str_no_extplug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @no_extplug } }, section "__param", align 4
@__UNIQUE_ID_no_extplugtype500 = internal constant [28 x i8] c"jme.parmtype=no_extplug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_extplug501 = internal constant [73 x i8] c"jme.parm=no_extplug:Do not use external plug signal for pseudo hot-plug.\00", section ".modinfo", align 1
@jme_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @jme_pci_tbl, ptr @jme_init_one, ptr @jme_remove_one, ptr null, ptr null, ptr @jme_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jme_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_jme__502_3273_jme_init_module6 = internal global ptr @jme_init_module, section ".initcall6.init", align 4
@__exitcall_jme_cleanup_module = internal global ptr @jme_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author503 = internal constant [50 x i8] c"jme.author=Guo-Fu Tseng <cooldavid@cooldavid.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description504 = internal constant [59 x i8] c"jme.description=JMicron JMC2x0 PCI Express Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file505 = internal constant [34 x i8] c"jme.file=drivers/net/ethernet/jme\00", section ".modinfo", align 1
@__UNIQUE_ID_license506 = internal constant [16 x i8] c"jme.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version507 = internal constant [18 x i8] c"jme.version=1.0.8\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"jme\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.8\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@jme_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 6523, i32 592, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6523, i32 608, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@jme_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @jme_suspend, ptr @jme_resume, ptr @jme_suspend, ptr @jme_resume, ptr @jme_suspend, ptr @jme_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@jme_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013jme: Cannot enable PCI device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jme_init_one\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/ethernet/jme.c\00", [37 x i8] zeroinitializer }, align 32
@jme_init_one._entry_ptr = internal global ptr @jme_init_one._entry, section ".printk_index", align 4
@jme_init_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 2927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013jme: Cannot set PCI DMA Mask\0A\00", [32 x i8] zeroinitializer }, align 32
@jme_init_one._entry_ptr.8 = internal global ptr @jme_init_one._entry.6, section ".printk_index", align 4
@jme_init_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 2933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013jme: No PCI resource region found\0A\00", [59 x i8] zeroinitializer }, align 32
@jme_init_one._entry_ptr.11 = internal global ptr @jme_init_one._entry.9, section ".printk_index", align 4
@jme_init_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 2940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013jme: Cannot obtain PCI resource region\0A\00", [54 x i8] zeroinitializer }, align 32
@jme_init_one._entry_ptr.14 = internal global ptr @jme_init_one._entry.12, section ".printk_index", align 4
@jme_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @jme_open, ptr @jme_close, ptr @jme_start_xmit, ptr null, ptr null, ptr null, ptr @jme_set_multi, ptr @jme_set_macaddr, ptr @eth_validate_addr, ptr null, ptr @jme_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @jme_change_mtu, ptr null, ptr @jme_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jme_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jme_fix_features, ptr @jme_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@jme_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 563, i32 0, ptr @jme_get_drvinfo, ptr @jme_get_regs_len, ptr @jme_get_regs, ptr @jme_get_wol, ptr @jme_set_wol, ptr @jme_get_msglevel, ptr @jme_set_msglevel, ptr @jme_nway_reset, ptr @jme_get_link, ptr null, ptr @jme_get_eeprom_len, ptr @jme_get_eeprom, ptr @jme_set_eeprom, ptr @jme_get_coalesce, ptr @jme_set_coalesce, ptr null, ptr null, ptr null, ptr @jme_get_pauseparam, ptr @jme_set_pauseparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jme_get_link_ksettings, ptr @jme_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@jme_init_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 2998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013jme: Mapping PCI resource region error\0A\00", [54 x i8] zeroinitializer }, align 32
@jme_init_one._entry_ptr.17 = internal global ptr @jme_init_one._entry.15, section ".printk_index", align 4
@jme_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&jme->phy_lock\00", [17 x i8] zeroinitializer }, align 32
@jme_init_one.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&jme->macaddr_lock\00", [45 x i8] zeroinitializer }, align 32
@jme_init_one.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&jme->rxmcs_lock\00", [47 x i8] zeroinitializer }, align 32
@jme_init_one.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&jme->linkch_task)\00", [59 x i8] zeroinitializer }, align 32
@jme_init_one._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 3071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013jme: Can not find phy_id\0A\00", [36 x i8] zeroinitializer }, align 32
@jme_init_one._entry_ptr.27 = internal global ptr @jme_init_one._entry.25, section ".printk_index", align 4
@jme_init_one._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 3103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013jme: Reload eeprom for reading MAC Address error\0A\00", [44 x i8] zeroinitializer }, align 32
@jme_init_one._entry_ptr.30 = internal global ptr @jme_init_one._entry.28, section ".printk_index", align 4
@jme_init_one._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 3115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013jme: Cannot register net device\0A\00", [61 x i8] zeroinitializer }, align 32
@jme_init_one._entry_ptr.33 = internal global ptr @jme_init_one._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s%s chiprev:%x pcirev:%x macaddr:%pM\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"JMC250 Gigabit Ethernet\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"JMC260 Fast Ethernet\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (FPGA)\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX Queue Waked\0A\00", [16 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TCP Checksum error\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"UDP Checksum error\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IPv4 Checksum error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX Queue Full!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to request %s interrupt (return: %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INTx\00", [27 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Switched to PCC_P%d\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jme_disable_rx_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013jme: Disable RX engine timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jme_disable_rx_engine\00", [42 x i8] zeroinitializer }, align 32
@jme_disable_rx_engine._entry_ptr = internal global ptr @jme_disable_rx_engine._entry, section ".printk_index", align 4
@jme_disable_tx_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013jme: Disable TX engine timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jme_disable_tx_engine\00", [42 x i8] zeroinitializer }, align 32
@jme_disable_tx_engine._entry_ptr = internal global ptr @jme_disable_tx_engine._entry, section ".printk_index", align 4
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BUG! Tx ring full when queue awake!\0A\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error upper layer protocol\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX Queue Paused\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX Queue Fast Waked\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TX Queue Stopped %d@%lu\0A\00", [39 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SMB Bus Busy\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Get link change lock failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Waiting link change lock\0A\00", [38 x i8] zeroinitializer }, align 32
@jme_link_change_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013jme: Allocating resources for RX error, Device STOPPED!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jme_link_change_work\00", [43 x i8] zeroinitializer }, align 32
@jme_link_change_work._entry_ptr = internal global ptr @jme_link_change_work._entry, section ".printk_index", align 4
@jme_link_change_work._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.5, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013jme: Allocating resources for TX error, Device STOPPED!\0A\00", [37 x i8] zeroinitializer }, align 32
@jme_link_change_work._entry_ptr.68 = internal global ptr @jme_link_change_work._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Forced: \00", [23 x i8] zeroinitializer }, align 32
@jme_check_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013jme: Waiting speed resolve timeout\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jme_check_link\00", [17 x i8] zeroinitializer }, align 32
@jme_check_link._entry_ptr = internal global ptr @jme_check_link._entry, section ".printk_index", align 4
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ANed: \00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10 Mbps, \00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"100 Mbps, \00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1000 Mbps, \00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Full-Duplex, \00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Half-Duplex, \00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MDI-X\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MDI\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Link is up at %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link is down\0A\00", [18 x i8] zeroinitializer }, align 32
@jme_mdio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.5, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013jme: phy(%d) read timeout : %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jme_mdio_read\00", [18 x i8] zeroinitializer }, align 32
@jme_mdio_read._entry_ptr = internal global ptr @jme_mdio_read._entry, section ".printk_index", align 4
@jme_mdio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.5, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013jme: phy(%d) write timeout : %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jme_mdio_write\00", [17 x i8] zeroinitializer }, align 32
@jme_mdio_write._entry_ptr = internal global ptr @jme_mdio_write._entry, section ".printk_index", align 4
@jme_reload_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.5, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013jme: eeprom reload timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jme_reload_eeprom\00", [46 x i8] zeroinitializer }, align 32
@jme_reload_eeprom._entry_ptr = internal global ptr @jme_reload_eeprom._entry, section ".printk_index", align 4
@jme_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.5, i32 3263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016jme: JMicron JMC2XX ethernet driver version %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jme_init_module\00", [16 x i8] zeroinitializer }, align 32
@jme_init_module._entry_ptr = internal global ptr @jme_init_module._entry, section ".printk_index", align 4
@switch.table.jme_get_coalesce = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 64, i32 128], [20 x i8] zeroinitializer }, align 32
@switch.table.jme_get_coalesce.90 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 16, i32 32], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 16, i64 592, i64 608]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 16384, i64 32768]
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"force_pseudohp\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 34, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"no_pseudohp\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 35, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant [11 x i8] c"no_extplug\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 36, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"jme_driver\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3251, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3279, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"jme_pci_tbl\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3245, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [11 x i8] c"jme_pm_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3237, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2921, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2927, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2933, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2940, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"jme_netdev_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2886, i32 36 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"jme_ethtool_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2823, i32 33 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2998, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3013, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3014, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3015, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3023, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3071, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3103, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3115, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3119, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1406, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 973, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 980, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 986, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1386, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1629, i32 7 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1630, i32 45 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1630, i32 53 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 350, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 930, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 695, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2210, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2093, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2172, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2177, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2185, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 2718, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1270, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1272, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1305, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1311, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 446, i32 20 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 462, i32 5 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 464, i32 20 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 483, i32 20 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 487, i32 20 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 491, i32 20 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 535, i32 6 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 536, i32 6 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 538, i32 6 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 539, i32 6 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 540, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 546, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 66, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 95, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 292, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.389 = private constant [30 x i8] c"../drivers/net/ethernet/jme.c\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 3263, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [30 x i8] c"switch.table.jme_get_coalesce\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [33 x i8] c"switch.table.jme_get_coalesce.90\00", align 1
@llvm.compiler.used = appending global [134 x ptr] [ptr @__UNIQUE_ID_author503, ptr @__UNIQUE_ID_description504, ptr @__UNIQUE_ID_file505, ptr @__UNIQUE_ID_force_pseudohp497, ptr @__UNIQUE_ID_force_pseudohptype496, ptr @__UNIQUE_ID_license506, ptr @__UNIQUE_ID_no_extplug501, ptr @__UNIQUE_ID_no_extplugtype500, ptr @__UNIQUE_ID_no_pseudohp499, ptr @__UNIQUE_ID_no_pseudohptype498, ptr @__UNIQUE_ID_version507, ptr @__exitcall_jme_cleanup_module, ptr @__initcall__kmod_jme__502_3273_jme_init_module6, ptr @__modver_attr, ptr @__param_force_pseudohp, ptr @__param_no_extplug, ptr @__param_no_pseudohp, ptr @jme_check_link._entry, ptr @jme_check_link._entry_ptr, ptr @jme_cleanup_module, ptr @jme_disable_rx_engine._entry, ptr @jme_disable_rx_engine._entry_ptr, ptr @jme_disable_tx_engine._entry, ptr @jme_disable_tx_engine._entry_ptr, ptr @jme_init_module._entry, ptr @jme_init_module._entry_ptr, ptr @jme_init_one._entry, ptr @jme_init_one._entry.12, ptr @jme_init_one._entry.15, ptr @jme_init_one._entry.25, ptr @jme_init_one._entry.28, ptr @jme_init_one._entry.31, ptr @jme_init_one._entry.6, ptr @jme_init_one._entry.9, ptr @jme_init_one._entry_ptr, ptr @jme_init_one._entry_ptr.11, ptr @jme_init_one._entry_ptr.14, ptr @jme_init_one._entry_ptr.17, ptr @jme_init_one._entry_ptr.27, ptr @jme_init_one._entry_ptr.30, ptr @jme_init_one._entry_ptr.33, ptr @jme_init_one._entry_ptr.8, ptr @jme_link_change_work._entry, ptr @jme_link_change_work._entry.66, ptr @jme_link_change_work._entry_ptr, ptr @jme_link_change_work._entry_ptr.68, ptr @jme_mdio_read._entry, ptr @jme_mdio_read._entry_ptr, ptr @jme_mdio_write._entry, ptr @jme_mdio_write._entry_ptr, ptr @jme_reload_eeprom._entry, ptr @jme_reload_eeprom._entry_ptr, ptr @force_pseudohp, ptr @no_pseudohp, ptr @no_extplug, ptr @jme_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @jme_pci_tbl, ptr @jme_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @jme_netdev_ops, ptr @jme_ethtool_ops, ptr @.str.16, ptr @jme_init_one.__key, ptr @.str.18, ptr @jme_init_one.__key.19, ptr @.str.20, ptr @jme_init_one.__key.21, ptr @.str.22, ptr @jme_init_one.__key.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @switch.table.jme_get_coalesce, ptr @switch.table.jme_get_coalesce.90], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_pseudohp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_pseudohp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_extplug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_one._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_disable_rx_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_disable_tx_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_link_change_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_link_change_work._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_check_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_mdio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_mdio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_reload_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jme_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jme_get_coalesce to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jme_get_coalesce.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jme_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @pci_unregister_driver(ptr noundef nonnull @jme_driver) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.2) #23
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @jme_driver, ptr noundef null, ptr noundef nonnull @.str.1) #20
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %macaddr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_disable_link_state(ptr noundef %pdev, i32 noundef 7) #20
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 592, i16 %1)
  %cmp.i = icmp eq i16 %1, 592
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end11.i_crit_edge

if.end.if.end11.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i.i371 = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef -1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i371)
  %cmp.i.i = icmp eq i32 %call.i.i371, 0
  br i1 %cmp.i.i, label %dma_set_mask_and_coherent.exit.thread.i, label %if.end.i

dma_set_mask_and_coherent.exit.thread.i:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef -1) #20
  br label %if.end10

if.end.i:                                         ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %.pr.i = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 592, i16 %.pr.i)
  %cmp4.i = icmp eq i16 %.pr.i, 592
  br i1 %cmp4.i, label %land.lhs.true6.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i

land.lhs.true6.i:                                 ; preds = %if.end.i
  %call.i21.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 1099511627775) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %cmp.i22.i = icmp eq i32 %call.i21.i, 0
  br i1 %cmp.i22.i, label %dma_set_mask_and_coherent.exit25.thread.i, label %land.lhs.true6.i.if.end11.i_crit_edge

land.lhs.true6.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i

dma_set_mask_and_coherent.exit25.thread.i:        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #22
  %call1.i23.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef 1099511627775) #20
  br label %if.end10

if.end11.i:                                       ; preds = %land.lhs.true6.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge, %if.end.if.end11.i_crit_edge
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i26.i = tail call i32 @dma_set_mask(ptr noundef %dev12.i, i64 noundef 4294967295) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %cmp.i27.i = icmp eq i32 %call.i26.i, 0
  br i1 %cmp.i27.i, label %jme_pci_dma64.exit, label %do.end7

jme_pci_dma64.exit:                               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #22
  %call1.i28.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev12.i, i64 noundef 4294967295) #20
  br label %if.end10

do.end7:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #22
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #23
  br label %err_out_disable_pdev

if.end10:                                         ; preds = %jme_pci_dma64.exit, %dma_set_mask_and_coherent.exit25.thread.i, %dma_set_mask_and_coherent.exit.thread.i
  %tobool32.not = phi i64 [ 1114547, %dma_set_mask_and_coherent.exit25.thread.i ], [ 1114547, %dma_set_mask_and_coherent.exit.thread.i ], [ 1114515, %jme_pci_dma64.exit ]
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #23
  br label %err_out_disable_pdev

if.end18:                                         ; preds = %if.end10
  %call19 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #23
  br label %err_out_disable_pdev

if.end27:                                         ; preds = %if.end18
  tail call void @pci_set_master(ptr noundef %pdev) #20
  %call28 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1128, i32 noundef 1, i32 noundef 1) #20
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.err_out_release_regions_crit_edge, label %if.end31

if.end27.err_out_release_regions_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_release_regions

if.end31:                                         ; preds = %if.end27
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @jme_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 44
  %6 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @jme_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 115
  %7 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 500, ptr %watchdog_timeo, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 24
  %8 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1099512741907, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 23
  %9 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %tobool32.not, ptr %features, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 30
  %10 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1280, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 31
  %11 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 9202, ptr %max_mtu, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 133, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call28, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call28, i32 2304
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdev, ptr %add.ptr.i, align 8
  %dev39 = getelementptr i8, ptr %call28, i32 2308
  %15 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call28, ptr %dev39, align 4
  %jme_rx = getelementptr i8, ptr %call28, i32 3204
  %16 = ptrtoint ptr %jme_rx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @netif_rx, ptr %jme_rx, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 20
  %17 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1500, ptr %mtu, align 4
  %old_mtu = getelementptr i8, ptr %call28, i32 3164
  %18 = ptrtoint ptr %old_mtu to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1500, ptr %old_mtu, align 4
  %phylink = getelementptr i8, ptr %call28, i32 3036
  %19 = ptrtoint ptr %phylink to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %phylink, align 4
  %tx_ring_size = getelementptr i8, ptr %call28, i32 3040
  %20 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1024, ptr %tx_ring_size, align 8
  %tx_ring_mask = getelementptr i8, ptr %call28, i32 3044
  %21 = ptrtoint ptr %tx_ring_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1023, ptr %tx_ring_mask, align 4
  %tx_wake_threshold = getelementptr i8, ptr %call28, i32 3048
  %22 = ptrtoint ptr %tx_wake_threshold to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 512, ptr %tx_wake_threshold, align 8
  %rx_ring_size = getelementptr i8, ptr %call28, i32 3052
  %23 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 512, ptr %rx_ring_size, align 4
  %rx_ring_mask = getelementptr i8, ptr %call28, i32 3056
  %24 = ptrtoint ptr %rx_ring_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 511, ptr %rx_ring_mask, align 8
  %msg_enable = getelementptr i8, ptr %call28, i32 3072
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8390, ptr %msg_enable, align 8
  %26 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %28 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp47 = icmp eq i32 %29, 0
  %sub54 = sub i32 1, %27
  %add = add i32 %sub54, %29
  %cond = select i1 %cmp47, i32 0, i32 %add
  %call55 = tail call ptr @ioremap(i32 noundef %27, i32 noundef %cond) #20
  %regs = getelementptr i8, ptr %call28, i32 2312
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call55, ptr %regs, align 8
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %do.end61, label %if.end64

do.end61:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #23
  br label %err_out_free_netdev

if.end64:                                         ; preds = %if.end31
  %31 = load i32, ptr @no_pseudohp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool65.not = icmp eq i32 %31, 0
  br i1 %tobool65.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i372 = getelementptr i8, ptr %call55, i32 2172
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i372) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %33 = and i32 %32, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  %add.ptr.i374 = getelementptr i8, ptr %35, i32 2172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i374, i32 %33) #20, !srcloc !224
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  %add.ptr2.i = getelementptr i8, ptr %37, i32 2172
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %if.end101

if.else:                                          ; preds = %if.end64
  %39 = load i32, ptr @force_pseudohp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool69.not = icmp eq i32 %39, 0
  br i1 %tobool69.not, label %if.else.if.end101_crit_edge, label %if.then70

if.else.if.end101_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end101

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i376 = getelementptr i8, ptr %call55, i32 2172
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i376) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %41 = or i32 %40, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 8
  %add.ptr.i378 = getelementptr i8, ptr %43, i32 2172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i378, i32 %41) #20, !srcloc !224
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %add.ptr2.i379 = getelementptr i8, ptr %45, i32 2172
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i379) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %if.end101

if.end101:                                        ; preds = %if.then70, %if.else.if.end101_crit_edge, %if.then66
  %napi = getelementptr i8, ptr %call28, i32 3208
  tail call void @netif_napi_add(ptr noundef nonnull %call28, ptr noundef %napi, ptr noundef nonnull @jme_poll, i32 noundef 64) #20
  %phy_lock = getelementptr i8, ptr %call28, i32 2732
  tail call void @__raw_spin_lock_init(ptr noundef %phy_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @jme_init_one.__key, i16 noundef signext 3) #20
  %macaddr_lock = getelementptr i8, ptr %call28, i32 2776
  tail call void @__raw_spin_lock_init(ptr noundef %macaddr_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @jme_init_one.__key.19, i16 noundef signext 3) #20
  %rxmcs_lock = getelementptr i8, ptr %call28, i32 2820
  tail call void @__raw_spin_lock_init(ptr noundef %rxmcs_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @jme_init_one.__key.21, i16 noundef signext 3) #20
  %link_changing = getelementptr i8, ptr %call28, i32 3188
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_changing, i32 noundef 4) #20
  %47 = ptrtoint ptr %link_changing to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %link_changing, align 4
  %rx_cleaning = getelementptr i8, ptr %call28, i32 3196
  %call.i.i368 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cleaning, i32 noundef 4) #20
  %48 = ptrtoint ptr %rx_cleaning to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %rx_cleaning, align 4
  %tx_cleaning = getelementptr i8, ptr %call28, i32 3192
  %call.i.i369 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cleaning, i32 noundef 4) #20
  %49 = ptrtoint ptr %tx_cleaning to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 1, ptr %tx_cleaning, align 4
  %rx_empty = getelementptr i8, ptr %call28, i32 3200
  %call.i.i370 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_empty, i32 noundef 4) #20
  %50 = ptrtoint ptr %rx_empty to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 1, ptr %rx_empty, align 4
  %pcc_task = getelementptr i8, ptr %call28, i32 2980
  tail call void @tasklet_setup(ptr noundef %pcc_task, ptr noundef nonnull @jme_pcc_tasklet) #20
  %linkch_task = getelementptr i8, ptr %call28, i32 2936
  tail call void @__init_work(ptr noundef %linkch_task, i32 noundef 0) #20
  %51 = ptrtoint ptr %linkch_task to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -64, ptr %linkch_task, align 8
  %lockdep_map = getelementptr i8, ptr %call28, i32 2952
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @jme_init_one.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry91 = getelementptr i8, ptr %call28, i32 2940
  %52 = ptrtoint ptr %entry91 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %entry91, ptr %entry91, align 4
  %prev.i = getelementptr i8, ptr %call28, i32 2944
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %entry91, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call28, i32 2948
  %54 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @jme_link_change_work, ptr %func, align 4
  %cur = getelementptr i8, ptr %call28, i32 3180
  %55 = ptrtoint ptr %cur to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %cur, align 4
  %reg_ghc = getelementptr i8, ptr %call28, i32 3024
  %56 = ptrtoint ptr %reg_ghc to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %reg_ghc, align 8
  %reg_rxcs = getelementptr i8, ptr %call28, i32 3016
  %57 = ptrtoint ptr %reg_rxcs to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 855640064, ptr %reg_rxcs, align 8
  %reg_rxmcs = getelementptr i8, ptr %call28, i32 3020
  %58 = ptrtoint ptr %reg_rxmcs to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 15, ptr %reg_rxmcs, align 4
  %reg_txpfc = getelementptr i8, ptr %call28, i32 3012
  %59 = ptrtoint ptr %reg_txpfc to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %reg_txpfc, align 4
  %reg_pmcs = getelementptr i8, ptr %call28, i32 3028
  %60 = ptrtoint ptr %reg_pmcs to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %reg_pmcs, align 4
  %reg_gpreg1 = getelementptr i8, ptr %call28, i32 3032
  %61 = ptrtoint ptr %reg_gpreg1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 131072, ptr %reg_gpreg1, align 8
  %62 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %features, align 16
  %or100 = or i64 %63, 1099511627776
  store i64 %or100, ptr %features, align 16
  %mrrs = getelementptr i8, ptr %call28, i32 3060
  %call102 = tail call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 89, ptr noundef %mrrs) #20
  %64 = ptrtoint ptr %mrrs to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mrrs, align 4
  %66 = and i8 %65, 112
  store i8 %66, ptr %mrrs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %66)
  %switch.selectcmp = icmp eq i8 %66, 16
  %switch.select = select i1 %switch.selectcmp, i32 36, i32 52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %switch.selectcmp410 = icmp eq i8 %66, 0
  %switch.select411 = select i1 %switch.selectcmp410, i32 20, i32 %switch.select
  %reg_txcs110 = getelementptr i8, ptr %call28, i32 3008
  %67 = ptrtoint ptr %reg_txcs110 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %switch.select411, ptr %reg_txcs110, align 8
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 8
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 2116
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !221
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %shr.i = lshr i32 %71, 16
  %fpgaver.i = getelementptr i8, ptr %call28, i32 3064
  %72 = ptrtoint ptr %fpgaver.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shr.i, ptr %fpgaver.i, align 8
  %and1.i = lshr i32 %71, 8
  %conv.i = trunc i32 %and1.i to i8
  %chiprev.i = getelementptr i8, ptr %call28, i32 3068
  %73 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.i, ptr %chiprev.i, align 4
  %conv6.i = and i8 %conv.i, 15
  %chip_main_rev.i = getelementptr i8, ptr %call28, i32 3069
  %74 = ptrtoint ptr %chip_main_rev.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv6.i, ptr %chip_main_rev.i, align 1
  %conv8.i = lshr i32 %71, 12
  %75 = trunc i32 %conv8.i to i8
  %conv11.i = and i8 %75, 15
  %chip_sub_rev.i = getelementptr i8, ptr %call28, i32 3070
  %76 = ptrtoint ptr %chip_sub_rev.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv11.i, ptr %chip_sub_rev.i, align 2
  %mii_if = getelementptr i8, ptr %call28, i32 2316
  %dev111 = getelementptr i8, ptr %call28, i32 2336
  %77 = ptrtoint ptr %dev111 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call28, ptr %dev111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %71)
  %tobool112.not = icmp ult i32 %71, 65536
  br i1 %tobool112.not, label %if.else146, label %if.then113

if.then113:                                       ; preds = %if.end101
  %78 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %mii_if, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then113
  %i.0406 = phi i32 [ 1, %if.then113 ], [ %inc, %for.inc.for.body_crit_edge ]
  %call117 = tail call i32 @jme_mdio_read(ptr noundef %call28, i32 noundef %i.0406, i32 noundef 0)
  %call119 = tail call i32 @jme_mdio_read(ptr noundef %call28, i32 noundef %i.0406, i32 noundef 1)
  %trunc = trunc i32 %call117 to i16
  %79 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %for.body.if.then130_crit_edge [
    i16 -1, label %for.body.for.inc_crit_edge
    i16 0, label %lor.lhs.false
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.body.if.then130_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then130

lor.lhs.false:                                    ; preds = %for.body
  %conv127 = and i32 %call119, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv127)
  %cmp128.not = icmp eq i32 %conv127, 0
  br i1 %cmp128.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then130_crit_edge

lor.lhs.false.if.then130_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then130

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then130:                                       ; preds = %lor.lhs.false.if.then130_crit_edge, %for.body.if.then130_crit_edge
  %80 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %i.0406, ptr %mii_if, align 4
  br label %if.end143

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0406, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.endthread-pre-split, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.endthread-pre-split:                          ; preds = %for.inc
  %81 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr = load i32, ptr %mii_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %phi.cmp = icmp eq i32 %.pr, 0
  br i1 %phi.cmp, label %if.then137, label %for.endthread-pre-split.if.end143_crit_edge

for.endthread-pre-split.if.end143_crit_edge:      ; preds = %for.endthread-pre-split
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end143

if.then137:                                       ; preds = %for.endthread-pre-split
  call void @__sanitizer_cov_trace_pc() #22
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #23
  br label %err_out_unmap

if.end143:                                        ; preds = %for.endthread-pre-split.if.end143_crit_edge, %if.then130
  %82 = ptrtoint ptr %reg_ghc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %reg_ghc, align 8
  %or145 = or i32 %83, 1
  store i32 %or145, ptr %reg_ghc, align 8
  br label %if.end149

if.else146:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #22
  %84 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %mii_if, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.else146, %if.end143
  %85 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 592, i16 %86)
  %cmp151 = icmp eq i16 %86, 592
  %supports_gmii = getelementptr i8, ptr %call28, i32 2332
  %87 = ptrtoint ptr %supports_gmii to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load = load i8, ptr %supports_gmii, align 4
  %bf.clear159 = and i8 %bf.load, -33
  %masksel = select i1 %cmp151, i8 32, i8 0
  %bf.clear159.sink = or i8 %bf.clear159, %masksel
  store i8 %bf.clear159.sink, ptr %supports_gmii, align 4
  %phy_id_mask = getelementptr i8, ptr %call28, i32 2324
  %88 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call28, i32 2328
  %89 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 31, ptr %reg_num_mask, align 4
  %mdio_read = getelementptr i8, ptr %call28, i32 2340
  %90 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @jme_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call28, i32 2344
  %91 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @jme_mdio_write, ptr %mdio_write, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 8
  %add.ptr.i.i381 = getelementptr i8, ptr %93, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i381, i32 65535) #20, !srcloc !224
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %95, i32 96
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %call167 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #20
  %97 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev39, align 4
  %99 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mii_if, align 4
  %shl.i.i.i = shl i32 %100, 6
  %and.i.i.i = and i32 %shl.i.i.i, 1984
  %or4.i.i = or i32 %and.i.i.i, 317488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %101 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #20
  %regs.i.i.i = getelementptr i8, ptr %98, i32 2312
  %102 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i22.i.i = getelementptr i8, ptr %103, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %101) #20, !srcloc !224
  %104 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %105, i32 80
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end149
  %i.027.i.i = phi i32 [ 5000, %if.end149 ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 4294960) #20
  %108 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i24.i.i = getelementptr i8, ptr %109, i32 80
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %111 = and i32 %110, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp7.i.i = icmp eq i32 %111, 0
  br i1 %cmp7.i.i, label %for.body.i.i.jme_set_phyfifo_5level.exit_crit_edge, label %for.inc.i.i

for.body.i.i.jme_set_phyfifo_5level.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_set_phyfifo_5level.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %i.027.i.i, -1
  %cmp.i.i383 = icmp ugt i32 %i.027.i.i, 1
  br i1 %cmp.i.i383, label %for.inc.i.i.for.body.i.i_crit_edge, label %do.end12.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

do.end12.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %100, i32 noundef 27) #23
  br label %jme_set_phyfifo_5level.exit

jme_set_phyfifo_5level.exit:                      ; preds = %do.end12.i.i, %for.body.i.i.jme_set_phyfifo_5level.exit_crit_edge
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %112 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %revision, align 4
  %pcirev = getelementptr i8, ptr %call28, i32 3071
  %114 = ptrtoint ptr %pcirev to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %pcirev, align 1
  %115 = ptrtoint ptr %fpgaver.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fpgaver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool169.not = icmp eq i32 %116, 0
  br i1 %tobool169.not, label %if.then170, label %jme_set_phyfifo_5level.exit.if.end171_crit_edge

jme_set_phyfifo_5level.exit.if.end171_crit_edge:  ; preds = %jme_set_phyfifo_5level.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end171

if.then170:                                       ; preds = %jme_set_phyfifo_5level.exit
  call void @__sanitizer_cov_trace_pc() #22
  %117 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev39, align 4
  %119 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mii_if, align 4
  %call.i = tail call i32 @jme_mdio_read(ptr noundef %118, i32 noundef %120, i32 noundef 26) #20
  %121 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev39, align 4
  %123 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mii_if, align 4
  %conv4.i = and i32 %call.i, 61439
  %or.i = or i32 %conv4.i, 4096
  tail call void @jme_mdio_write(ptr noundef %122, i32 noundef %124, i32 noundef 26, i32 noundef %or.i) #20
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %jme_set_phyfifo_5level.exit.if.end171_crit_edge
  tail call fastcc void @jme_phy_off(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_reset_mac_processor(ptr noundef %add.ptr.i)
  %125 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs, align 8
  %add.ptr.i.i387 = getelementptr i8, ptr %126, i32 1088
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i387) #20, !srcloc !221
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %and.i = and i32 %128, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end171.if.end180_crit_edge, label %if.then.i

if.end171.if.end180_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end180

if.then.i:                                        ; preds = %if.end171
  %or.i388 = or i32 %128, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %129 = tail call i32 @llvm.bswap.i32(i32 %or.i388) #20
  %130 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %131, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %129) #20, !srcloc !224
  %132 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs, align 8
  %add.ptr2.i.i389 = getelementptr i8, ptr %133, i32 1088
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i389) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %or1.i = or i32 %128, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %135 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #20
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %137, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %135) #20, !srcloc !224
  %138 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs, align 8
  %add.ptr2.i27.i = getelementptr i8, ptr %139, i32 1088
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i27.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i
  %i.033.i = phi i32 [ %dec7.i, %for.inc.i.for.body.i_crit_edge ], [ 2000, %if.then.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #20
  %154 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %155, i32 1088
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %157 = and i32 %156, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp5.i = icmp eq i32 %157, 0
  br i1 %cmp5.i, label %for.body.i.if.end180_crit_edge, label %for.inc.i

for.body.i.if.end180_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end180

for.inc.i:                                        ; preds = %for.body.i
  %dec7.i = add nsw i32 %i.033.i, -1
  %cmp.i390 = icmp ugt i32 %i.033.i, 1
  br i1 %cmp.i390, label %for.inc.i.for.body.i_crit_edge, label %do.end177

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

do.end177:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #23
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #23
  br label %err_out_unmap

if.end180:                                        ; preds = %for.body.i.if.end180_crit_edge, %if.end171.if.end180_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %macaddr.i) #20
  %158 = getelementptr inbounds [6 x i8], ptr %macaddr.i, i32 0, i32 1
  %159 = getelementptr inbounds [6 x i8], ptr %macaddr.i, i32 0, i32 2
  %160 = getelementptr inbounds [6 x i8], ptr %macaddr.i, i32 0, i32 3
  %161 = getelementptr inbounds [6 x i8], ptr %macaddr.i, i32 0, i32 4
  %162 = getelementptr inbounds [6 x i8], ptr %macaddr.i, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %macaddr_lock) #20
  %163 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs, align 8
  %add.ptr.i33.i = getelementptr i8, ptr %164, i32 56
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #20, !srcloc !221
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %conv.i393 = trunc i32 %166 to i8
  %167 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv.i393, ptr %macaddr.i, align 1
  %shr2.i = lshr i32 %166, 8
  %conv4.i394 = trunc i32 %shr2.i to i8
  %168 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv4.i394, ptr %158, align 1
  %shr6.i = lshr i32 %166, 16
  %conv8.i395 = trunc i32 %shr6.i to i8
  %169 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv8.i395, ptr %159, align 1
  %shr10.i = lshr i32 %166, 24
  %conv12.i = trunc i32 %shr10.i to i8
  %170 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv12.i, ptr %160, align 1
  %171 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs, align 8
  %add.ptr.i35.i = getelementptr i8, ptr %172, i32 60
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #20, !srcloc !221
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %conv17.i = trunc i32 %174 to i8
  %175 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv17.i, ptr %161, align 1
  %shr19.i = lshr i32 %174, 8
  %conv21.i = trunc i32 %shr19.i to i8
  %176 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv21.i, ptr %162, align 1
  call void @dev_addr_mod(ptr noundef %call28, i32 noundef 0, ptr noundef nonnull %macaddr.i, i32 noundef 6) #20
  call void @_raw_spin_unlock_bh(ptr noundef %macaddr_lock) #20
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %macaddr.i) #20
  call void @netif_carrier_off(ptr noundef %call28) #20
  %call181 = call i32 @register_netdev(ptr noundef %call28) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %do.body190, label %do.end186

do.end186:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #22
  %call188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #23
  br label %err_out_unmap

do.body190:                                       ; preds = %if.end180
  %177 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %msg_enable, align 8
  %and192 = and i32 %178, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %do.body190.cleanup_crit_edge, label %if.then194

do.body190.cleanup_crit_edge:                     ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then194:                                       ; preds = %do.body190
  %179 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev39, align 4
  %181 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %add.ptr.i, align 8
  %device197 = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 8
  %183 = ptrtoint ptr %device197 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %device197, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 592, i16 %184)
  %cmp199 = icmp eq i16 %184, 592
  call void @__sanitizer_cov_trace_const_cmp2(i16 608, i16 %184)
  %cmp206 = icmp eq i16 %184, 608
  %cond208 = select i1 %cmp206, ptr @.str.36, ptr @.str.37
  %cond210 = select i1 %cmp199, ptr @.str.35, ptr %cond208
  %185 = ptrtoint ptr %fpgaver.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %fpgaver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp212.not = icmp eq i32 %186, 0
  %cond214 = select i1 %cmp212.not, ptr @.str.39, ptr @.str.38
  br i1 %cmp212.not, label %cond.false220, label %if.then194.cond.end222_crit_edge

if.then194.cond.end222_crit_edge:                 ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end222

cond.false220:                                    ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #22
  %187 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %chiprev.i, align 4
  %conv221 = zext i8 %188 to i32
  br label %cond.end222

cond.end222:                                      ; preds = %cond.false220, %if.then194.cond.end222_crit_edge
  %cond223 = phi i32 [ %conv221, %cond.false220 ], [ %186, %if.then194.cond.end222_crit_edge ]
  %189 = ptrtoint ptr %pcirev to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %pcirev, align 1
  %conv225 = zext i8 %190 to i32
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 86
  %191 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %180, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond210, ptr noundef nonnull %cond214, i32 noundef %cond223, i32 noundef %conv225, ptr noundef %192) #23
  br label %cleanup

err_out_unmap:                                    ; preds = %do.end186, %do.end177, %if.then137
  %rc.0 = phi i32 [ -5, %do.end177 ], [ %call181, %do.end186 ], [ -5, %if.then137 ]
  %193 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regs, align 8
  call void @iounmap(ptr noundef %194) #20
  br label %err_out_free_netdev

err_out_free_netdev:                              ; preds = %err_out_unmap, %do.end61
  %rc.1 = phi i32 [ %rc.0, %err_out_unmap ], [ -12, %do.end61 ]
  call void @free_netdev(ptr noundef %call28) #20
  br label %err_out_release_regions

err_out_release_regions:                          ; preds = %err_out_free_netdev, %if.end27.err_out_release_regions_crit_edge
  %rc.2 = phi i32 [ %rc.1, %err_out_free_netdev ], [ -12, %if.end27.err_out_release_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #20
  br label %err_out_disable_pdev

err_out_disable_pdev:                             ; preds = %err_out_release_regions, %do.end24, %do.end15, %do.end7
  %rc.3 = phi i32 [ -5, %do.end7 ], [ %call19, %do.end24 ], [ %rc.2, %err_out_release_regions ], [ -12, %do.end15 ]
  call void @pci_disable_device(ptr noundef %pdev) #20
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable_pdev, %cond.end222, %do.body190.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %cond.end222 ], [ 0, %do.body190.cleanup_crit_edge ], [ %call1, %do.end ], [ %rc.3, %err_out_disable_pdev ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #20
  %regs = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  tail call void @iounmap(ptr noundef %3) #20
  tail call void @free_netdev(ptr noundef %1) #20
  tail call void @pci_release_regions(ptr noundef %pdev) #20
  tail call void @pci_disable_device(ptr noundef %pdev) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call fastcc void @jme_powersave_phy(ptr noundef %add.ptr.i)
  tail call void @pci_pme_active(ptr noundef %pdev, i1 noundef zeroext true) #20
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_link_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_poll(ptr noundef %holder, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %holder, i32 -904
  %call1 = tail call fastcc i32 @jme_process_receive(ptr noundef %add.ptr.i, i32 noundef %budget)
  %rx_empty = getelementptr i8, ptr %holder, i32 -8
  %call.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_empty, i32 noundef 4) #20
  %0 = ptrtoint ptr %rx_empty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rx_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18 = icmp sgt i32 %1, 0
  br i1 %cmp18, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev = getelementptr i8, ptr %holder, i32 -900
  %reg_rxcs.i = getelementptr i8, ptr %holder, i32 -192
  %regs.i.i = getelementptr i8, ptr %holder, i32 -896
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_empty, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %rx_empty, i32 1, i32 3, i32 1) #20
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_empty, ptr %rx_empty, i32 1, ptr elementtype(i32) %rx_empty) #20, !srcloc !227
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 6
  %5 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %7 = ptrtoint ptr %reg_rxcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_rxcs.i, align 8
  %or2.i = or i32 %8, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %9 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #20
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #20, !srcloc !224
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_empty, i32 noundef 4) #20
  %15 = ptrtoint ptr %rx_empty to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %rx_empty, align 4
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_empty, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %rx_empty, i32 1, i32 3, i32 1) #20
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_empty, ptr %rx_empty, i32 1, ptr elementtype(i32) %rx_empty) #20, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %while.end
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %holder, i32 noundef 0) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i16.i.i = getelementptr i8, ptr %holder, i32 -896
  %18 = ptrtoint ptr %regs.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i16.i.i, align 8
  %add.ptr.i17.i.i = getelementptr i8, ptr %19, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 65792) #20, !srcloc !224
  %20 = ptrtoint ptr %regs.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i16.i.i, align 8
  %add.ptr2.i18.i.i = getelementptr i8, ptr %21, i32 2096
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !229
  tail call void @arm_heavy_mb() #20
  %flags.i.i = getelementptr i8, ptr %holder, i32 -204
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i.i, align 4
  %25 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.body4.i.i:                                     ; preds = %if.then
  %msg_enable.i.i = getelementptr i8, ptr %holder, i32 -136
  %26 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body4.i.i.if.end_crit_edge, label %if.then6.i.i

do.body4.i.i.if.end_crit_edge:                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then6.i.i:                                     ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i.i = getelementptr i8, ptr %holder, i32 -900
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %29, ptr noundef nonnull @.str.50, i32 noundef 1) #23
  br label %if.end

if.end:                                           ; preds = %if.then6.i.i, %do.body4.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %while.end.if.end_crit_edge
  %sub = sub i32 %budget, %call1
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_pcc_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -676
  %dev = getelementptr i8, ptr %t, i32 -672
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %flags = getelementptr i8, ptr %t, i32 24
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !230

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @jme_shutdown_nic(ptr noundef %add.ptr)
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %lor.rhs, label %if.end.if.then11_crit_edge, !prof !230

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11

lor.rhs:                                          ; preds = %if.end
  %link_changing = getelementptr i8, ptr %t, i32 208
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_changing, i32 noundef 4) #20
  %8 = ptrtoint ptr %link_changing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %link_changing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end12, label %lor.rhs.if.then11_crit_edge, !prof !230

lor.rhs.if.then11_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11

if.then11:                                        ; preds = %lor.rhs.if.then11_crit_edge, %if.end.if.then11_crit_edge
  tail call fastcc void @jme_stop_pcc_timer(ptr noundef %add.ptr)
  br label %cleanup

if.end12:                                         ; preds = %lor.rhs
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  %dpi1.i = getelementptr i8, ptr %t, i32 188
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 36, i32 2
  %15 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_bytes.i, align 8
  %17 = ptrtoint ptr %dpi1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dpi1.i, align 4
  %sub.i = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 2097152
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then16
  %cur.i.i = getelementptr i8, ptr %t, i32 200
  %19 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cur.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !prof !230

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %cnt.i.i = getelementptr i8, ptr %t, i32 202
  %21 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %cnt.i.i, align 2
  br label %if.end9.i

if.end.i.i:                                       ; preds = %if.then.i
  %attempt.i.i = getelementptr i8, ptr %t, i32 201
  %22 = ptrtoint ptr %attempt.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %attempt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp4.i.i = icmp eq i8 %23, 3
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %cnt7.i.i = getelementptr i8, ptr %t, i32 202
  %24 = ptrtoint ptr %cnt7.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cnt7.i.i, align 2
  %inc.i.i = add i8 %25, 1
  store i8 %inc.i.i, ptr %cnt7.i.i, align 2
  br label %if.end9.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %attempt.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %attempt.i.i, align 1
  %cnt10.i.i = getelementptr i8, ptr %t, i32 202
  %27 = ptrtoint ptr %cnt10.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %cnt10.i.i, align 2
  br label %if.end9.i

if.else.i:                                        ; preds = %if.then16
  %stats.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 36
  %28 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stats.i, align 8
  %last_pkts.i = getelementptr i8, ptr %t, i32 192
  %30 = ptrtoint ptr %last_pkts.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_pkts.i, align 4
  %sub4.i = sub i32 %29, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %sub4.i)
  %cmp5.i = icmp ugt i32 %sub4.i, 800
  br i1 %cmp5.i, label %if.else.i.if.then7.i_crit_edge, label %lor.lhs.false.i

if.else.i.if.then7.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %intr_cnt.i = getelementptr i8, ptr %t, i32 196
  %32 = ptrtoint ptr %intr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %intr_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %33)
  %cmp6.i = icmp ugt i32 %33, 800
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then7.i_crit_edge, label %if.else8.i

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %if.else.i.if.then7.i_crit_edge
  %cur.i50.i = getelementptr i8, ptr %t, i32 200
  %34 = ptrtoint ptr %cur.i50.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cur.i50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp.i52.i = icmp eq i8 %35, 2
  br i1 %cmp.i52.i, label %if.then.i54.i, label %if.end.i58.i, !prof !230

if.then.i54.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #22
  %cnt.i53.i = getelementptr i8, ptr %t, i32 202
  %36 = ptrtoint ptr %cnt.i53.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %cnt.i53.i, align 2
  br label %if.end9.i

if.end.i58.i:                                     ; preds = %if.then7.i
  %attempt.i55.i = getelementptr i8, ptr %t, i32 201
  %37 = ptrtoint ptr %attempt.i55.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %attempt.i55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp4.i57.i = icmp eq i8 %38, 2
  br i1 %cmp4.i57.i, label %if.then6.i61.i, label %if.else.i63.i

if.then6.i61.i:                                   ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #22
  %cnt7.i59.i = getelementptr i8, ptr %t, i32 202
  %39 = ptrtoint ptr %cnt7.i59.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cnt7.i59.i, align 2
  %inc.i60.i = add i8 %40, 1
  store i8 %inc.i60.i, ptr %cnt7.i59.i, align 2
  br label %if.end9.i

if.else.i63.i:                                    ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #22
  %41 = ptrtoint ptr %attempt.i55.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %attempt.i55.i, align 1
  %cnt10.i62.i = getelementptr i8, ptr %t, i32 202
  %42 = ptrtoint ptr %cnt10.i62.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %cnt10.i62.i, align 2
  br label %if.end9.i

if.else8.i:                                       ; preds = %lor.lhs.false.i
  %cur.i65.i = getelementptr i8, ptr %t, i32 200
  %43 = ptrtoint ptr %cur.i65.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cur.i65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp.i67.i = icmp eq i8 %44, 1
  br i1 %cmp.i67.i, label %if.then.i69.i, label %if.end.i73.i, !prof !230

if.then.i69.i:                                    ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #22
  %cnt.i68.i = getelementptr i8, ptr %t, i32 202
  %45 = ptrtoint ptr %cnt.i68.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %cnt.i68.i, align 2
  br label %if.end9.i

if.end.i73.i:                                     ; preds = %if.else8.i
  %attempt.i70.i = getelementptr i8, ptr %t, i32 201
  %46 = ptrtoint ptr %attempt.i70.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %attempt.i70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp4.i72.i = icmp eq i8 %47, 1
  br i1 %cmp4.i72.i, label %if.then6.i76.i, label %if.else.i78.i

if.then6.i76.i:                                   ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #22
  %cnt7.i74.i = getelementptr i8, ptr %t, i32 202
  %48 = ptrtoint ptr %cnt7.i74.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cnt7.i74.i, align 2
  %inc.i75.i = add i8 %49, 1
  store i8 %inc.i75.i, ptr %cnt7.i74.i, align 2
  br label %if.end9.i

if.else.i78.i:                                    ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #22
  %50 = ptrtoint ptr %attempt.i70.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %attempt.i70.i, align 1
  %cnt10.i77.i = getelementptr i8, ptr %t, i32 202
  %51 = ptrtoint ptr %cnt10.i77.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %cnt10.i77.i, align 2
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i78.i, %if.then6.i76.i, %if.then.i69.i, %if.else.i63.i, %if.then6.i61.i, %if.then.i54.i, %if.else.i.i, %if.then6.i.i, %if.then.i.i
  %attempt.i = getelementptr i8, ptr %t, i32 201
  %52 = ptrtoint ptr %attempt.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %attempt.i, align 1
  %cur.i = getelementptr i8, ptr %t, i32 200
  %54 = ptrtoint ptr %cur.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cur.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp11.not.i = icmp eq i8 %53, %55
  br i1 %cmp11.not.i, label %if.end9.i.if.end17_crit_edge, label %land.rhs.i

if.end9.i.if.end17_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

land.rhs.i:                                       ; preds = %if.end9.i
  %cnt.i = getelementptr i8, ptr %t, i32 202
  %56 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %57)
  %cmp14.i = icmp ugt i8 %57, 5
  br i1 %cmp14.i, label %if.then17.i, label %land.rhs.i.if.end17_crit_edge, !prof !231

land.rhs.i.if.end17_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then17.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp22.i = icmp ult i8 %53, %55
  br i1 %cmp22.i, label %if.then24.i, label %if.then17.i.if.end25.i_crit_edge

if.then17.i.if.end25.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #22
  %rxclean_task.i = getelementptr i8, ptr %t, i32 -92
  tail call fastcc void @tasklet_schedule(ptr noundef %rxclean_task.i) #20
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %if.then17.i.if.end25.i_crit_edge
  %58 = ptrtoint ptr %attempt.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %attempt.i, align 1
  %conv27.i = zext i8 %59 to i32
  tail call fastcc void @jme_set_rx_pcc(ptr noundef %add.ptr, i32 noundef %conv27.i) #20
  %60 = ptrtoint ptr %attempt.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %attempt.i, align 1
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %cur.i, align 4
  %63 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %cnt.i, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.end25.i, %land.rhs.i.if.end17_crit_edge, %if.end9.i.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %dpi1.i28 = getelementptr i8, ptr %t, i32 188
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  %rx_bytes.i30 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 36, i32 2
  %66 = ptrtoint ptr %rx_bytes.i30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_bytes.i30, align 8
  %68 = ptrtoint ptr %dpi1.i28 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %dpi1.i28, align 4
  %stats3.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 36
  %69 = ptrtoint ptr %stats3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stats3.i, align 8
  %last_pkts.i31 = getelementptr i8, ptr %t, i32 192
  %71 = ptrtoint ptr %last_pkts.i31 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %last_pkts.i31, align 4
  %intr_cnt.i32 = getelementptr i8, ptr %t, i32 196
  %72 = ptrtoint ptr %intr_cnt.i32 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %intr_cnt.i32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i.i = getelementptr i8, ptr %t, i32 -668
  %73 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1601830401) #20, !srcloc !224
  %75 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %76, i32 2048
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then11, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_link_change_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -632
  %dev = getelementptr i8, ptr %work, i32 -628
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %link_changing = getelementptr i8, ptr %work, i32 252
  %call.i.i250 = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_changing, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %link_changing, i32 1, i32 3, i32 1) #20
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %link_changing, ptr %link_changing, i32 1, ptr elementtype(i32) %link_changing) #20, !srcloc !233
  %asmresult.i.i.i.i.i251 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i251)
  %cmp.i.i252 = icmp eq i32 %asmresult.i.i.i.i.i251, 0
  br i1 %cmp.i.i252, label %entry.while.end16_crit_edge, label %while.body.lr.ph

entry.while.end16_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end16

while.body.lr.ph:                                 ; preds = %entry
  %msg_enable = getelementptr i8, ptr %work, i32 136
  br label %while.body

while.cond.loopexit:                              ; preds = %do.end15.while.cond.loopexit_crit_edge, %do.end.while.cond.loopexit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_changing, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %link_changing, i32 1, i32 3, i32 1) #20
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %link_changing, ptr %link_changing, i32 1, ptr elementtype(i32) %link_changing) #20, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !234
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %while.cond.loopexit.while.end16_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.cond.loopexit.while.end16_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end16

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %call.i.i115 = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_changing, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %link_changing, i32 1, i32 3, i32 1) #20
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %link_changing, ptr %link_changing, i32 1, ptr elementtype(i32) %link_changing) #20, !srcloc !228
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.do.end_crit_edge, label %if.then

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %8, ptr noundef nonnull @.str.62) #23
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body.do.end_crit_edge
  %call.i.i116248 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_changing, i32 noundef 4) #20
  %9 = ptrtoint ptr %link_changing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %link_changing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not249 = icmp eq i32 %10, 1
  br i1 %cmp.not249, label %do.end.while.cond.loopexit_crit_edge, label %do.end.do.body7_crit_edge

do.end.do.body7_crit_edge:                        ; preds = %do.end
  br label %do.body7

do.end.while.cond.loopexit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.loopexit

do.body7:                                         ; preds = %do.end15.do.body7_crit_edge, %do.end.do.body7_crit_edge
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and9 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body7.do.end15_crit_edge, label %if.then11

do.body7.do.end15_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end15

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #22
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.63) #23
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body7.do.end15_crit_edge
  %call.i.i116 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_changing, i32 noundef 4) #20
  %15 = ptrtoint ptr %link_changing to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %link_changing, align 4
  %cmp.not = icmp eq i32 %16, 1
  br i1 %cmp.not, label %do.end15.while.cond.loopexit_crit_edge, label %do.end15.do.body7_crit_edge

do.end15.do.body7_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body7

do.end15.while.cond.loopexit_crit_edge:           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.loopexit

while.end16:                                      ; preds = %while.cond.loopexit.while.end16_crit_edge, %entry.while.end16_crit_edge
  %call17 = tail call fastcc i32 @jme_check_link(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %while.end16.if.end21_crit_edge, label %land.lhs.true

while.end16.if.end21_crit_edge:                   ; preds = %while.end16
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

land.lhs.true:                                    ; preds = %while.end16
  %old_mtu = getelementptr i8, ptr %work, i32 228
  %17 = ptrtoint ptr %old_mtu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old_mtu, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp19 = icmp eq i32 %18, %20
  br i1 %cmp19, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %while.end16.if.end21_crit_edge
  %mtu22 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %21 = ptrtoint ptr %mtu22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mtu22, align 4
  %old_mtu23 = getelementptr i8, ptr %work, i32 228
  %23 = ptrtoint ptr %old_mtu23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %old_mtu23, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  %regs.i.i = getelementptr i8, ptr %work, i32 -624
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 2172
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %29 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not = icmp eq i32 %29, 0
  br i1 %tobool25.not, label %if.end21.if.end27_crit_edge, label %if.then26

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i121 = getelementptr i8, ptr %31, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121, i32 0) #20, !srcloc !224
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %33, i32 2048
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %36, i32 2048
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %39, i32 2164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #20, !srcloc !224
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i10.i = getelementptr i8, ptr %41, i32 2164
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i10.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %43 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i11.i = getelementptr i8, ptr %44, i32 2164
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i11.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %flags.i = getelementptr i8, ptr %work, i32 68
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i) #20
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %47, i32 2172
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %49 = and i32 %48, -68
  %50 = or i32 %49, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %52, i32 2172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %50) #20, !srcloc !224
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i16.i = getelementptr i8, ptr %54, i32 2172
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i16.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %56 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i17.i = getelementptr i8, ptr %57, i32 2172
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i17.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !238
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %59 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %60, i32 2172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %49) #20, !srcloc !224
  %61 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i20.i = getelementptr i8, ptr %62, i32 2172
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i20.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %64 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i21.i = getelementptr i8, ptr %65, i32 2172
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i21.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21.if.end27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %67 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i123 = getelementptr i8, ptr %68, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123, i32 0) #20, !srcloc !224
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i124 = getelementptr i8, ptr %70, i32 2048
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i124) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %txclean_task = getelementptr i8, ptr %work, i32 -24
  %count.i.i = getelementptr i8, ptr %work, i32 -16
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #20
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #20, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !239
  tail call void @tasklet_unlock_wait(ptr noundef %txclean_task) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !240
  %rxclean_task = getelementptr i8, ptr %work, i32 -48
  %count.i.i125 = getelementptr i8, ptr %work, i32 -40
  %call.i.i.i.i126 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i125, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i125, i32 1, i32 3, i32 1) #20
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i125, ptr %count.i.i125, i32 1, ptr elementtype(i32) %count.i.i125) #20, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !239
  tail call void @tasklet_unlock_wait(ptr noundef %rxclean_task) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !240
  %rxempty_task = getelementptr i8, ptr %work, i32 -72
  %count.i.i127 = getelementptr i8, ptr %work, i32 -64
  %call.i.i.i.i128 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i127, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i127, i32 1, i32 3, i32 1) #20
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i127, ptr %count.i.i127, i32 1, ptr elementtype(i32) %count.i.i127) #20, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !239
  tail call void @tasklet_unlock_wait(ptr noundef %rxempty_task) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !240
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %state.i, align 4
  %77 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i, label %if.then29, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  tail call fastcc void @jme_disable_rx_engine(ptr noundef %add.ptr)
  tail call fastcc void @jme_disable_tx_engine(ptr noundef %add.ptr)
  tail call fastcc void @jme_reset_mac_processor(ptr noundef %add.ptr)
  tail call fastcc void @jme_free_rx_resources(ptr noundef %add.ptr)
  tail call fastcc void @jme_free_tx_resources(ptr noundef %add.ptr)
  %flags = getelementptr i8, ptr %work, i32 68
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags, align 4
  %80 = and i32 %79, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool31.not = icmp eq i32 %80, 0
  br i1 %tobool31.not, label %if.then29.if.end33_crit_edge, label %if.then32

if.then29.if.end33_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then32:                                        ; preds = %if.then29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %81 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %82, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #20, !srcloc !224
  %83 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %84, i32 2096
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !229
  tail call void @arm_heavy_mb() #20
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %flags, align 4
  %88 = and i32 %87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i.i = icmp eq i32 %88, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %if.then32.if.end33_crit_edge

if.then32.if.end33_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

do.body4.i.i:                                     ; preds = %if.then32
  %msg_enable.i.i = getelementptr i8, ptr %work, i32 136
  %89 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %90, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body4.i.i.if.end33_crit_edge, label %if.then6.i.i

do.body4.i.i.if.end33_crit_edge:                  ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then6.i.i:                                     ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %92, ptr noundef nonnull @.str.50, i32 noundef 0) #23
  br label %if.end33

if.end33:                                         ; preds = %if.then6.i.i, %do.body4.i.i.if.end33_crit_edge, %if.then32.if.end33_crit_edge, %if.then29.if.end33_crit_edge
  tail call void @netif_carrier_off(ptr noundef %1) #20
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end27.if.end34_crit_edge
  %call35 = tail call fastcc i32 @jme_check_link(ptr noundef %1, i32 noundef 0)
  %93 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %state.i, align 4
  %95 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i130 = icmp eq i32 %95, 0
  br i1 %tobool.not.i130, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end34
  %rxring1.i = getelementptr i8, ptr %work, i32 -588
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %rx_ring_size.i = getelementptr i8, ptr %work, i32 116
  %98 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_ring_size.i, align 4
  %mul.i = shl i32 %99, 4
  %add.i = add i32 %mul.i, 16
  %dmaalloc.i = getelementptr i8, ptr %work, i32 -580
  %call.i.i131 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %add.i, ptr noundef %dmaalloc.i, i32 noundef 2592, i32 noundef 0) #20
  %100 = ptrtoint ptr %rxring1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i.i131, ptr %rxring1.i, align 4
  %tobool.not.i132 = icmp eq ptr %call.i.i131, null
  br i1 %tobool.not.i132, label %if.then37.err_set_null.i_crit_edge, label %if.end.i

if.then37.err_set_null.i_crit_edge:               ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_set_null.i

if.end.i:                                         ; preds = %if.then37
  %101 = ptrtoint ptr %call.i.i131 to i32
  %add4.i = add i32 %101, 15
  %and.i133 = and i32 %add4.i, -16
  %102 = inttoptr i32 %and.i133 to ptr
  %desc.i = getelementptr i8, ptr %work, i32 -584
  %103 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %desc.i, align 4
  %104 = ptrtoint ptr %dmaalloc.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dmaalloc.i, align 4
  %add6.i = add i32 %105, 15
  %and7.i = and i32 %add6.i, -16
  %dma.i = getelementptr i8, ptr %work, i32 -576
  %106 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %and7.i, ptr %dma.i, align 4
  %next_to_use.i = getelementptr i8, ptr %work, i32 -568
  %107 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %next_to_use.i, align 4
  %next_to_clean.i = getelementptr i8, ptr %work, i32 -564
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean.i, i32 noundef 4) #20
  %108 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 0, ptr %next_to_clean.i, align 4
  %109 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_ring_size.i, align 4
  %111 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %110, i32 20) #20
  %112 = extractvalue { i32, i1 } %111, 1
  br i1 %112, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !231

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %bufinf69.i = getelementptr i8, ptr %work, i32 -572
  %113 = ptrtoint ptr %bufinf69.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %bufinf69.i, align 4
  br label %err_free_rxring.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %114 = extractvalue { i32, i1 } %111, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %114, i32 noundef 2848) #24
  %bufinf.i = getelementptr i8, ptr %work, i32 -572
  %115 = ptrtoint ptr %bufinf.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call8.i.i.i, ptr %bufinf.i, align 4
  %tobool11.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool11.not.i, label %if.end7.i.i.i.err_free_rxring.i_crit_edge, label %for.cond.preheader.i, !prof !231

if.end7.i.i.i.err_free_rxring.i_crit_edge:        ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_free_rxring.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %116 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_ring_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp71.not.i = icmp eq i32 %117, 0
  br i1 %cmp71.not.i, label %for.cond.preheader.i.if.end46_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end46_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

for.body.i:                                       ; preds = %jme_set_clean_rxdesc.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.072.i = phi i32 [ %inc.i, %jme_set_clean_rxdesc.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call18.i = tail call fastcc i32 @jme_make_new_rx_buf(ptr noundef %add.ptr, i32 noundef %i.072.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end27.i, label %if.then26.i, !prof !230

if.then26.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @jme_free_rx_resources(ptr noundef %add.ptr) #20
  br label %do.end43

if.end27.i:                                       ; preds = %for.body.i
  %118 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %desc.i, align 4
  %120 = ptrtoint ptr %bufinf.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bufinf.i, align 4
  %add.ptr.i.i135 = getelementptr %struct.rxdesc, ptr %119, i32 %i.072.i
  %122 = ptrtoint ptr %add.ptr.i.i135 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %add.ptr.i.i135, align 4
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %add.ptr.i.i135, i32 0, i32 1
  %123 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %arrayidx4.i.i, align 4
  %mapping.i.i = getelementptr %struct.jme_buffer_info, ptr %121, i32 %i.072.i, i32 1
  %bufaddrh.i.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i.i135, i32 0, i32 5
  %124 = ptrtoint ptr %bufaddrh.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %bufaddrh.i.i, align 4
  %125 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mapping.i.i, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #20
  %bufaddrl.i.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i.i135, i32 0, i32 6
  %128 = ptrtoint ptr %bufaddrl.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %bufaddrl.i.i, align 4
  %len.i.i = getelementptr %struct.jme_buffer_info, ptr %121, i32 %i.072.i, i32 2
  %129 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len.i.i, align 4
  %conv9.i.i = trunc i32 %130 to i16
  %131 = tail call i16 @llvm.bswap.i16(i16 %conv9.i.i) #20
  %132 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %arrayidx4.i.i, align 4
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 23
  %135 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %features.i.i, align 16
  %and10.i.i = and i64 %136, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i.i)
  %tobool.not.i.i136 = icmp eq i64 %and10.i.i, 0
  br i1 %tobool.not.i.i136, label %if.end27.i.jme_set_clean_rxdesc.exit.i_crit_edge, label %if.then.i.i

if.end27.i.jme_set_clean_rxdesc.exit.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_set_clean_rxdesc.exit.i

if.then.i.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #22
  %flags.i.i137 = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i.i135, i32 0, i32 2
  %137 = ptrtoint ptr %flags.i.i137 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 32, ptr %flags.i.i137, align 1
  br label %jme_set_clean_rxdesc.exit.i

jme_set_clean_rxdesc.exit.i:                      ; preds = %if.then.i.i, %if.end27.i.jme_set_clean_rxdesc.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !241
  tail call void @arm_heavy_mb() #20
  %flags11.i.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i.i135, i32 0, i32 2
  %138 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %flags11.i.i, align 1
  %140 = or i8 %139, -64
  store i8 %140, ptr %flags11.i.i, align 1
  %inc.i = add nuw i32 %i.072.i, 1
  %141 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rx_ring_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %142
  br i1 %cmp.i, label %jme_set_clean_rxdesc.exit.i.for.body.i_crit_edge, label %jme_set_clean_rxdesc.exit.i.if.end46_crit_edge

jme_set_clean_rxdesc.exit.i.if.end46_crit_edge:   ; preds = %jme_set_clean_rxdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

jme_set_clean_rxdesc.exit.i.for.body.i_crit_edge: ; preds = %jme_set_clean_rxdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

err_free_rxring.i:                                ; preds = %if.end7.i.i.i.err_free_rxring.i_crit_edge, %kcalloc.exit.thread.i
  %143 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr, align 8
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  %145 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rx_ring_size.i, align 4
  %mul31.i = shl i32 %146, 4
  %add32.i = add i32 %mul31.i, 16
  %147 = ptrtoint ptr %rxring1.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rxring1.i, align 4
  %149 = ptrtoint ptr %dmaalloc.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dmaalloc.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev29.i, i32 noundef %add32.i, ptr noundef %148, i32 noundef %150, i32 noundef 0) #20
  br label %err_set_null.i

err_set_null.i:                                   ; preds = %err_free_rxring.i, %if.then37.err_set_null.i_crit_edge
  %desc35.i = getelementptr i8, ptr %work, i32 -584
  %151 = call ptr @memset(ptr %desc35.i, i32 0, i32 16)
  br label %do.end43

do.end43:                                         ; preds = %err_set_null.i, %if.then26.i
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #23
  br label %out_enable_tasklet

if.end46:                                         ; preds = %jme_set_clean_rxdesc.exit.i.if.end46_crit_edge, %for.cond.preheader.i.if.end46_crit_edge
  %txring1.i = getelementptr i8, ptr %work, i32 -460
  %152 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr, align 8
  %dev.i138 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %tx_ring_size.i = getelementptr i8, ptr %work, i32 104
  %154 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %tx_ring_size.i, align 8
  %mul.i139 = shl i32 %155, 4
  %add.i140 = add i32 %mul.i139, 16
  %dmaalloc.i141 = getelementptr i8, ptr %work, i32 -452
  %call.i.i142 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i138, i32 noundef %add.i140, ptr noundef %dmaalloc.i141, i32 noundef 2592, i32 noundef 0) #20
  %156 = ptrtoint ptr %txring1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call.i.i142, ptr %txring1.i, align 4
  %tobool.not.i143 = icmp eq ptr %call.i.i142, null
  br i1 %tobool.not.i143, label %if.end46.do.end52_crit_edge, label %if.end.i153

if.end46.do.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end52

if.end.i153:                                      ; preds = %if.end46
  %157 = ptrtoint ptr %call.i.i142 to i32
  %add4.i144 = add i32 %157, 15
  %and.i145 = and i32 %add4.i144, -16
  %158 = inttoptr i32 %and.i145 to ptr
  %desc.i146 = getelementptr i8, ptr %work, i32 -456
  %159 = ptrtoint ptr %desc.i146 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %desc.i146, align 4
  %160 = ptrtoint ptr %dmaalloc.i141 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dmaalloc.i141, align 4
  %add6.i147 = add i32 %161, 15
  %and7.i148 = and i32 %add6.i147, -16
  %dma.i149 = getelementptr i8, ptr %work, i32 -448
  %162 = ptrtoint ptr %dma.i149 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %and7.i148, ptr %dma.i149, align 4
  %next_to_use.i150 = getelementptr i8, ptr %work, i32 -440
  %163 = ptrtoint ptr %next_to_use.i150 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %next_to_use.i150, align 4
  %next_to_clean.i151 = getelementptr i8, ptr %work, i32 -436
  %call.i.i.i152 = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean.i151, i32 noundef 4) #20
  %164 = ptrtoint ptr %next_to_clean.i151 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile i32 0, ptr %next_to_clean.i151, align 4
  %nr_free.i = getelementptr i8, ptr %work, i32 -432
  %165 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tx_ring_size.i, align 8
  %call.i.i52.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_free.i, i32 noundef 4) #20
  %167 = ptrtoint ptr %nr_free.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile i32 %166, ptr %nr_free.i, align 4
  %168 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tx_ring_size.i, align 8
  %170 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %169, i32 20) #20
  %171 = extractvalue { i32, i1 } %170, 1
  br i1 %171, label %kcalloc.exit.thread.i154, label %if.end7.i.i.i185, !prof !231

kcalloc.exit.thread.i154:                         ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #22
  %bufinf54.i = getelementptr i8, ptr %work, i32 -444
  %172 = ptrtoint ptr %bufinf54.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %bufinf54.i, align 4
  br label %err_free_txring.i

if.end7.i.i.i185:                                 ; preds = %if.end.i153
  %173 = extractvalue { i32, i1 } %170, 0
  %call8.i.i.i184 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %173, i32 noundef 2848) #24
  %bufinf.i187 = getelementptr i8, ptr %work, i32 -444
  %174 = ptrtoint ptr %bufinf.i187 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call8.i.i.i184, ptr %bufinf.i187, align 4
  %tobool12.not.i = icmp eq ptr %call8.i.i.i184, null
  br i1 %tobool12.not.i, label %if.end7.i.i.i185.err_free_txring.i_crit_edge, label %if.end55, !prof !231

if.end7.i.i.i185.err_free_txring.i_crit_edge:     ; preds = %if.end7.i.i.i185
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_free_txring.i

err_free_txring.i:                                ; preds = %if.end7.i.i.i185.err_free_txring.i_crit_edge, %kcalloc.exit.thread.i154
  %175 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %add.ptr, align 8
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %176, i32 0, i32 44
  %177 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %tx_ring_size.i, align 8
  %mul21.i = shl i32 %178, 4
  %add22.i = add i32 %mul21.i, 16
  %179 = ptrtoint ptr %txring1.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %txring1.i, align 4
  %181 = ptrtoint ptr %dmaalloc.i141 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %dmaalloc.i141, align 4
  tail call void @dma_free_attrs(ptr noundef %dev19.i, i32 noundef %add22.i, ptr noundef %180, i32 noundef %182, i32 noundef 0) #20
  br label %do.end52

do.end52:                                         ; preds = %err_free_txring.i, %if.end46.do.end52_crit_edge
  %desc25.i = getelementptr i8, ptr %work, i32 -456
  %183 = call ptr @memset(ptr %desc25.i, i32 0, i32 16)
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #23
  tail call fastcc void @jme_free_rx_resources(ptr noundef %add.ptr)
  br label %out_enable_tasklet

if.end55:                                         ; preds = %if.end7.i.i.i185
  %reg_rxcs.i = getelementptr i8, ptr %work, i32 80
  %184 = ptrtoint ptr %reg_rxcs.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %reg_rxcs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #20
  %187 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i192 = getelementptr i8, ptr %188, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i192, i32 %186) #20, !srcloc !224
  %189 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i193 = getelementptr i8, ptr %190, i32 32
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i193) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !242
  tail call void @arm_heavy_mb() #20
  %192 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %dma.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #20
  %195 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i35.i = getelementptr i8, ptr %196, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %194) #20, !srcloc !224
  %197 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i36.i = getelementptr i8, ptr %198, i32 36
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i36.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %200 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i38.i = getelementptr i8, ptr %201, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 0) #20, !srcloc !224
  %202 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i39.i = getelementptr i8, ptr %203, i32 40
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i39.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %205 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %dma.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #20
  %208 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i41.i = getelementptr i8, ptr %209, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 %207) #20, !srcloc !224
  %210 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i42.i = getelementptr i8, ptr %211, i32 48
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i42.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %213 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %rx_ring_size.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #20
  %216 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i44.i = getelementptr i8, ptr %217, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %215) #20, !srcloc !224
  %218 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i45.i = getelementptr i8, ptr %219, i32 44
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i45.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %221 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %222, i32 0, i32 86
  %223 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev_addr.i.i, align 64
  %arrayidx.i.i = getelementptr i8, ptr %224, i32 3
  %225 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %226 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx2.i.i = getelementptr i8, ptr %224, i32 2
  %227 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx2.i.i, align 1
  %conv3.i.i = zext i8 %228 to i32
  %shl5.i.i = shl nuw nsw i32 %conv3.i.i, 16
  %or.i.i = or i32 %shl5.i.i, %shl.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %224, i32 1
  %229 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %230 to i32
  %shl10.i.i = shl nuw nsw i32 %conv8.i.i, 8
  %or11.i.i = or i32 %or.i.i, %shl10.i.i
  %231 = ptrtoint ptr %224 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %224, align 1
  %conv14.i.i = zext i8 %232 to i32
  %or16.i.i = or i32 %or11.i.i, %conv14.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %233 = tail call i32 @llvm.bswap.i32(i32 %or16.i.i) #20
  %regs.i.i.i197 = getelementptr i8, ptr %222, i32 2312
  %234 = ptrtoint ptr %regs.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs.i.i.i197, align 8
  %add.ptr.i35.i.i = getelementptr i8, ptr %235, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i.i, i32 %233) #20, !srcloc !224
  %236 = ptrtoint ptr %regs.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regs.i.i.i197, align 8
  %add.ptr2.i.i.i198 = getelementptr i8, ptr %237, i32 56
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i198) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %239 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev_addr.i.i, align 64
  %arrayidx18.i.i = getelementptr i8, ptr %240, i32 5
  %241 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx18.i.i, align 1
  %conv19.i.i = zext i8 %242 to i32
  %shl21.i.i = shl nuw nsw i32 %conv19.i.i, 8
  %arrayidx23.i.i = getelementptr i8, ptr %240, i32 4
  %243 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx23.i.i, align 1
  %conv24.i.i = zext i8 %244 to i32
  %or26.i.i = or i32 %shl21.i.i, %conv24.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %245 = tail call i32 @llvm.bswap.i32(i32 %or26.i.i) #20
  %246 = ptrtoint ptr %regs.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs.i.i.i197, align 8
  %add.ptr.i37.i.i = getelementptr i8, ptr %247, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i.i, i32 %245) #20, !srcloc !224
  %248 = ptrtoint ptr %regs.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs.i.i.i197, align 8
  %add.ptr2.i38.i.i = getelementptr i8, ptr %249, i32 60
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i38.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %251 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev, align 4
  tail call void @jme_set_multi(ptr noundef %252) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !243
  tail call void @arm_heavy_mb() #20
  %253 = ptrtoint ptr %reg_rxcs.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %reg_rxcs.i, align 8
  %or19.i = or i32 %254, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %255 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #20
  %256 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i47.i = getelementptr i8, ptr %257, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 %255) #20, !srcloc !224
  %258 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i48.i = getelementptr i8, ptr %259, i32 32
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i48.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %261 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i199 = getelementptr i8, ptr %262, i32 32
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i199) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %reg_gpreg1.i.i = getelementptr i8, ptr %work, i32 96
  %264 = ptrtoint ptr %reg_gpreg1.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %reg_gpreg1.i.i, align 8
  %and.i.i200 = and i32 %265, -67108865
  store i32 %and.i.i200, ptr %reg_gpreg1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %266 = tail call i32 @llvm.bswap.i32(i32 %and.i.i200) #20
  %267 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i201 = getelementptr i8, ptr %268, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i201, i32 %266) #20, !srcloc !224
  %269 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i50.i = getelementptr i8, ptr %270, i32 2060
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i50.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %272 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i.i = getelementptr i8, ptr %273, i32 2060
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %275 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regs.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 67108864) #20, !srcloc !224
  %277 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regs.i.i, align 8
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %278) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !244
  tail call void @arm_heavy_mb() #20
  %280 = ptrtoint ptr %dma.i149 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %dma.i149, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #20
  %283 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i204 = getelementptr i8, ptr %284, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i204, i32 %282) #20, !srcloc !224
  %285 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i205 = getelementptr i8, ptr %286, i32 4
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i205) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %288 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %289, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #20, !srcloc !224
  %290 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i30.i = getelementptr i8, ptr %291, i32 8
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i30.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %293 = ptrtoint ptr %dma.i149 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %dma.i149, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %295 = tail call i32 @llvm.bswap.i32(i32 %294) #20
  %296 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %297, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %295) #20, !srcloc !224
  %298 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i33.i = getelementptr i8, ptr %299, i32 16
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i33.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %301 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %tx_ring_size.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #20
  %304 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i35.i207 = getelementptr i8, ptr %305, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i207, i32 %303) #20, !srcloc !224
  %306 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i36.i208 = getelementptr i8, ptr %307, i32 12
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i36.i208) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !245
  tail call void @arm_heavy_mb() #20
  %reg_txcs.i = getelementptr i8, ptr %work, i32 72
  %309 = ptrtoint ptr %reg_txcs.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %reg_txcs.i, align 8
  %or15.i = or i32 %310, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %311 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #20
  %312 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %regs.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %311) #20, !srcloc !224
  %314 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %regs.i.i, align 8
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %315) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %317 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs.i.i, align 8
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %reg_ghc.i.i = getelementptr i8, ptr %work, i32 88
  %320 = ptrtoint ptr %reg_ghc.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %reg_ghc.i.i, align 8
  %and.i.i209 = and i32 %321, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and.i.i209)
  %cmp.i.i210 = icmp eq i32 %and.i.i209, 48
  %storemerge.v.i.i = select i1 %cmp.i.i210, i32 5242880, i32 10485760
  %storemerge.i.i = or i32 %storemerge.v.i.i, %321
  %322 = ptrtoint ptr %reg_ghc.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %storemerge.i.i, ptr %reg_ghc.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %323 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i.i) #20
  %324 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i211 = getelementptr i8, ptr %325, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i211, i32 %323) #20, !srcloc !224
  %326 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i.i212 = getelementptr i8, ptr %327, i32 84
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i212) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %329 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i.i213 = getelementptr i8, ptr %330, i32 84
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i213) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %332 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i215 = getelementptr inbounds %struct.netdev_queue, ptr %333, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i215) #20
  %flags56 = getelementptr i8, ptr %work, i32 68
  %334 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load volatile i32, ptr %flags56, align 4
  %336 = and i32 %335, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %tobool58.not = icmp eq i32 %336, 0
  br i1 %tobool58.not, label %if.end55.if.end60_crit_edge, label %if.then59

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

if.then59:                                        ; preds = %if.end55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %337 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i17.i.i = getelementptr i8, ptr %338, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 65792) #20, !srcloc !224
  %339 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i18.i.i = getelementptr i8, ptr %340, i32 2096
  %341 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !229
  tail call void @arm_heavy_mb() #20
  %342 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load volatile i32, ptr %flags56, align 4
  %344 = and i32 %343, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool.not.i.i217 = icmp eq i32 %344, 0
  br i1 %tobool.not.i.i217, label %do.body4.i.i221, label %if.then59.if.end60_crit_edge

if.then59.if.end60_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

do.body4.i.i221:                                  ; preds = %if.then59
  %msg_enable.i.i218 = getelementptr i8, ptr %work, i32 136
  %345 = ptrtoint ptr %msg_enable.i.i218 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %msg_enable.i.i218, align 8
  %and.i.i219 = and i32 %346, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i219)
  %tobool5.not.i.i220 = icmp eq i32 %and.i.i219, 0
  br i1 %tobool5.not.i.i220, label %do.body4.i.i221.if.end60_crit_edge, label %if.then6.i.i223

do.body4.i.i221.if.end60_crit_edge:               ; preds = %do.body4.i.i221
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

if.then6.i.i223:                                  ; preds = %do.body4.i.i221
  call void @__sanitizer_cov_trace_pc() #22
  %347 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %348, ptr noundef nonnull @.str.50, i32 noundef 1) #23
  br label %if.end60

if.end60:                                         ; preds = %if.then6.i.i223, %do.body4.i.i221.if.end60_crit_edge, %if.then59.if.end60_crit_edge, %if.end55.if.end60_crit_edge
  %dpi1.i = getelementptr i8, ptr %work, i32 232
  %349 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %dev, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %350, i32 0, i32 36, i32 2
  %351 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %rx_bytes.i, align 8
  %353 = ptrtoint ptr %dpi1.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %352, ptr %dpi1.i, align 4
  %stats3.i = getelementptr inbounds %struct.net_device, ptr %350, i32 0, i32 36
  %354 = ptrtoint ptr %stats3.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %stats3.i, align 8
  %last_pkts.i = getelementptr i8, ptr %work, i32 236
  %356 = ptrtoint ptr %last_pkts.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %355, ptr %last_pkts.i, align 4
  %intr_cnt.i = getelementptr i8, ptr %work, i32 240
  %357 = ptrtoint ptr %intr_cnt.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 0, ptr %intr_cnt.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %358 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i226 = getelementptr i8, ptr %359, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i226, i32 1601830401) #20, !srcloc !224
  %360 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i227 = getelementptr i8, ptr %361, i32 2048
  %362 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i227) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %out_enable_tasklet

if.else:                                          ; preds = %if.end34
  %363 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i229 = getelementptr i8, ptr %364, i32 2172
  %365 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i229) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %366 = and i32 %365, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %tobool62.not = icmp eq i32 %366, 0
  br i1 %tobool62.not, label %if.else.out_enable_tasklet_crit_edge, label %if.then63

if.else.out_enable_tasklet_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_enable_tasklet

if.then63:                                        ; preds = %if.else
  %367 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i232 = getelementptr i8, ptr %368, i32 2172
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i232) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %370 = and i32 %369, -68
  %371 = tail call i32 @llvm.bswap.i32(i32 %370) #20
  %372 = load i32, ptr @no_extplug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %372)
  %tobool.not.i233 = icmp eq i32 %372, 0
  br i1 %tobool.not.i233, label %if.then.i, label %if.then63.jme_start_shutdown_timer.exit_crit_edge

if.then63.jme_start_shutdown_timer.exit_crit_edge: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_start_shutdown_timer.exit

if.then.i:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #22
  %or1.i = or i32 %371, 1107296256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %373 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #20
  %374 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %375, i32 2172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %373) #20, !srcloc !224
  %376 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i234 = getelementptr i8, ptr %377, i32 2172
  %378 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i234) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %379 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i235 = getelementptr i8, ptr %380, i32 2172
  %381 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i235) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !246
  tail call void @arm_heavy_mb() #20
  br label %jme_start_shutdown_timer.exit

jme_start_shutdown_timer.exit:                    ; preds = %if.then.i, %if.then63.jme_start_shutdown_timer.exit_crit_edge
  %and.i236 = or i32 %371, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %382 = tail call i32 @llvm.bswap.i32(i32 %and.i236) #20
  %383 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %384, i32 2172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %382) #20, !srcloc !224
  %385 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i13.i = getelementptr i8, ptr %386, i32 2172
  %387 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i13.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %388 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i14.i = getelementptr i8, ptr %389, i32 2172
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i14.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %391 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i16.i = getelementptr i8, ptr %392, i32 2164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 0) #20, !srcloc !224
  %393 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i17.i = getelementptr i8, ptr %394, i32 2164
  %395 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i17.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %396 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i18.i = getelementptr i8, ptr %397, i32 2164
  %398 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i18.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %flags.i237 = getelementptr i8, ptr %work, i32 68
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i237) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %399 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i20.i = getelementptr i8, ptr %400, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 2137614081) #20, !srcloc !224
  %401 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i21.i = getelementptr i8, ptr %402, i32 2048
  %403 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i21.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %out_enable_tasklet

out_enable_tasklet:                               ; preds = %jme_start_shutdown_timer.exit, %if.else.out_enable_tasklet_crit_edge, %if.end60, %do.end52, %do.end43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !247
  %call.i.i.i239 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #20
  %404 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #20, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !247
  %call.i.i.i241 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i125, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i125, i32 1, i32 3, i32 1) #20
  %405 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i125, ptr %count.i.i125, i32 1, ptr elementtype(i32) %count.i.i125) #20, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !247
  %call.i.i.i243 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i127, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i127, i32 1, i32 3, i32 1) #20
  %406 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i127, ptr %count.i.i127, i32 1, ptr elementtype(i32) %count.i.i127) #20, !srcloc !227
  br label %out

out:                                              ; preds = %out_enable_tasklet, %land.lhs.true.out_crit_edge
  %call.i.i119 = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_changing, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %link_changing, i32 1, i32 3, i32 1) #20
  %407 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %link_changing, ptr %link_changing, i32 1, ptr elementtype(i32) %link_changing) #20, !srcloc !228
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_mdio_read(ptr nocapture noundef readonly %netdev, i32 noundef %phy, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg)
  %cmp.not = icmp eq i32 %reg, 1
  %shl.i = shl i32 %phy, 6
  %and.i = and i32 %shl.i, 1984
  %shl.i28 = shl i32 %reg, 11
  %and.i29 = and i32 %shl.i28, 63488
  %or = or i32 %and.i, %and.i29
  %or3 = or i32 %or, 16
  %0 = tail call i32 @llvm.bswap.i32(i32 %or3) #20
  %regs.i = getelementptr i8, ptr %netdev, i32 2312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 8
  %add.ptr.i30 = getelementptr i8, ptr %2, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %0) #20, !srcloc !224
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %4, i32 80
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !248
  tail call void @arm_heavy_mb() #20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 5000, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 4294960) #20
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %8, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #20, !srcloc !221
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.end13, label %for.inc

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.038, -1
  %cmp4 = icmp ugt i32 %i.038, 1
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.do.end11_crit_edge

for.inc.do.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end11

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

do.end11:                                         ; preds = %for.inc.1.do.end11_crit_edge, %for.inc.do.end11_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %phy, i32 noundef %reg) #23
  br label %cleanup

if.end13:                                         ; preds = %for.body
  br i1 %cmp.not, label %read_again.1, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

read_again.1:                                     ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %add.ptr.i30.1 = getelementptr i8, ptr %12, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.1, i32 %0) #20, !srcloc !224
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i.1 = getelementptr i8, ptr %14, i32 80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.1) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !248
  tail call void @arm_heavy_mb() #20
  br label %for.body.1

for.body.1:                                       ; preds = %for.inc.1.for.body.1_crit_edge, %read_again.1
  %i.038.1 = phi i32 [ 5000, %read_again.1 ], [ %dec.1, %for.inc.1.for.body.1_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 4294960) #20
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr.i32.1 = getelementptr i8, ptr %18, i32 80
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.1) #20, !srcloc !221
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %and.1 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp6.1 = icmp eq i32 %and.1, 0
  br i1 %cmp6.1, label %for.body.1.if.end16_crit_edge, label %for.inc.1

for.body.1.if.end16_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

for.inc.1:                                        ; preds = %for.body.1
  %dec.1 = add nsw i32 %i.038.1, -1
  %cmp4.1 = icmp ugt i32 %i.038.1, 1
  br i1 %cmp4.1, label %for.inc.1.for.body.1_crit_edge, label %for.inc.1.do.end11_crit_edge

for.inc.1.do.end11_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end11

for.inc.1.for.body.1_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.1

if.end16:                                         ; preds = %for.body.1.if.end16_crit_edge, %if.end13.if.end16_crit_edge
  %.lcssa.lcssa = phi i32 [ %10, %if.end13.if.end16_crit_edge ], [ %20, %for.body.1.if.end16_crit_edge ]
  %shr = lshr i32 %.lcssa.lcssa, 16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end11
  %retval.0 = phi i32 [ 0, %do.end11 ], [ %shr, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_mdio_write(ptr nocapture noundef readonly %netdev, i32 noundef %phy, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %val, 16
  %shl.i = shl i32 %phy, 6
  %and.i = and i32 %shl.i, 1984
  %or = or i32 %shl, %and.i
  %shl.i20 = shl i32 %reg, 11
  %and.i21 = and i32 %shl.i20, 63488
  %or2 = or i32 %or, %and.i21
  %or4 = or i32 %or2, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %0 = tail call i32 @llvm.bswap.i32(i32 %or4) #20
  %regs.i = getelementptr i8, ptr %netdev, i32 2312
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %2, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %0) #20, !srcloc !224
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %4, i32 80
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.027 = phi i32 [ 5000, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 4294960) #20
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %add.ptr.i24 = getelementptr i8, ptr %8, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %10 = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %for.body.if.end14_crit_edge, label %for.inc

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.027, -1
  %cmp = icmp ugt i32 %i.027, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.end12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

do.end12:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %phy, i32 noundef %reg) #23
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %for.body.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_set_phyfifo_5level(ptr nocapture noundef readonly %jme) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %dev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mii_if = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 3
  %2 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_if, align 4
  %shl.i.i = shl i32 %3, 6
  %and.i.i = and i32 %shl.i.i, 1984
  %or4.i = or i32 %and.i.i, 317488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %4 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #20
  %regs.i.i = getelementptr i8, ptr %1, i32 2312
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %4) #20, !srcloc !224
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.027.i = phi i32 [ 5000, %entry ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #20
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %14 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7.i = icmp eq i32 %14, 0
  br i1 %cmp7.i, label %for.body.i.jme_mdio_write.exit_crit_edge, label %for.inc.i

for.body.i.jme_mdio_write.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_mdio_write.exit

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.027.i, -1
  %cmp.i = icmp ugt i32 %i.027.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end12.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

do.end12.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %3, i32 noundef 27) #23
  br label %jme_mdio_write.exit

jme_mdio_write.exit:                              ; preds = %do.end12.i, %for.body.i.jme_mdio_write.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_phy_off(ptr nocapture noundef readonly %jme) unnamed_addr #5 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  %dev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mii_if = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 3
  %2 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_if, align 4
  %call = tail call i32 @jme_mdio_read(ptr noundef %1, i32 noundef %3, i32 noundef 0)
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii_if, align 4
  %or = shl i32 %call, 16
  %shl.i.i = shl i32 %7, 6
  %and.i.i = and i32 %shl.i.i, 1984
  %shl.i = or i32 %and.i.i, %or
  %or4.i = or i32 %shl.i, 134217776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %8 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #20
  %regs.i.i = getelementptr i8, ptr %5, i32 2312
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %8) #20, !srcloc !224
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.027.i = phi i32 [ 5000, %entry ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 4294960) #20
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %16, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %18 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.i = icmp eq i32 %18, 0
  br i1 %cmp7.i, label %for.body.i.jme_mdio_write.exit_crit_edge, label %for.inc.i

for.body.i.jme_mdio_write.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_mdio_write.exit

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.027.i, -1
  %cmp.i = icmp ugt i32 %i.027.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end12.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

do.end12.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %7, i32 noundef 0) #23
  br label %jme_mdio_write.exit

jme_mdio_write.exit:                              ; preds = %do.end12.i, %for.body.i.jme_mdio_write.exit_crit_edge
  %chip_main_rev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 31
  %19 = ptrtoint ptr %chip_main_rev to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_main_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %20)
  %cmp.i11 = icmp ult i8 %20, 5
  br i1 %cmp.i11, label %jme_mdio_write.exit.if.end_crit_edge, label %if.then

jme_mdio_write.exit.if.end_crit_edge:             ; preds = %jme_mdio_write.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %jme_mdio_write.exit
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #20
  %regs.i.i12 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i12, align 8
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 1060
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %24 = or i32 %23, 15
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #20
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %27 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i12, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %28, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %24) #20, !srcloc !224
  %29 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i12, align 8
  %add.ptr2.i.i13 = getelementptr i8, ptr %30, i32 1060
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i13) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %32 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %jme, align 8
  %call1.i = call i32 @pci_read_config_dword(ptr noundef %33, i32 noundef 228, ptr noundef nonnull %reg.i) #20
  %34 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %35, -49153
  %or2.i = or i32 %and.i, 16384
  store i32 %or2.i, ptr %reg.i, align 4
  %36 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %jme, align 8
  %call4.i = call i32 @pci_write_config_dword(ptr noundef %37, i32 noundef 228, i32 noundef %or2.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %jme_mdio_write.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_reset_mac_processor(ptr noundef %jme) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_ghc.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 19
  %0 = ptrtoint ptr %reg_ghc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_ghc.i, align 8
  %and.i = and i32 %1, -113
  store i32 %and.i, ptr %reg_ghc.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %2 = tail call i32 @llvm.bswap.i32(i32 %and.i) #20
  %regs.i.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #20, !srcloc !224
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %6, i32 84
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %9, i32 84
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %reg_gpreg1.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 21
  %11 = ptrtoint ptr %reg_gpreg1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_gpreg1.i, align 8
  %and.i27 = and i32 %12, -97
  store i32 %and.i27, ptr %reg_gpreg1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i27) #20
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i29 = getelementptr i8, ptr %15, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29, i32 %13) #20, !srcloc !224
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i30 = getelementptr i8, ptr %17, i32 2060
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i30) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %19 = ptrtoint ptr %reg_gpreg1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_gpreg1.i, align 8
  %and.i32 = and i32 %20, -67108865
  store i32 %and.i32, ptr %reg_gpreg1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i32) #20
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i34 = getelementptr i8, ptr %23, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 %21) #20, !srcloc !224
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i35 = getelementptr i8, ptr %25, i32 2060
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i35) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i36 = getelementptr i8, ptr %28, i32 2060
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i36) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %30 = ptrtoint ptr %reg_ghc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_ghc.i, align 8
  %and.i38 = and i32 %31, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and.i38)
  %cmp.i = icmp eq i32 %and.i38, 48
  %storemerge.v.i = select i1 %cmp.i, i32 5242880, i32 10485760
  %storemerge.i = or i32 %storemerge.v.i, %31
  %32 = ptrtoint ptr %reg_ghc.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge.i, ptr %reg_ghc.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %33 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i) #20
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i40 = getelementptr i8, ptr %35, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 %33) #20, !srcloc !224
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i41 = getelementptr i8, ptr %37, i32 84
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i41) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %39 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i42 = getelementptr i8, ptr %40, i32 84
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i42) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #20
  %43 = ptrtoint ptr %reg_ghc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_ghc.i, align 8
  %or.i = or i32 %44, 1073741824
  store i32 %or.i, ptr %reg_ghc.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i) #20
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i45 = getelementptr i8, ptr %47, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 %45) #20, !srcloc !224
  %48 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i46 = getelementptr i8, ptr %49, i32 84
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i46) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i47 = getelementptr i8, ptr %52, i32 84
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i47) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #20
  %55 = ptrtoint ptr %reg_gpreg1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg_gpreg1.i, align 8
  %or.i49 = or i32 %56, 67108864
  store i32 %or.i49, ptr %reg_gpreg1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i49) #20
  %58 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i51 = getelementptr i8, ptr %59, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i51, i32 %57) #20, !srcloc !224
  %60 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i52 = getelementptr i8, ptr %61, i32 2060
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i52) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i53 = getelementptr i8, ptr %64, i32 2060
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i53) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %66 = ptrtoint ptr %reg_ghc.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reg_ghc.i, align 8
  %and.i55 = and i32 %67, -15728641
  store i32 %and.i55, ptr %reg_ghc.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %68 = tail call i32 @llvm.bswap.i32(i32 %and.i55) #20
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i57 = getelementptr i8, ptr %70, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %68) #20, !srcloc !224
  %71 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i58 = getelementptr i8, ptr %72, i32 84
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i58) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %74 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i59 = getelementptr i8, ptr %75, i32 84
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i59) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748) #20
  %78 = ptrtoint ptr %reg_ghc.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reg_ghc.i, align 8
  %and.i61 = and i32 %79, -1073741825
  store i32 %and.i61, ptr %reg_ghc.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %80 = tail call i32 @llvm.bswap.i32(i32 %and.i61) #20
  %81 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i63 = getelementptr i8, ptr %82, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 %80) #20, !srcloc !224
  %83 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i64 = getelementptr i8, ptr %84, i32 84
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i64) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %86 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i65 = getelementptr i8, ptr %87, i32 84
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i65) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748) #20
  %90 = ptrtoint ptr %reg_gpreg1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %reg_gpreg1.i, align 8
  %and.i67 = and i32 %91, -67108865
  store i32 %and.i67, ptr %reg_gpreg1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %92 = tail call i32 @llvm.bswap.i32(i32 %and.i67) #20
  %93 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i69 = getelementptr i8, ptr %94, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i69, i32 %92) #20, !srcloc !224
  %95 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i70 = getelementptr i8, ptr %96, i32 2060
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i70) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %98 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i71 = getelementptr i8, ptr %99, i32 2060
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i71) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %101 = ptrtoint ptr %reg_ghc.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %reg_ghc.i, align 8
  %and.i73 = and i32 %102, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and.i73)
  %cmp.i74 = icmp eq i32 %and.i73, 48
  %storemerge.v.i75 = select i1 %cmp.i74, i32 5242880, i32 10485760
  %storemerge.i76 = or i32 %storemerge.v.i75, %102
  %103 = ptrtoint ptr %reg_ghc.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %storemerge.i76, ptr %reg_ghc.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %104 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i76) #20
  %105 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i78 = getelementptr i8, ptr %106, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78, i32 %104) #20, !srcloc !224
  %107 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i79 = getelementptr i8, ptr %108, i32 84
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i79) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %110 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i80 = getelementptr i8, ptr %111, i32 84
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i80) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748) #20
  %114 = ptrtoint ptr %reg_gpreg1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %reg_gpreg1.i, align 8
  %or.i82 = or i32 %115, 67108864
  store i32 %or.i82, ptr %reg_gpreg1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %116 = tail call i32 @llvm.bswap.i32(i32 %or.i82) #20
  %117 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i84 = getelementptr i8, ptr %118, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84, i32 %116) #20, !srcloc !224
  %119 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i85 = getelementptr i8, ptr %120, i32 2060
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i85) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %122 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i86 = getelementptr i8, ptr %123, i32 2060
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i86) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %125 = ptrtoint ptr %reg_ghc.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %reg_ghc.i, align 8
  %and.i88 = and i32 %126, -15728641
  store i32 %and.i88, ptr %reg_ghc.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %127 = tail call i32 @llvm.bswap.i32(i32 %and.i88) #20
  %128 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i90 = getelementptr i8, ptr %129, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i90, i32 %127) #20, !srcloc !224
  %130 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i91 = getelementptr i8, ptr %131, i32 84
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i91) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %133 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i92 = getelementptr i8, ptr %134, i32 84
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i92) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %136 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %137, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #20, !srcloc !224
  %138 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %139, i32 36
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %141 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i94 = getelementptr i8, ptr %142, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 0) #20, !srcloc !224
  %143 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i95 = getelementptr i8, ptr %144, i32 40
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i95) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %146 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i97 = getelementptr i8, ptr %147, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 0) #20, !srcloc !224
  %148 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i98 = getelementptr i8, ptr %149, i32 44
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i98) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %151 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i100 = getelementptr i8, ptr %152, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 0) #20, !srcloc !224
  %153 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i101 = getelementptr i8, ptr %154, i32 48
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i101) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %156 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i103 = getelementptr i8, ptr %157, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 0) #20, !srcloc !224
  %158 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i104 = getelementptr i8, ptr %159, i32 4
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i104) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %161 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i106 = getelementptr i8, ptr %162, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 0) #20, !srcloc !224
  %163 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i107 = getelementptr i8, ptr %164, i32 8
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i107) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %166 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i109 = getelementptr i8, ptr %167, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 0) #20, !srcloc !224
  %168 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i110 = getelementptr i8, ptr %169, i32 12
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i110) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %171 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i112 = getelementptr i8, ptr %172, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 0) #20, !srcloc !224
  %173 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i113 = getelementptr i8, ptr %174, i32 16
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i113) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %176 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i115 = getelementptr i8, ptr %177, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 0) #20, !srcloc !224
  %178 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i116 = getelementptr i8, ptr %179, i32 64
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i116) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %181 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i118 = getelementptr i8, ptr %182, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 0) #20, !srcloc !224
  %183 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i119 = getelementptr i8, ptr %184, i32 68
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i119) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0128 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %and.i120 = shl i32 %i.0128, 24
  %186 = or i32 %and.i120, 134217728
  %187 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i123 = getelementptr i8, ptr %188, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123, i32 %186) #20, !srcloc !224
  %189 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i124 = getelementptr i8, ptr %190, i32 76
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i124) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !249
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %192 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %193, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 -842150451) #20, !srcloc !224
  %194 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i3.i = getelementptr i8, ptr %195, i32 72
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i3.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !250
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %197 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %198, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %and.i120) #20, !srcloc !224
  %199 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i6.i = getelementptr i8, ptr %200, i32 76
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i6.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !251
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %202 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %203, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #20, !srcloc !224
  %204 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i9.i = getelementptr i8, ptr %205, i32 72
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i9.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !252
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %207 = or i32 %and.i120, 268435456
  %208 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.1.i = getelementptr i8, ptr %209, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.1.i, i32 %207) #20, !srcloc !224
  %210 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i6.1.i = getelementptr i8, ptr %211, i32 76
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i6.1.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !251
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %213 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i8.1.i = getelementptr i8, ptr %214, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.1.i, i32 0) #20, !srcloc !224
  %215 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i9.1.i = getelementptr i8, ptr %216, i32 72
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i9.1.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !252
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %218 = or i32 %and.i120, 536870912
  %219 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.2.i = getelementptr i8, ptr %220, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.2.i, i32 %218) #20, !srcloc !224
  %221 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i6.2.i = getelementptr i8, ptr %222, i32 76
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i6.2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !251
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %224 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i8.2.i = getelementptr i8, ptr %225, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.2.i, i32 0) #20, !srcloc !224
  %226 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i9.2.i = getelementptr i8, ptr %227, i32 72
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i9.2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !252
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %229 = or i32 %and.i120, 805306368
  %230 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.3.i = getelementptr i8, ptr %231, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.3.i, i32 %229) #20, !srcloc !224
  %232 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i6.3.i = getelementptr i8, ptr %233, i32 76
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i6.3.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !251
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %235 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i8.3.i = getelementptr i8, ptr %236, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.3.i, i32 0) #20, !srcloc !224
  %237 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i9.3.i = getelementptr i8, ptr %238, i32 72
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i9.3.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !252
  tail call void @arm_heavy_mb() #20
  %inc = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %fpgaver = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 29
  %240 = ptrtoint ptr %fpgaver to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %fpgaver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool.not = icmp eq i32 %241, 0
  %. = select i1 %tobool.not, i32 3146241, i32 3150337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %242 = tail call i32 @llvm.bswap.i32(i32 %.) #20
  %243 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i126 = getelementptr i8, ptr %244, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %242) #20, !srcloc !224
  %245 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i127 = getelementptr i8, ptr %246, i32 2056
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i127) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i.i = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 65535) #20, !srcloc !224
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %napi = getelementptr i8, ptr %netdev, i32 3208
  tail call void @napi_enable(ptr noundef %napi) #20
  %txclean_task = getelementptr i8, ptr %netdev, i32 2912
  tail call void @tasklet_setup(ptr noundef %txclean_task, ptr noundef nonnull @jme_tx_clean_tasklet) #20
  %rxclean_task = getelementptr i8, ptr %netdev, i32 2888
  tail call void @tasklet_setup(ptr noundef %rxclean_task, ptr noundef nonnull @jme_rx_clean_tasklet) #20
  %rxempty_task = getelementptr i8, ptr %netdev, i32 2864
  tail call void @tasklet_setup(ptr noundef %rxempty_task, ptr noundef nonnull @jme_rx_empty_tasklet) #20
  %dev.i = getelementptr i8, ptr %netdev, i32 2308
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call i32 @pci_enable_msi(ptr noundef %8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %flags.i = getelementptr i8, ptr %netdev, i32 3004
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #20
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %handler.0.i = phi ptr [ @jme_intr, %entry.if.end.i_crit_edge ], [ @jme_msi, %if.then.i ]
  %irq_flags.0.i = phi i32 [ 128, %entry.if.end.i_crit_edge ], [ 0, %if.then.i ]
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull %handler.0.i, ptr noundef null, i32 noundef %irq_flags.0.i, ptr noundef %6, ptr noundef %6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %flags5.i = getelementptr i8, ptr %netdev, i32 3004
  %13 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags5.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not.i = icmp eq i32 %15, 0
  %cond.i = select i1 %tobool7.not.i, ptr @.str.47, ptr @.str.46
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond.i, i32 noundef %call.i.i) #23
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags5.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp eq i32 %18, 0
  br i1 %tobool10.not.i, label %if.then4.i.err_out_crit_edge, label %if.then11.i

if.then4.i.err_out_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out

if.then11.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #22
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  tail call void @pci_disable_msi(ptr noundef %20) #20
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags5.i) #20
  br label %err_out

if.end:                                           ; preds = %if.end.i
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %irq16.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %irq16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq16.i, align 4
  %irq17.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 64
  %25 = ptrtoint ptr %irq17.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %irq17.i, align 4
  tail call fastcc void @jme_start_irq(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_phy_on(ptr noundef %add.ptr.i)
  %flags = getelementptr i8, ptr %netdev, i32 3004
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not = icmp eq i32 %28, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %old_cmd = getelementptr i8, ptr %netdev, i32 3076
  %call5 = tail call i32 @jme_set_link_ksettings(ptr noundef %netdev, ptr noundef %old_cmd)
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @jme_reset_phy_processor(ptr noundef %add.ptr.i)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  tail call fastcc void @jme_phy_calibration(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_phy_setEA(ptr noundef %add.ptr.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %29 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i28 = getelementptr i8, ptr %30, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28, i32 128) #20, !srcloc !224
  %31 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i29 = getelementptr i8, ptr %32, i32 2048
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i29) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %cleanup

err_out:                                          ; preds = %if.then11.i, %if.then4.i.err_out_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %34 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  tail call void @netif_carrier_off(ptr noundef %netdev) #20
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  tail call void @netif_carrier_off(ptr noundef %netdev) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %regs.i.i = getelementptr i8, ptr %netdev, i32 2312
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1061346) #20, !srcloc !224
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %5, i32 2092
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %8, i32 2092
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  %dev.i = getelementptr i8, ptr %netdev, i32 2308
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %13, ptr noundef %15) #20
  %flags.i = getelementptr i8, ptr %netdev, i32 3004
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %entry.jme_free_irq.exit_crit_edge, label %if.then.i

entry.jme_free_irq.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_free_irq.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  tail call void @pci_disable_msi(ptr noundef %20) #20
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #20
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %irq5.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %irq5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq5.i, align 4
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %irq7.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 64
  %27 = ptrtoint ptr %irq7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %irq7.i, align 4
  br label %jme_free_irq.exit

jme_free_irq.exit:                                ; preds = %if.then.i, %entry.jme_free_irq.exit_crit_edge
  %state.i = getelementptr i8, ptr %netdev, i32 3216
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not = icmp eq i32 %30, 0
  br i1 %tobool.i.not, label %if.then, label %jme_free_irq.exit.if.end_crit_edge

jme_free_irq.exit.if.end_crit_edge:               ; preds = %jme_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %jme_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #22
  %napi = getelementptr i8, ptr %netdev, i32 3208
  tail call void @napi_disable(ptr noundef %napi) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %jme_free_irq.exit.if.end_crit_edge
  %linkch_task = getelementptr i8, ptr %netdev, i32 2936
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %linkch_task) #20
  %txclean_task = getelementptr i8, ptr %netdev, i32 2912
  tail call void @tasklet_kill(ptr noundef %txclean_task) #20
  %rxclean_task = getelementptr i8, ptr %netdev, i32 2888
  tail call void @tasklet_kill(ptr noundef %rxclean_task) #20
  %rxempty_task = getelementptr i8, ptr %netdev, i32 2864
  tail call void @tasklet_kill(ptr noundef %rxempty_task) #20
  tail call fastcc void @jme_disable_rx_engine(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_disable_tx_engine(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_reset_mac_processor(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_free_rx_resources(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_free_tx_resources(ptr noundef %add.ptr.i)
  %phylink = getelementptr i8, ptr %netdev, i32 3036
  %31 = ptrtoint ptr %phylink to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %phylink, align 4
  tail call fastcc void @jme_phy_off(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.rhs:                                         ; preds = %entry
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %4 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %land.rhs.if.end_crit_edge, label %skb_header_cloned.exit.i

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

skb_header_cloned.exit.i:                         ; preds = %land.rhs
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #20
  %5 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %6, 65535
  %shr.i.i = ashr i32 %6, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %skb_header_cloned.exit.i.if.end_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end_crit_edge:        ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow_head.exit.if.end_crit_edge, label %if.then, !prof !230

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #20
  %dev = getelementptr i8, ptr %netdev, i32 2308
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 7
  %9 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %skb_header_cloned.exit.i.if.end_crit_edge, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_ring_mask.i = getelementptr i8, ptr %netdev, i32 3044
  %11 = ptrtoint ptr %tx_ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_ring_mask.i, align 4
  %next_to_use.i = getelementptr i8, ptr %netdev, i32 2496
  %13 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_to_use.i, align 4
  %15 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %18 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %nr_free.i = getelementptr i8, ptr %netdev, i32 2504
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_free.i, i32 noundef 4) #20
  %19 = ptrtoint ptr %nr_free.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %nr_free.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add.i)
  %cmp.i = icmp slt i32 %20, %add.i
  br i1 %cmp.i, label %if.end.if.then12_crit_edge, label %jme_alloc_txdesc.exit, !prof !231

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then12

jme_alloc_txdesc.exit:                            ; preds = %if.end
  %call.i.i19.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_free.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %nr_free.i, i32 1, i32 3, i32 1) #20
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_free.i, ptr %nr_free.i, i32 %add.i, ptr elementtype(i32) %nr_free.i) #20, !srcloc !227
  %22 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %next_to_use.i, align 4
  %add7.i = add i32 %23, %add.i
  %and.i = and i32 %add7.i, %12
  store i32 %and.i, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %jme_alloc_txdesc.exit.if.then12_crit_edge, label %if.end17, !prof !231

jme_alloc_txdesc.exit.if.then12_crit_edge:        ; preds = %jme_alloc_txdesc.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then12

if.then12:                                        ; preds = %jme_alloc_txdesc.exit.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  %msg_enable = getelementptr i8, ptr %netdev, i32 3072
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable, align 8
  %and = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then12.cleanup_crit_edge, label %if.then14

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  %dev15 = getelementptr i8, ptr %netdev, i32 2308
  %28 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.55) #23
  br label %cleanup

if.end17:                                         ; preds = %jme_alloc_txdesc.exit
  %desc.i = getelementptr i8, ptr %netdev, i32 2480
  %30 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc.i, align 4
  %add.ptr.i42 = getelementptr %struct.txdesc, ptr %31, i32 %14
  %bufinf.i = getelementptr i8, ptr %netdev, i32 2492
  %32 = ptrtoint ptr %bufinf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bufinf.i, align 4
  %add.ptr2.i = getelementptr %struct.jme_buffer_info, ptr %33, i32 %14
  %arrayidx5.i = getelementptr [4 x i32], ptr %add.ptr.i42, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = call ptr @memset(ptr %add.ptr.i42, i32 0, i32 16)
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %conv.i43 = trunc i32 %36 to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv.i43) #20
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !253
  tail call void @arm_heavy_mb() #20
  %mss.i = getelementptr inbounds %struct.anon.152, ptr %add.ptr.i42, i32 0, i32 4
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %gso_size.i.i, align 4
  %shl.i.i = shl i16 %42, 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %shl.i.i) #20
  %44 = ptrtoint ptr %mss.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %mss.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %shl.i.i)
  %tobool.not.i.i45 = icmp eq i16 %shl.i.i, 0
  br i1 %tobool.not.i.i45, label %if.then.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end17
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %45 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %46)
  %cmp.i.i = icmp eq i16 %46, 2048
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %47 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %49 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %50 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %48, i32 %conv.i.i.i.i
  br i1 %cmp.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %check.i.i, align 2
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %saddr.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 9
  %54 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %daddr.i.i, align 4
  %56 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %55, i32 %53, i32 6) #25, !srcloc !254
  %57 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %56) #25, !srcloc !255
  %58 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %60 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i23.i.i = zext i16 %61 to i32
  %add.ptr.i.i24.i.i = getelementptr i8, ptr %59, i32 %conv.i.i23.i.i
  br label %jme_tx_tso.exit.thread.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %transport_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %62 = ptrtoint ptr %transport_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %transport_header.i.i.i.i.i, align 2
  %conv.i.i8.i.i.i = zext i16 %63 to i32
  %add.ptr.i.i9.i.i.i = getelementptr i8, ptr %48, i32 %conv.i.i8.i.i.i
  %payload_len.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %payload_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %payload_len.i.i.i, align 4
  %saddr.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %daddr.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i.i.i, ptr noundef %daddr.i.i.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #20
  %65 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i.i.i) #25, !srcloc !255
  br label %jme_tx_tso.exit.thread.i

jme_tx_tso.exit.thread.i:                         ; preds = %if.else.i.i, %if.then6.i.i
  %add.ptr.i.i24.sink.i.i = phi ptr [ %add.ptr.i.i24.i.i, %if.then6.i.i ], [ %add.ptr.i.i9.i.i.i, %if.else.i.i ]
  %neg.sink.in.in.in.in.i.i = phi i32 [ %57, %if.then6.i.i ], [ %65, %if.else.i.i ]
  %neg.sink.in.in.in.i.i = xor i32 %neg.sink.in.in.in.in.i.i, -1
  %neg.sink.in.in.i.i = lshr i32 %neg.sink.in.in.in.i.i, 16
  %neg.sink.in.i.i = trunc i32 %neg.sink.in.in.i.i to i16
  %neg.sink.i.i = xor i16 %neg.sink.in.i.i, -1
  %check12.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i24.sink.i.i, i32 0, i32 6
  %66 = ptrtoint ptr %check12.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %neg.sink.i.i, ptr %check12.i.i, align 4
  br label %if.end.i48

if.then.i:                                        ; preds = %if.end17
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %67 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load.i.i46 = load i16, ptr %ip_summed.i.i, align 8
  %68 = and i16 %bf.load.i.i46, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %68)
  %cmp.i54.i = icmp eq i16 %68, 1536
  br i1 %cmp.i54.i, label %if.then.i56.i, label %if.then.i.if.end.i48_crit_edge

if.then.i.if.end.i48_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i48

if.then.i56.i:                                    ; preds = %if.then.i
  %protocol.i55.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %69 = ptrtoint ptr %protocol.i55.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %protocol.i55.i, align 8
  %71 = zext i16 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %70, label %if.then.i56.i.do.body.i.i_crit_edge [
    i16 2048, label %sw.bb.i.i
    i16 -31011, label %sw.bb4.i.i
  ]

if.then.i56.i.do.body.i.i_crit_edge:              ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i.i

sw.bb.i.i:                                        ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #22
  %head.i.i.i57.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %72 = ptrtoint ptr %head.i.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %head.i.i.i57.i, align 8
  %network_header.i.i.i58.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %74 = ptrtoint ptr %network_header.i.i.i58.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %network_header.i.i.i58.i, align 4
  %conv.i.i.i59.i = zext i16 %75 to i32
  %add.ptr.i.i.i60.i = getelementptr i8, ptr %73, i32 %conv.i.i.i59.i
  %protocol3.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i60.i, i32 0, i32 6
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #22
  %head.i.i23.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %76 = ptrtoint ptr %head.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i.i23.i.i, align 8
  %network_header.i.i24.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %78 = ptrtoint ptr %network_header.i.i24.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %network_header.i.i24.i.i, align 4
  %conv.i.i25.i.i = zext i16 %79 to i32
  %add.ptr.i.i26.i.i = getelementptr i8, ptr %77, i32 %conv.i.i25.i.i
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i26.i.i, i32 0, i32 3
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb4.i.i, %sw.bb.i.i
  %ip_proto.0.in.i.i = phi ptr [ %nexthdr.i.i, %sw.bb4.i.i ], [ %protocol3.i.i, %sw.bb.i.i ]
  %80 = ptrtoint ptr %ip_proto.0.in.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %ip_proto.0.i.i = load i8, ptr %ip_proto.0.in.i.i, align 1
  %81 = zext i8 %ip_proto.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %ip_proto.0.i.i, label %sw.epilog.i.i.do.body.i.i_crit_edge [
    i8 6, label %sw.epilog.i.i.if.end.i48_crit_edge
    i8 17, label %sw.bb10.i.i
  ]

sw.epilog.i.i.if.end.i48_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i48

sw.epilog.i.i.do.body.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i.i

sw.bb10.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i48

do.body.i.i:                                      ; preds = %sw.epilog.i.i.do.body.i.i_crit_edge, %if.then.i56.i.do.body.i.i_crit_edge
  %msg_enable.i.i = getelementptr i8, ptr %netdev, i32 3072
  %82 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i47 = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47)
  %tobool.not.i61.i = icmp eq i32 %and.i.i47, 0
  br i1 %tobool.not.i61.i, label %do.body.i.i.if.end.i48_crit_edge, label %if.then15.i.i

do.body.i.i.if.end.i48_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i48

if.then15.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i.i = getelementptr i8, ptr %netdev, i32 2308
  %84 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %85, ptr noundef nonnull @.str.56) #23
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then15.i.i, %do.body.i.i.if.end.i48_crit_edge, %sw.bb10.i.i, %sw.epilog.i.i.if.end.i48_crit_edge, %if.then.i.if.end.i48_crit_edge, %jme_tx_tso.exit.thread.i
  %flags.2.i = phi i8 [ -62, %jme_tx_tso.exit.thread.i ], [ -64, %do.body.i.i.if.end.i48_crit_edge ], [ -64, %if.then15.i.i ], [ -56, %sw.bb10.i.i ], [ -64, %if.then.i.if.end.i48_crit_edge ], [ -48, %sw.epilog.i.i.if.end.i48_crit_edge ]
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %86 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %bf.load.i62.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i62.i)
  %tobool.not.i63.i = icmp sgt i32 %bf.load.i62.i, -1
  br i1 %tobool.not.i63.i, label %if.end.i48.jme_tx_vlan.exit.i_crit_edge, label %if.then.i64.i

if.end.i48.jme_tx_vlan.exit.i_crit_edge:          ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_tx_vlan.exit.i

if.then.i64.i:                                    ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #22
  %87 = or i8 %flags.2.i, 1
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %88 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vlan_tci.i.i, align 2
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #20
  %91 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %add.ptr.i42, align 2
  br label %jme_tx_vlan.exit.i

jme_tx_vlan.exit.i:                               ; preds = %if.then.i64.i, %if.end.i48.jme_tx_vlan.exit.i_crit_edge
  %flags.3.i = phi i8 [ %flags.2.i, %if.end.i48.jme_tx_vlan.exit.i_crit_edge ], [ %87, %if.then.i64.i ]
  %92 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %desc.i, align 4
  %94 = ptrtoint ptr %bufinf.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bufinf.i, align 4
  %dev.i65.i = getelementptr i8, ptr %netdev, i32 2308
  %96 = ptrtoint ptr %dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i65.i, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 23
  %98 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %features.i.i, align 16
  %and.i66.i = and i64 %99, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i66.i)
  %tobool.not.i67.i = icmp eq i64 %and.i66.i, 0
  %100 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i.i, align 4
  %nr_frags2.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %nr_frags2.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %nr_frags2.i.i, align 2
  %conv.i.i = zext i8 %103 to i32
  %104 = ptrtoint ptr %tx_ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_ring_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp131.not.i.i = icmp eq i8 %103, 0
  br i1 %cmp131.not.i.i, label %jme_tx_vlan.exit.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

jme_tx_vlan.exit.i.for.end.i.i_crit_edge:         ; preds = %jme_tx_vlan.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %jme_tx_vlan.exit.i
  %add.i.i = add nuw i32 %14, 2
  %conv9.i.i.i = select i1 %tobool.not.i67.i, i8 -128, i8 -96
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0132.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %106 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.skb_shared_info, ptr %107, i32 0, i32 12, i32 %i.0132.i.i
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr.i, align 8
  %110 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx5.i.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %107, i32 0, i32 12, i32 %i.0132.i.i, i32 2
  %112 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %107, i32 0, i32 12, i32 %i.0132.i.i, i32 1
  %114 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bv_len.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %call.i.i.i49 = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i.i, ptr noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef 1, i32 noundef 0) #20
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i.i, i32 noundef %call.i.i.i49) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i49)
  %cmp.i.not.i.i.i = icmp eq i32 %call.i.i.i49, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i69.i, label %for.inc.i.i, !prof !231

if.then.i69.i:                                    ; preds = %for.body.i.i
  %116 = ptrtoint ptr %bufinf.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bufinf.i, align 4
  %118 = ptrtoint ptr %tx_ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_ring_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0132.i.i)
  %cmp12.i.not.i.i = icmp eq i32 %i.0132.i.i, 0
  br i1 %cmp12.i.not.i.i, label %if.then.i69.i.cleanup_crit_edge, label %if.then.i69.i.for.body.i.i.i_crit_edge

if.then.i69.i.for.body.i.i.i_crit_edge:           ; preds = %if.then.i69.i
  br label %for.body.i.i.i

if.then.i69.i.cleanup_crit_edge:                  ; preds = %if.then.i69.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i69.i.for.body.i.i.i_crit_edge
  %j.013.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i69.i.for.body.i.i.i_crit_edge ]
  %add2.i.i.i = add i32 %j.013.i.i.i, %add.i.i
  %and.i.i.i = and i32 %add2.i.i.i, %119
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i, align 8
  %dev.i88.i.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  %mapping.i89.i.i = getelementptr %struct.jme_buffer_info, ptr %117, i32 %and.i.i.i, i32 1
  %122 = ptrtoint ptr %mapping.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mapping.i89.i.i, align 4
  %len.i.i.i = getelementptr %struct.jme_buffer_info, ptr %117, i32 %and.i.i.i, i32 2
  %124 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i88.i.i, i32 noundef %123, i32 noundef %125, i32 noundef 1, i32 noundef 0) #20
  %126 = ptrtoint ptr %mapping.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %mapping.i89.i.i, align 4
  %127 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %len.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %j.013.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %i.0132.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.cleanup_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i.i

for.body.i.i.i.cleanup_crit_edge:                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.inc.i.i:                                      ; preds = %for.body.i.i
  %add6.i.i = add i32 %i.0132.i.i, %add.i.i
  %and7.i.i = and i32 %add6.i.i, %105
  %add.ptr.i.i = getelementptr %struct.txdesc, ptr %93, i32 %and7.i.i
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i.i.i, i32 noundef %call.i.i.i49, i32 noundef %115, i32 noundef 1) #20
  %128 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %add.ptr.i.i, align 4
  %arrayidx6.i.i.i = getelementptr [4 x i32], ptr %add.ptr.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %arrayidx6.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.anon.153, ptr %add.ptr.i.i, i32 0, i32 2
  %130 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv9.i.i.i, ptr %flags.i.i.i, align 1
  %conv10.i.i.i = trunc i32 %115 to i16
  %131 = tail call i16 @llvm.bswap.i16(i16 %conv10.i.i.i) #20
  %132 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %arrayidx6.i.i.i, align 4
  %bufaddrh.i.i.i = getelementptr inbounds %struct.anon.153, ptr %add.ptr.i.i, i32 0, i32 5
  %133 = ptrtoint ptr %bufaddrh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %bufaddrh.i.i.i, align 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %call.i.i.i49) #20
  %bufaddrl.i.i.i = getelementptr inbounds %struct.anon.153, ptr %add.ptr.i.i, i32 0, i32 6
  %135 = ptrtoint ptr %bufaddrl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %bufaddrl.i.i.i, align 4
  %mapping.i.i.i = getelementptr %struct.jme_buffer_info, ptr %95, i32 %and7.i.i, i32 1
  %136 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call.i.i.i49, ptr %mapping.i.i.i, align 4
  %len15.i.i.i = getelementptr %struct.jme_buffer_info, ptr %95, i32 %and7.i.i, i32 2
  %137 = ptrtoint ptr %len15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %115, ptr %len15.i.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0132.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %jme_tx_vlan.exit.i.for.end.i.i_crit_edge
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %138 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %data_len.i.i.i, align 8
  %140 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %len.i, align 4
  %sub.i.i.i = sub i32 %141, %139
  %142 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %add.ptr.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %144 = load ptr, ptr @mem_map, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %145 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  %sub.i.i50 = add i32 %147, 1073741824
  %shr.i.i51 = lshr i32 %sub.i.i50, 12
  %add.ptr31.i.i = getelementptr %struct.page, ptr %144, i32 %shr.i.i51
  %and33.i.i = and i32 %147, 4095
  %dev.i92.i.i = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  %call.i93.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i92.i.i, ptr noundef %add.ptr31.i.i, i32 noundef %and33.i.i, i32 noundef %sub.i.i.i, i32 noundef 1, i32 noundef 0) #20
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i92.i.i, i32 noundef %call.i93.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i93.i.i)
  %cmp.i.not.i94.i.i = icmp eq i32 %call.i93.i.i, -1
  br i1 %cmp.i.not.i94.i.i, label %if.then37.i.i, label %if.end21, !prof !231

if.then37.i.i:                                    ; preds = %for.end.i.i
  %148 = ptrtoint ptr %bufinf.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bufinf.i, align 4
  %150 = ptrtoint ptr %tx_ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tx_ring_mask.i, align 4
  br i1 %cmp131.not.i.i, label %if.then37.i.i.cleanup_crit_edge, label %for.body.lr.ph.i110.i.i

if.then37.i.i.cleanup_crit_edge:                  ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.lr.ph.i110.i.i:                          ; preds = %if.then37.i.i
  %add.i109.i.i = add i32 %14, 2
  br label %for.body.i119.i.i

for.body.i119.i.i:                                ; preds = %for.body.i119.i.i.for.body.i119.i.i_crit_edge, %for.body.lr.ph.i110.i.i
  %j.013.i111.i.i = phi i32 [ 0, %for.body.lr.ph.i110.i.i ], [ %inc.i117.i.i, %for.body.i119.i.i.for.body.i119.i.i_crit_edge ]
  %add2.i112.i.i = add i32 %add.i109.i.i, %j.013.i111.i.i
  %and.i113.i.i = and i32 %add2.i112.i.i, %151
  %152 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr.i, align 8
  %dev.i114.i.i = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %mapping.i115.i.i = getelementptr %struct.jme_buffer_info, ptr %149, i32 %and.i113.i.i, i32 1
  %154 = ptrtoint ptr %mapping.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mapping.i115.i.i, align 4
  %len.i116.i.i = getelementptr %struct.jme_buffer_info, ptr %149, i32 %and.i113.i.i, i32 2
  %156 = ptrtoint ptr %len.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %len.i116.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i114.i.i, i32 noundef %155, i32 noundef %157, i32 noundef 1, i32 noundef 0) #20
  %158 = ptrtoint ptr %mapping.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %mapping.i115.i.i, align 4
  %159 = ptrtoint ptr %len.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %len.i116.i.i, align 4
  %inc.i117.i.i = add nuw nsw i32 %j.013.i111.i.i, 1
  %exitcond.not.i118.i.i = icmp eq i32 %inc.i117.i.i, %conv.i.i
  br i1 %exitcond.not.i118.i.i, label %for.body.i119.i.i.cleanup_crit_edge, label %for.body.i119.i.i.for.body.i119.i.i_crit_edge

for.body.i119.i.i.for.body.i119.i.i_crit_edge:    ; preds = %for.body.i119.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i119.i.i

for.body.i119.i.i.cleanup_crit_edge:              ; preds = %for.body.i119.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end21:                                         ; preds = %for.end.i.i
  %add22.i.i = add i32 %14, 1
  %and23.i.i = and i32 %105, %add22.i.i
  %add.ptr24.i.i = getelementptr %struct.txdesc, ptr %93, i32 %and23.i.i
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i92.i.i, i32 noundef %call.i93.i.i, i32 noundef %sub.i.i.i, i32 noundef 1) #20
  %160 = ptrtoint ptr %add.ptr24.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %add.ptr24.i.i, align 4
  %arrayidx6.i95.i.i = getelementptr [4 x i32], ptr %add.ptr24.i.i, i32 0, i32 1
  %161 = ptrtoint ptr %arrayidx6.i95.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %arrayidx6.i95.i.i, align 4
  %flags.i96.i.i = getelementptr inbounds %struct.anon.153, ptr %add.ptr24.i.i, i32 0, i32 2
  %conv9.i97.i.i = select i1 %tobool.not.i67.i, i8 -128, i8 -96
  %162 = ptrtoint ptr %flags.i96.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv9.i97.i.i, ptr %flags.i96.i.i, align 1
  %conv10.i98.i.i = trunc i32 %sub.i.i.i to i16
  %163 = tail call i16 @llvm.bswap.i16(i16 %conv10.i98.i.i) #20
  %164 = ptrtoint ptr %arrayidx6.i95.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %arrayidx6.i95.i.i, align 4
  %bufaddrh.i99.i.i = getelementptr inbounds %struct.anon.153, ptr %add.ptr24.i.i, i32 0, i32 5
  %165 = ptrtoint ptr %bufaddrh.i99.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %bufaddrh.i99.i.i, align 4
  %166 = tail call i32 @llvm.bswap.i32(i32 %call.i93.i.i) #20
  %bufaddrl.i100.i.i = getelementptr inbounds %struct.anon.153, ptr %add.ptr24.i.i, i32 0, i32 6
  %167 = ptrtoint ptr %bufaddrl.i100.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %bufaddrl.i100.i.i, align 4
  %mapping.i101.i.i = getelementptr %struct.jme_buffer_info, ptr %95, i32 %and23.i.i, i32 1
  %168 = ptrtoint ptr %mapping.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %call.i93.i.i, ptr %mapping.i101.i.i, align 4
  %len15.i102.i.i = getelementptr %struct.jme_buffer_info, ptr %95, i32 %and23.i.i, i32 2
  %169 = ptrtoint ptr %len15.i102.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %sub.i.i.i, ptr %len15.i102.i.i, align 4
  %flags11.i = getelementptr inbounds %struct.anon.152, ptr %add.ptr.i42, i32 0, i32 2
  %170 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %flags.3.i, ptr %flags11.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !256
  tail call void @arm_heavy_mb() #20
  %171 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i52 = getelementptr inbounds %struct.skb_shared_info, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %nr_frags.i52 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %nr_frags.i52, align 2
  %conv16.i = zext i8 %174 to i32
  %add.i53 = add nuw nsw i32 %conv16.i, 2
  %nr_desc.i = getelementptr %struct.jme_buffer_info, ptr %33, i32 %14, i32 3
  %175 = ptrtoint ptr %nr_desc.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %add.i53, ptr %nr_desc.i, align 4
  %176 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %skb, ptr %add.ptr2.i, align 4
  %177 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %len.i, align 4
  %len19.i = getelementptr %struct.jme_buffer_info, ptr %33, i32 %14, i32 2
  %179 = ptrtoint ptr %len19.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %len19.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %180 = load volatile i32, ptr @jiffies, align 128
  %start_xmit.i = getelementptr %struct.jme_buffer_info, ptr %33, i32 %14, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool21.not.i = icmp eq i32 %180, 0
  %spec.select.i = select i1 %tobool21.not.i, i32 -1, i32 %180
  %181 = ptrtoint ptr %start_xmit.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %spec.select.i, ptr %start_xmit.i, align 4
  %reg_txcs = getelementptr i8, ptr %netdev, i32 3008
  %182 = ptrtoint ptr %reg_txcs to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %reg_txcs, align 8
  %or23 = or i32 %183, 257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %184 = tail call i32 @llvm.bswap.i32(i32 %or23) #20
  %regs.i = getelementptr i8, ptr %netdev, i32 2312
  %185 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #20, !srcloc !224
  %187 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs.i, align 8
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %190 = ptrtoint ptr %bufinf.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %bufinf.i, align 4
  %next_to_clean.i = getelementptr i8, ptr %netdev, i32 2500
  %call.i.i.i56 = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean.i, i32 noundef 4) #20
  %192 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %next_to_clean.i, align 4
  %add.ptr.i57 = getelementptr %struct.jme_buffer_info, ptr %191, i32 %193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !257
  %call.i.i75.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_free.i, i32 noundef 4) #20
  %194 = ptrtoint ptr %nr_free.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile i32, ptr %nr_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %195)
  %cmp.i59 = icmp ult i32 %195, 19
  br i1 %cmp.i59, label %if.then.i61, label %if.end21.if.end34.i_crit_edge, !prof !231

if.end21.if.end34.i_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34.i

if.then.i61:                                      ; preds = %if.end21
  %196 = ptrtoint ptr %dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev.i65.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %197, i32 0, i32 103
  %198 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %199, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #20
  %msg_enable.i = getelementptr i8, ptr %netdev, i32 3072
  %200 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %msg_enable.i, align 8
  %and.i60 = and i32 %201, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool8.not.i = icmp eq i32 %and.i60, 0
  br i1 %tobool8.not.i, label %if.then.i61.do.end16.i_crit_edge, label %if.then9.i

if.then.i61.do.end16.i_crit_edge:                 ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end16.i

if.then9.i:                                       ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #22
  %202 = ptrtoint ptr %dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i65.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %203, ptr noundef nonnull @.str.57) #23
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.then9.i, %if.then.i61.do.end16.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !258
  %call.i.i76.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_free.i, i32 noundef 4) #20
  %204 = ptrtoint ptr %nr_free.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %nr_free.i, align 4
  %tx_wake_threshold.i = getelementptr i8, ptr %netdev, i32 3048
  %206 = ptrtoint ptr %tx_wake_threshold.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %tx_wake_threshold.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %207)
  %cmp21.not.i = icmp ult i32 %205, %207
  br i1 %cmp21.not.i, label %do.end16.i.if.end34.i_crit_edge, label %if.then22.i

do.end16.i.if.end34.i_crit_edge:                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34.i

if.then22.i:                                      ; preds = %do.end16.i
  %208 = ptrtoint ptr %dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev.i65.i, align 4
  %_tx.i.i77.i = getelementptr inbounds %struct.net_device, ptr %209, i32 0, i32 103
  %210 = ptrtoint ptr %_tx.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %_tx.i.i77.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %211) #20
  %212 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %msg_enable.i, align 8
  %and26.i = and i32 %213, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.then22.i.if.end34.i_crit_edge, label %if.then28.i

if.then22.i.if.end34.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34.i

if.then28.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #22
  %214 = ptrtoint ptr %dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev.i65.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %215, ptr noundef nonnull @.str.58) #23
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then28.i, %if.then22.i.if.end34.i_crit_edge, %do.end16.i.if.end34.i_crit_edge, %if.end21.if.end34.i_crit_edge
  %start_xmit.i62 = getelementptr %struct.jme_buffer_info, ptr %191, i32 %193, i32 4
  %216 = ptrtoint ptr %start_xmit.i62 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %start_xmit.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool35.not.i = icmp eq i32 %217, 0
  br i1 %tobool35.not.i, label %if.end34.i.cleanup_crit_edge, label %land.lhs.true.i

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %218 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %218, %217
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %sub.i)
  %cmp37.i = icmp ugt i32 %sub.i, 499
  br i1 %cmp37.i, label %land.rhs.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %219 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %add.ptr.i57, align 4
  %tobool38.not.i = icmp eq ptr %220, null
  br i1 %tobool38.not.i, label %land.rhs.i.cleanup_crit_edge, label %if.then45.i, !prof !230

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then45.i:                                      ; preds = %land.rhs.i
  %221 = ptrtoint ptr %dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev.i65.i, align 4
  %_tx.i.i78.i = getelementptr inbounds %struct.net_device, ptr %222, i32 0, i32 103
  %223 = ptrtoint ptr %_tx.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %_tx.i.i78.i, align 128
  %state.i.i79.i = getelementptr inbounds %struct.netdev_queue, ptr %224, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i79.i) #20
  %msg_enable48.i = getelementptr i8, ptr %netdev, i32 3072
  %225 = ptrtoint ptr %msg_enable48.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %msg_enable48.i, align 8
  %and49.i = and i32 %226, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.then45.i.cleanup_crit_edge, label %if.then51.i

if.then45.i.cleanup_crit_edge:                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then51.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #22
  %227 = ptrtoint ptr %dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev.i65.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %229 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %228, ptr noundef nonnull @.str.59, i32 noundef %193, i32 noundef %229) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then51.i, %if.then45.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %for.body.i119.i.i.cleanup_crit_edge, %if.then37.i.i.cleanup_crit_edge, %for.body.i.i.i.cleanup_crit_edge, %if.then.i69.i.cleanup_crit_edge, %if.then14, %if.then12.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 16, %if.then14 ], [ 16, %if.then12.cleanup_crit_edge ], [ 0, %if.end34.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ 0, %if.then45.i.cleanup_crit_edge ], [ 0, %if.then51.i ], [ 0, %if.then37.i.i.cleanup_crit_edge ], [ 0, %if.then.i69.i.cleanup_crit_edge ], [ 0, %for.body.i119.i.i.cleanup_crit_edge ], [ 0, %for.body.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_set_multi(ptr noundef %netdev) #2 align 64 {
entry:
  %mc_hash = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_hash) #20
  %0 = ptrtoint ptr %mc_hash to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %mc_hash, align 8
  %rxmcs_lock = getelementptr i8, ptr %netdev, i32 2820
  tail call void @_raw_spin_lock_bh(ptr noundef %rxmcs_lock) #20
  %reg_rxmcs = getelementptr i8, ptr %netdev, i32 3020
  %1 = ptrtoint ptr %reg_rxmcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg_rxmcs, align 4
  %or = or i32 %2, 1280
  store i32 %or, ptr %reg_rxmcs, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %or2 = or i32 %2, 3328
  %5 = ptrtoint ptr %reg_rxmcs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or2, ptr %reg_rxmcs, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  %and4 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %or8 = or i32 %2, 1408
  %6 = ptrtoint ptr %reg_rxmcs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or8, ptr %reg_rxmcs, align 4
  br label %do.body

if.else9:                                         ; preds = %if.else
  %and11 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else9.do.body_crit_edge, label %if.then13

if.else9.do.body_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

if.then13:                                        ; preds = %if.else9
  %or15 = or i32 %2, 1856
  %7 = ptrtoint ptr %reg_rxmcs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or15, ptr %reg_rxmcs, align 4
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %8 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %8)
  %ha.096 = load ptr, ptr %mc, align 4
  %cmp.not97 = icmp eq ptr %ha.096, %mc
  br i1 %cmp.not97, label %if.then13.for.end_crit_edge, label %if.then13.cond.end_crit_edge

if.then13.cond.end_crit_edge:                     ; preds = %if.then13
  br label %cond.end

if.then13.for.end_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.then13.cond.end_crit_edge
  %ha.098 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.096, %if.then13.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.098, i32 0, i32 2
  %call19 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #26
  %sum.shift.i = lshr i32 %call19, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %9 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %10 to i32
  %and45 = and i32 %conv6.i12.i, 31
  %shl46 = shl nuw i32 1, %and45
  %and44 = lshr i32 %conv6.i12.i, 5
  %11 = and i32 %and44, 1
  %arrayidx = getelementptr [2 x i32], ptr %mc_hash, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %or48 = or i32 %shl46, %13
  store i32 %or48, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %ha.098 to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0 = load ptr, ptr %ha.098, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.then13.for.end_crit_edge
  %15 = ptrtoint ptr %mc_hash to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mc_hash, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #20
  %regs.i = getelementptr i8, ptr %netdev, i32 2312
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %add.ptr.i89 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %17) #20, !srcloc !224
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %21, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %arrayidx55 = getelementptr inbounds [2 x i32], ptr %mc_hash, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx55, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #20
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i91 = getelementptr i8, ptr %27, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %25) #20, !srcloc !224
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i92 = getelementptr i8, ptr %29, i32 68
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i92) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %do.body

do.body:                                          ; preds = %for.end, %if.else9.do.body_crit_edge, %if.then6, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !259
  tail call void @arm_heavy_mb() #20
  %31 = ptrtoint ptr %reg_rxmcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_rxmcs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #20
  %regs.i93 = getelementptr i8, ptr %netdev, i32 2312
  %34 = ptrtoint ptr %regs.i93 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i93, align 8
  %add.ptr.i94 = getelementptr i8, ptr %35, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %33) #20, !srcloc !224
  %36 = ptrtoint ptr %regs.i93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i93, align 8
  %add.ptr2.i95 = getelementptr i8, ptr %37, i32 52
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i95) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void @_raw_spin_unlock_bh(ptr noundef %rxmcs_lock) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_hash) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_set_macaddr(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %macaddr_lock = getelementptr i8, ptr %netdev, i32 2776
  tail call void @_raw_spin_lock_bh(ptr noundef %macaddr_lock) #20
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #20
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx.i = getelementptr i8, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %3, i32 2
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %7 to i32
  %shl5.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl5.i, %shl.i
  %arrayidx7.i = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %9 to i32
  %shl10.i = shl nuw nsw i32 %conv8.i, 8
  %or11.i = or i32 %or.i, %shl10.i
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %conv14.i = zext i8 %11 to i32
  %or16.i = or i32 %or11.i, %conv14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %12 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #20
  %regs.i.i = getelementptr i8, ptr %netdev, i32 2312
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i35.i = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %12) #20, !srcloc !224
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %16, i32 56
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %18 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx18.i = getelementptr i8, ptr %19, i32 5
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %21 to i32
  %shl21.i = shl nuw nsw i32 %conv19.i, 8
  %arrayidx23.i = getelementptr i8, ptr %19, i32 4
  %22 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %23 to i32
  %or26.i = or i32 %shl21.i, %conv24.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %24 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #20
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i37.i = getelementptr i8, ptr %26, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %24) #20, !srcloc !224
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i38.i = getelementptr i8, ptr %28, i32 60
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i38.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void @_raw_spin_unlock_bh(ptr noundef %macaddr_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_ioctl(ptr noundef %netdev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  %duplex_chg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duplex_chg) #20
  %0 = ptrtoint ptr %duplex_chg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %duplex_chg, align 4, !annotation !260
  call void @__sanitizer_cov_trace_const_cmp4(i32 35145, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 35145
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then:                                          ; preds = %entry
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val_in, align 2
  %3 = and i16 %2, -28608
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %.not = icmp eq i16 %3, 64
  br i1 %.not, label %if.then.cleanup19_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then.cleanup19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup19

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %phy_lock = getelementptr i8, ptr %netdev, i32 2732
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock) #20
  %mii_if = getelementptr i8, ptr %netdev, i32 2316
  %call7 = call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef nonnull %duplex_chg) #20
  call void @_raw_spin_unlock_bh(ptr noundef %phy_lock) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  %4 = and i1 %cmp, %tobool9.not
  br i1 %4, label %if.then13, label %if.end6.cleanup19_crit_edge

if.end6.cleanup19_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup19

if.then13:                                        ; preds = %if.end6
  %5 = ptrtoint ptr %duplex_chg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %duplex_chg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %if.then13.if.end16_crit_edge, label %if.then15

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  call void @arm_heavy_mb() #20
  %regs.i.i = getelementptr i8, ptr %netdev, i32 2312
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 2048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 128) #20, !srcloc !224
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %10, i32 2048
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13.if.end16_crit_edge
  %old_cmd = getelementptr i8, ptr %netdev, i32 3076
  call void @_raw_spin_lock_bh(ptr noundef %phy_lock) #20
  call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %old_cmd) #20
  call void @_raw_spin_unlock_bh(ptr noundef %phy_lock) #20
  %flags = getelementptr i8, ptr %netdev, i32 3004
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #20
  br label %cleanup19

cleanup19:                                        ; preds = %if.end16, %if.end6.cleanup19_crit_edge, %if.then.cleanup19_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup19_crit_edge ], [ %call7, %if.end6.cleanup19_crit_edge ], [ 0, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duplex_chg) #20
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  tail call void @netdev_update_features(ptr noundef %netdev) #20
  %reg_rxcs.i = getelementptr i8, ptr %netdev, i32 3016
  %1 = ptrtoint ptr %reg_rxcs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg_rxcs.i, align 8
  %or2.i = or i32 %2, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %3 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #20
  %regs.i.i = getelementptr i8, ptr %netdev, i32 2312
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #20, !srcloc !224
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i5 = getelementptr i8, ptr %10, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5, i32 128) #20, !srcloc !224
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i6 = getelementptr i8, ptr %12, i32 2048
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i6) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %phylink = getelementptr i8, ptr %netdev, i32 3036
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %phylink, align 4
  tail call fastcc void @jme_reset_phy_processor(ptr noundef %add.ptr.i)
  %flags = getelementptr i8, ptr %netdev, i32 3004
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %old_cmd = getelementptr i8, ptr %netdev, i32 3076
  %call2 = tail call i32 @jme_set_link_ksettings(ptr noundef %netdev, ptr noundef %old_cmd)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i.i = getelementptr i8, ptr %netdev, i32 2312
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 128) #20, !srcloc !224
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %7, i32 2048
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_netpoll(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !261
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @trace_hardirqs_off() #20
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %regs.i.i = getelementptr i8, ptr %dev, i32 2312
  %1 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %2, i32 2080
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #20, !srcloc !221
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %and.i47 = and i32 %4, -500101120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %cmp.i = icmp eq i32 %and.i47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp3.i = icmp eq i32 %3, -1
  %or.cond.i = or i1 %cmp3.i, %cmp.i
  br i1 %or.cond.i, label %do.end11.jme_intr.exit_crit_edge, label %if.end11.i, !prof !262

do.end11.jme_intr.exit_crit_edge:                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_intr.exit

if.end11.i:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @jme_intr_msi(ptr noundef %add.ptr.i.i, i32 noundef %4) #20
  br label %jme_intr.exit

jme_intr.exit:                                    ; preds = %if.end11.i, %do.end11.jme_intr.exit_crit_edge
  br i1 %tobool.not, label %if.then22, label %jme_intr.exit.do.body24_crit_edge

jme_intr.exit.do.body24_crit_edge:                ; preds = %jme_intr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body24

if.then22:                                        ; preds = %jme_intr.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @trace_hardirqs_on() #20
  br label %do.body24

do.body24:                                        ; preds = %if.then22, %jme_intr.exit.do.body24_crit_edge
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #20, !srcloc !263
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !231

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @warn_bogus_irq_restore() #20
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #20, !srcloc !264
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @jme_fix_features(ptr nocapture noundef readonly %netdev, i64 noundef %features) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1900, i32 %1)
  %cmp = icmp ugt i32 %1, 1900
  %and = and i64 %features, -1900571
  %spec.select = select i1 %cmp, i64 %and, i64 %features
  ret i64 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_set_features(ptr noundef %netdev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rxmcs_lock = getelementptr i8, ptr %netdev, i32 2820
  tail call void @_raw_spin_lock_bh(ptr noundef %rxmcs_lock) #20
  %reg_rxmcs1 = getelementptr i8, ptr %netdev, i32 3020
  %0 = ptrtoint ptr %reg_rxmcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_rxmcs1, align 4
  %and2 = and i32 %1, -2
  %and = lshr i64 %features, 40
  %2 = trunc i64 %and to i32
  %3 = and i32 %2, 1
  %and2.sink = or i32 %and2, %3
  store i32 %and2.sink, ptr %reg_rxmcs1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %4 = tail call i32 @llvm.bswap.i32(i32 %and2.sink) #20
  %regs.i = getelementptr i8, ptr %netdev, i32 2312
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %4) #20, !srcloc !224
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void @_raw_spin_unlock_bh(ptr noundef %rxmcs_lock) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_tx_clean_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -608
  %desc = getelementptr i8, ptr %t, i32 -432
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %bufinf = getelementptr i8, ptr %t, i32 -420
  %2 = ptrtoint ptr %bufinf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bufinf, align 4
  %tx_cleaning = getelementptr i8, ptr %t, i32 280
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cleaning, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %tx_cleaning, i32 1, i32 3, i32 1) #20
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cleaning, ptr %tx_cleaning, i32 1, ptr elementtype(i32) %tx_cleaning) #20, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.out_crit_edge, !prof !230

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end:                                           ; preds = %entry
  %link_changing = getelementptr i8, ptr %t, i32 276
  %call.i.i140 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_changing, i32 noundef 4) #20
  %5 = ptrtoint ptr %link_changing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %link_changing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end12, label %if.end.out_crit_edge, !prof !230

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end12:                                         ; preds = %if.end
  %dev = getelementptr i8, ptr %t, i32 -604
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end23, label %if.end12.out_crit_edge, !prof !230

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end23:                                         ; preds = %if.end12
  %tx_ring_size = getelementptr i8, ptr %t, i32 128
  %12 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ring_size, align 8
  %nr_free = getelementptr i8, ptr %t, i32 -408
  %call.i.i141 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_free, i32 noundef 4) #20
  %14 = ptrtoint ptr %nr_free to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %nr_free, align 4
  %sub = sub i32 %13, %15
  %tx_ring_mask = getelementptr i8, ptr %t, i32 132
  %16 = ptrtoint ptr %tx_ring_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_ring_mask, align 4
  %next_to_clean = getelementptr i8, ptr %t, i32 -412
  %call.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean, i32 noundef 4) #20
  %18 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %next_to_clean, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp26148 = icmp sgt i32 %sub, 0
  br i1 %cmp26148, label %if.end23.for.body_crit_edge, label %if.end23.do.end92_crit_edge

if.end23.do.end92_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end92

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

for.body:                                         ; preds = %if.end80.for.body_crit_edge, %if.end23.for.body_crit_edge
  %cnt.0150 = phi i32 [ %add62, %if.end80.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %i.0149 = phi i32 [ %and87, %if.end80.for.body_crit_edge ], [ %19, %if.end23.for.body_crit_edge ]
  %add.ptr27 = getelementptr %struct.jme_buffer_info, ptr %3, i32 %i.0149
  %20 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr27, align 4
  %tobool28.not = icmp eq ptr %21, null
  br i1 %tobool28.not, label %for.body.do.end92_crit_edge, label %land.rhs, !prof !231

for.body.do.end92_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end92

land.rhs:                                         ; preds = %for.body
  %arrayidx29 = getelementptr %struct.txdesc, ptr %1, i32 %i.0149
  %flags = getelementptr inbounds %struct.anon.154, ptr %arrayidx29, i32 0, i32 3
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool30.not = icmp sgt i8 %23, -1
  br i1 %tobool30.not, label %do.end42, label %land.rhs.do.end92_crit_edge, !prof !230

land.rhs.do.end92_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end92

do.end42:                                         ; preds = %land.rhs
  %24 = and i8 %23, 56
  %nr_desc = getelementptr %struct.jme_buffer_info, ptr %3, i32 %i.0149, i32 3
  %25 = ptrtoint ptr %nr_desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp48146 = icmp sgt i32 %26, 1
  br i1 %cmp48146, label %do.end42.for.body50_crit_edge, label %do.end42.for.end_crit_edge

do.end42.for.end_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

do.end42.for.body50_crit_edge:                    ; preds = %do.end42
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %do.end42.for.body50_crit_edge
  %j.0147 = phi i32 [ %inc, %for.body50.for.body50_crit_edge ], [ 1, %do.end42.for.body50_crit_edge ]
  %add = add i32 %j.0147, %i.0149
  %and51 = and i32 %add, %17
  %arrayidx55 = getelementptr %struct.txdesc, ptr %1, i32 %and51
  %27 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx55, align 4
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %mapping = getelementptr %struct.jme_buffer_info, ptr %3, i32 %and51, i32 1
  %30 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mapping, align 4
  %len = getelementptr %struct.jme_buffer_info, ptr %3, i32 %and51, i32 2
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev57, i32 noundef %31, i32 noundef %33, i32 noundef 1, i32 noundef 0) #20
  %34 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %mapping, align 4
  %35 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %len, align 4
  %inc = add nuw nsw i32 %j.0147, 1
  %36 = ptrtoint ptr %nr_desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_desc, align 4
  %cmp48 = icmp slt i32 %inc, %37
  br i1 %cmp48, label %for.body50.for.body50_crit_edge, label %for.body50.for.end_crit_edge

for.body50.for.end_crit_edge:                     ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body50

for.end:                                          ; preds = %for.body50.for.end_crit_edge, %do.end42.for.end_crit_edge
  %38 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr27, align 4
  tail call void @consume_skb(ptr noundef %39) #20
  %40 = ptrtoint ptr %nr_desc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_desc, align 4
  %add62 = add i32 %41, %cnt.0150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool63.not = icmp eq i8 %24, 0
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  br i1 %tobool63.not, label %if.else, label %if.then70, !prof !230

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 36, i32 17
  br label %if.end80

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 36, i32 1
  %44 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_packets, align 4
  %inc75 = add i32 %45, 1
  store i32 %inc75, ptr %tx_packets, align 4
  %len76 = getelementptr %struct.jme_buffer_info, ptr %3, i32 %i.0149, i32 2
  %46 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len76, align 4
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 36, i32 3
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then70
  %tx_bytes.sink157 = phi ptr [ %tx_bytes, %if.else ], [ %tx_carrier_errors, %if.then70 ]
  %.sink156 = phi i32 [ %47, %if.else ], [ 1, %if.then70 ]
  %50 = ptrtoint ptr %tx_bytes.sink157 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_bytes.sink157, align 4
  %add79 = add i32 %51, %.sink156
  store i32 %add79, ptr %tx_bytes.sink157, align 4
  %52 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %add.ptr27, align 4
  %len82 = getelementptr %struct.jme_buffer_info, ptr %3, i32 %i.0149, i32 2
  %53 = ptrtoint ptr %len82 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %len82, align 4
  %start_xmit = getelementptr %struct.jme_buffer_info, ptr %3, i32 %i.0149, i32 4
  %54 = ptrtoint ptr %start_xmit to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %start_xmit, align 4
  %55 = ptrtoint ptr %nr_desc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_desc, align 4
  %add86 = add i32 %56, %i.0149
  %and87 = and i32 %add86, %17
  store i32 0, ptr %nr_desc, align 4
  %cmp26 = icmp slt i32 %add62, %sub
  br i1 %cmp26, label %if.end80.for.body_crit_edge, label %if.end80.do.end92_crit_edge

if.end80.do.end92_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end92

if.end80.for.body_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

do.end92:                                         ; preds = %if.end80.do.end92_crit_edge, %land.rhs.do.end92_crit_edge, %for.body.do.end92_crit_edge, %if.end23.do.end92_crit_edge
  %i.0.lcssa = phi i32 [ %19, %if.end23.do.end92_crit_edge ], [ %i.0149, %for.body.do.end92_crit_edge ], [ %and87, %if.end80.do.end92_crit_edge ], [ %i.0149, %land.rhs.do.end92_crit_edge ]
  %cnt.0.lcssa = phi i32 [ 0, %if.end23.do.end92_crit_edge ], [ %cnt.0150, %for.body.do.end92_crit_edge ], [ %add62, %if.end80.do.end92_crit_edge ], [ %cnt.0150, %land.rhs.do.end92_crit_edge ]
  %call.i.i143 = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean, i32 noundef 4) #20
  %57 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 %i.0.lcssa, ptr %next_to_clean, align 4
  %call.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_free, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %nr_free, i32 1, i32 3, i32 1) #20
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_free, ptr %nr_free, i32 %cnt.0.lcssa, ptr elementtype(i32) %nr_free) #20, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !265
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 103
  %61 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.end92.out_crit_edge, label %land.rhs.i

do.end92.out_crit_edge:                           ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

land.rhs.i:                                       ; preds = %do.end92
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_free, i32 noundef 4) #20
  %65 = ptrtoint ptr %nr_free to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %nr_free, align 4
  %tx_wake_threshold.i = getelementptr i8, ptr %t, i32 136
  %67 = ptrtoint ptr %tx_wake_threshold.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_wake_threshold.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp.not.i = icmp ult i32 %66, %68
  br i1 %cmp.not.i, label %land.rhs.i.out_crit_edge, label %do.body7.i, !prof !230

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

do.body7.i:                                       ; preds = %land.rhs.i
  %msg_enable.i = getelementptr i8, ptr %t, i32 160
  %69 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %70, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %do.body7.i.do.end12.i_crit_edge, label %if.then9.i

do.body7.i.do.end12.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end12.i

if.then9.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #22
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %72, ptr noundef nonnull @.str.40) #23
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %do.body7.i.do.end12.i_crit_edge
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %_tx.i.i20.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 103
  %75 = ptrtoint ptr %_tx.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %_tx.i.i20.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %76) #20
  br label %out

out:                                              ; preds = %do.end12.i, %land.rhs.i.out_crit_edge, %do.end92.out_crit_edge, %if.end12.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %call.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cleaning, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %tx_cleaning, i32 1, i32 3, i32 1) #20
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cleaning, ptr %tx_cleaning, i32 1, ptr elementtype(i32) %tx_cleaning) #20, !srcloc !228
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_rx_clean_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -584
  %rx_ring_size = getelementptr i8, ptr %t, i32 164
  %0 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_size, align 4
  %call = tail call fastcc i32 @jme_process_receive(ptr noundef %add.ptr, i32 noundef %1)
  %intr_cnt = getelementptr i8, ptr %t, i32 288
  %2 = ptrtoint ptr %intr_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_cnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %intr_cnt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_rx_empty_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %link_changing = getelementptr i8, ptr %t, i32 324
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_changing, i32 noundef 4) #20
  %0 = ptrtoint ptr %link_changing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %link_changing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !230

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr i8, ptr %t, i32 -556
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.body, label %if.end.cleanup_crit_edge, !prof !230

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %t, i32 208
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body.do.end_crit_edge, label %if.then14

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.44) #23
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body.do.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %t, i32 -560
  %rx_ring_size.i = getelementptr i8, ptr %t, i32 188
  %9 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_ring_size.i, align 4
  %call.i = tail call fastcc i32 @jme_process_receive(ptr noundef %add.ptr.i, i32 noundef %10) #20
  %intr_cnt.i = getelementptr i8, ptr %t, i32 312
  %11 = ptrtoint ptr %intr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intr_cnt.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %intr_cnt.i, align 4
  %rx_empty = getelementptr i8, ptr %t, i32 336
  %call.i.i3134 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_empty, i32 noundef 4) #20
  %13 = ptrtoint ptr %rx_empty to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %rx_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1835 = icmp sgt i32 %14, 0
  br i1 %cmp1835, label %while.body.lr.ph, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %reg_rxcs.i = getelementptr i8, ptr %t, i32 152
  %regs.i.i = getelementptr i8, ptr %t, i32 -552
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_empty, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %rx_empty, i32 1, i32 3, i32 1) #20
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_empty, ptr %rx_empty, i32 1, ptr elementtype(i32) %rx_empty) #20, !srcloc !227
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 6
  %18 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %20 = ptrtoint ptr %reg_rxcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_rxcs.i, align 8
  %or2.i = or i32 %21, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %22 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #20
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #20, !srcloc !224
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %26, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %call.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_empty, i32 noundef 4) #20
  %28 = ptrtoint ptr %rx_empty to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %rx_empty, align 4
  %cmp18 = icmp sgt i32 %29, 0
  br i1 %cmp18, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %call.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_empty, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %rx_empty, i32 1, i32 3, i32 1) #20
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_empty, ptr %rx_empty, i32 1, ptr elementtype(i32) %rx_empty) #20, !srcloc !228
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_start_irq(ptr noundef %jme) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i16.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %1, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 65792) #20, !srcloc !224
  %2 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr2.i18.i = getelementptr i8, ptr %3, i32 2096
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !229
  tail call void @arm_heavy_mb() #20
  %flags.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 14
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.body4.i, label %entry.jme_set_rx_pcc.exit_crit_edge

entry.jme_set_rx_pcc.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_set_rx_pcc.exit

do.body4.i:                                       ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 34
  %8 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body4.i.jme_set_rx_pcc.exit_crit_edge, label %if.then6.i

do.body4.i.jme_set_rx_pcc.exit_crit_edge:         ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_set_rx_pcc.exit

if.then6.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %11, ptr noundef nonnull @.str.50, i32 noundef 1) #23
  br label %jme_set_rx_pcc.exit

jme_set_rx_pcc.exit:                              ; preds = %if.then6.i, %do.body4.i.jme_set_rx_pcc.exit_crit_edge, %entry.jme_set_rx_pcc.exit_crit_edge
  %cur = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 37, i32 3
  %12 = ptrtoint ptr %cur to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %cur, align 4
  %attempt = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 37, i32 4
  %13 = ptrtoint ptr %attempt to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %attempt, align 1
  %cnt = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 37, i32 5
  %14 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %cnt, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %15 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 17360899) #20, !srcloc !224
  %17 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %18, i32 2112
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %20 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %21, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 1061346) #20, !srcloc !224
  %22 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr2.i9 = getelementptr i8, ptr %23, i32 2088
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i9) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_phy_on(ptr nocapture noundef readonly %jme) unnamed_addr #5 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  %dev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mii_if = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 3
  %2 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_if, align 4
  %call = tail call i32 @jme_mdio_read(ptr noundef %1, i32 noundef %3, i32 noundef 0)
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii_if, align 4
  %and = shl i32 %call, 16
  %shl.i = and i32 %and, -134283264
  %shl.i.i = shl i32 %7, 6
  %and.i.i = and i32 %shl.i.i, 1984
  %or.i = or i32 %shl.i, %and.i.i
  %or4.i = or i32 %or.i, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %8 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #20
  %regs.i.i = getelementptr i8, ptr %5, i32 2312
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %8) #20, !srcloc !224
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.027.i = phi i32 [ 5000, %entry ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 4294960) #20
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %16, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %18 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.i = icmp eq i32 %18, 0
  br i1 %cmp7.i, label %for.body.i.jme_mdio_write.exit_crit_edge, label %for.inc.i

for.body.i.jme_mdio_write.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_mdio_write.exit

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.027.i, -1
  %cmp.i = icmp ugt i32 %i.027.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end12.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

do.end12.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %7, i32 noundef 0) #23
  br label %jme_mdio_write.exit

jme_mdio_write.exit:                              ; preds = %do.end12.i, %for.body.i.jme_mdio_write.exit_crit_edge
  %chip_main_rev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 31
  %19 = ptrtoint ptr %chip_main_rev to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_main_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %20)
  %cmp.i11 = icmp ult i8 %20, 5
  br i1 %cmp.i11, label %jme_mdio_write.exit.if.end_crit_edge, label %if.then

jme_mdio_write.exit.if.end_crit_edge:             ; preds = %jme_mdio_write.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %jme_mdio_write.exit
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #20
  %regs.i.i12 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i12, align 8
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 1060
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %24 = and i32 %23, -16
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #20
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %27 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i12, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %28, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %24) #20, !srcloc !224
  %29 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i12, align 8
  %add.ptr2.i.i13 = getelementptr i8, ptr %30, i32 1060
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i13) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %32 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %jme, align 8
  %call1.i = call i32 @pci_read_config_dword(ptr noundef %33, i32 noundef 228, ptr noundef nonnull %reg.i) #20
  %34 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg.i, align 4
  %and2.i = and i32 %35, -49153
  store i32 %and2.i, ptr %reg.i, align 4
  %36 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %jme, align 8
  %call4.i = call i32 @pci_write_config_dword(ptr noundef %37, i32 noundef 228, i32 noundef %and2.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %jme_mdio_write.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %1)
  %cmp = icmp eq i32 %1, 1000
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp2.not = icmp eq i8 %3, 1
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mii_if = getelementptr i8, ptr %netdev, i32 2316
  %force_media = getelementptr i8, ptr %netdev, i32 2332
  %4 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %force_media, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %land.lhs.true4

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20

land.lhs.true4:                                   ; preds = %if.end
  %autoneg6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %autoneg6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp8.not = icmp eq i8 %7, 1
  br i1 %cmp8.not, label %land.lhs.true4.if.end20_crit_edge, label %land.lhs.true10

land.lhs.true4.if.end20_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20

land.lhs.true10:                                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  %bf.lshr13 = lshr i8 %bf.load, 7
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr13, i8 %9)
  %cmp17.not = icmp eq i8 %bf.lshr13, %9
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true10, %land.lhs.true4.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %tobool26.not = phi i1 [ true, %land.lhs.true4.if.end20_crit_edge ], [ true, %if.end.if.end20_crit_edge ], [ %cmp17.not, %land.lhs.true10 ]
  %phy_lock = getelementptr i8, ptr %netdev, i32 2732
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock) #20
  %call22 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.then25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then25:                                        ; preds = %if.end20
  br i1 %tobool26.not, label %if.then25.if.end28_crit_edge, label %if.then27

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i.i = getelementptr i8, ptr %netdev, i32 2312
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 128) #20, !srcloc !224
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %13, i32 2048
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25.if.end28_crit_edge
  %old_cmd = getelementptr i8, ptr %netdev, i32 3076
  %15 = call ptr @memcpy(ptr %old_cmd, ptr %cmd, i32 88)
  %flags = getelementptr i8, ptr %netdev, i32 3004
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end28 ], [ %call22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_reset_phy_processor(ptr nocapture noundef readonly %jme) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %dev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mii_if = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 3
  %2 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_if, align 4
  %shl.i.i = shl i32 %3, 6
  %and.i.i = and i32 %shl.i.i, 1984
  %or4.i = or i32 %and.i.i, 232792112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %4 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #20
  %regs.i.i = getelementptr i8, ptr %1, i32 2312
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %4) #20, !srcloc !224
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.027.i = phi i32 [ 5000, %entry ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #20
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %14 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7.i = icmp eq i32 %14, 0
  br i1 %cmp7.i, label %for.body.i.jme_mdio_write.exit_crit_edge, label %for.inc.i

for.body.i.jme_mdio_write.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_mdio_write.exit

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.027.i, -1
  %cmp.i = icmp ugt i32 %i.027.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end12.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

do.end12.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %3, i32 noundef 4) #23
  br label %jme_mdio_write.exit

jme_mdio_write.exit:                              ; preds = %do.end12.i, %for.body.i.jme_mdio_write.exit_crit_edge
  %15 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %jme, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 592, i16 %18)
  %cmp = icmp eq i16 %18, 592
  br i1 %cmp, label %if.then, label %jme_mdio_write.exit.if.end_crit_edge

jme_mdio_write.exit.if.end_crit_edge:             ; preds = %jme_mdio_write.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %jme_mdio_write.exit
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mii_if, align 4
  %shl.i.i19 = shl i32 %22, 6
  %and.i.i20 = and i32 %shl.i.i19, 1984
  %or4.i23 = or i32 %and.i.i20, 50350128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %23 = tail call i32 @llvm.bswap.i32(i32 %or4.i23) #20
  %regs.i.i24 = getelementptr i8, ptr %20, i32 2312
  %24 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i24, align 8
  %add.ptr.i22.i25 = getelementptr i8, ptr %25, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i25, i32 %23) #20, !srcloc !224
  %26 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i24, align 8
  %add.ptr2.i.i26 = getelementptr i8, ptr %27, i32 80
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i26) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i30

for.body.i30:                                     ; preds = %for.inc.i33.for.body.i30_crit_edge, %if.then
  %i.027.i27 = phi i32 [ 5000, %if.then ], [ %dec.i31, %for.inc.i33.for.body.i30_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 4294960) #20
  %30 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i24, align 8
  %add.ptr.i24.i28 = getelementptr i8, ptr %31, i32 80
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i28) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %33 = and i32 %32, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp7.i29 = icmp eq i32 %33, 0
  br i1 %cmp7.i29, label %for.body.i30.if.end_crit_edge, label %for.inc.i33

for.body.i30.if.end_crit_edge:                    ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

for.inc.i33:                                      ; preds = %for.body.i30
  %dec.i31 = add nsw i32 %i.027.i27, -1
  %cmp.i32 = icmp ugt i32 %i.027.i27, 1
  br i1 %cmp.i32, label %for.inc.i33.for.body.i30_crit_edge, label %do.end12.i35

for.inc.i33.for.body.i30_crit_edge:               ; preds = %for.inc.i33
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i30

do.end12.i35:                                     ; preds = %for.inc.i33
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %22, i32 noundef 9) #23
  br label %if.end

if.end:                                           ; preds = %do.end12.i35, %for.body.i30.if.end_crit_edge, %jme_mdio_write.exit.if.end_crit_edge
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %36 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mii_if, align 4
  %call = tail call i32 @jme_mdio_read(ptr noundef %35, i32 noundef %37, i32 noundef 0)
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mii_if, align 4
  %or = shl i32 %call, 16
  %shl.i.i37 = shl i32 %41, 6
  %and.i.i38 = and i32 %shl.i.i37, 1984
  %shl.i = or i32 %and.i.i38, %or
  %or4.i40 = or i32 %shl.i, -2147483600
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %42 = tail call i32 @llvm.bswap.i32(i32 %or4.i40) #20
  %regs.i.i41 = getelementptr i8, ptr %39, i32 2312
  %43 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i22.i42 = getelementptr i8, ptr %44, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i42, i32 %42) #20, !srcloc !224
  %45 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr2.i.i43 = getelementptr i8, ptr %46, i32 80
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i43) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i47

for.body.i47:                                     ; preds = %for.inc.i50.for.body.i47_crit_edge, %if.end
  %i.027.i44 = phi i32 [ 5000, %if.end ], [ %dec.i48, %for.inc.i50.for.body.i47_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 4294960) #20
  %49 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i24.i45 = getelementptr i8, ptr %50, i32 80
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i45) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %52 = and i32 %51, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp7.i46 = icmp eq i32 %52, 0
  br i1 %cmp7.i46, label %for.body.i47.jme_mdio_write.exit53_crit_edge, label %for.inc.i50

for.body.i47.jme_mdio_write.exit53_crit_edge:     ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_mdio_write.exit53

for.inc.i50:                                      ; preds = %for.body.i47
  %dec.i48 = add nsw i32 %i.027.i44, -1
  %cmp.i49 = icmp ugt i32 %i.027.i44, 1
  br i1 %cmp.i49, label %for.inc.i50.for.body.i47_crit_edge, label %do.end12.i52

for.inc.i50.for.body.i47_crit_edge:               ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i47

do.end12.i52:                                     ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %41, i32 noundef 0) #23
  br label %jme_mdio_write.exit53

jme_mdio_write.exit53:                            ; preds = %do.end12.i52, %for.body.i47.jme_mdio_write.exit53_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_phy_calibration(ptr nocapture noundef readonly %jme) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @jme_phy_off(ptr noundef %jme)
  tail call fastcc void @jme_phy_on(ptr noundef %jme)
  %dev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mii_if = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 3
  %2 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_if, align 4
  %call = tail call i32 @jme_mdio_read(ptr noundef %1, i32 noundef %3, i32 noundef 9)
  %and = and i32 %call, -57345
  %or = or i32 %and, 8192
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii_if, align 4
  tail call void @jme_mdio_write(ptr noundef %5, i32 noundef %7, i32 noundef 9, i32 noundef %or)
  %call4 = tail call fastcc i32 @jme_phy_specreg_read(ptr noundef %jme)
  %and5 = and i32 %call4, -20
  %or6 = or i32 %and5, 17
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_if, align 4
  tail call void @jme_mdio_write(ptr noundef %9, i32 noundef %11, i32 noundef 31, i32 noundef %or6) #20
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mii_if, align 4
  %shl.i.i = shl i32 %15, 6
  %and.i.i = and i32 %shl.i.i, 1984
  %or4.i = or i32 %and.i.i, -2144145360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %16 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #20
  %regs.i.i = getelementptr i8, ptr %13, i32 2312
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %18, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %16) #20, !srcloc !224
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %20, i32 80
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.027.i = phi i32 [ 5000, %entry ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 4294960) #20
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %24, i32 80
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %26 = and i32 %25, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp7.i = icmp eq i32 %26, 0
  br i1 %cmp7.i, label %for.body.i.jme_mdio_write.exit_crit_edge, label %for.inc.i

for.body.i.jme_mdio_write.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_mdio_write.exit

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.027.i, -1
  %cmp.i = icmp ugt i32 %i.027.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end12.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

do.end12.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %15, i32 noundef 30) #23
  br label %jme_mdio_write.exit

jme_mdio_write.exit:                              ; preds = %do.end12.i, %for.body.i.jme_mdio_write.exit_crit_edge
  tail call void @msleep(i32 noundef 20) #20
  %call7 = tail call fastcc i32 @jme_phy_specreg_read(ptr noundef %jme)
  %and8 = and i32 %call7, -20
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mii_if, align 4
  tail call void @jme_mdio_write(ptr noundef %28, i32 noundef %30, i32 noundef 31, i32 noundef %and8) #20
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mii_if, align 4
  %shl.i.i3 = shl i32 %34, 6
  %and.i.i4 = and i32 %shl.i.i3, 1984
  %or4.i7 = or i32 %and.i.i4, -2144145360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %35 = tail call i32 @llvm.bswap.i32(i32 %or4.i7) #20
  %regs.i.i8 = getelementptr i8, ptr %32, i32 2312
  %36 = ptrtoint ptr %regs.i.i8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i8, align 8
  %add.ptr.i22.i9 = getelementptr i8, ptr %37, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i9, i32 %35) #20, !srcloc !224
  %38 = ptrtoint ptr %regs.i.i8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i8, align 8
  %add.ptr2.i.i10 = getelementptr i8, ptr %39, i32 80
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i10) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.inc.i17.for.body.i14_crit_edge, %jme_mdio_write.exit
  %i.027.i11 = phi i32 [ 5000, %jme_mdio_write.exit ], [ %dec.i15, %for.inc.i17.for.body.i14_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 4294960) #20
  %42 = ptrtoint ptr %regs.i.i8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i8, align 8
  %add.ptr.i24.i12 = getelementptr i8, ptr %43, i32 80
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i12) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %45 = and i32 %44, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp7.i13 = icmp eq i32 %45, 0
  br i1 %cmp7.i13, label %for.body.i14.jme_mdio_write.exit20_crit_edge, label %for.inc.i17

for.body.i14.jme_mdio_write.exit20_crit_edge:     ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_mdio_write.exit20

for.inc.i17:                                      ; preds = %for.body.i14
  %dec.i15 = add nsw i32 %i.027.i11, -1
  %cmp.i16 = icmp ugt i32 %i.027.i11, 1
  br i1 %cmp.i16, label %for.inc.i17.for.body.i14_crit_edge, label %do.end12.i19

for.inc.i17.for.body.i14_crit_edge:               ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i14

do.end12.i19:                                     ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %34, i32 noundef 30) #23
  br label %jme_mdio_write.exit20

jme_mdio_write.exit20:                            ; preds = %do.end12.i19, %for.body.i14.jme_mdio_write.exit20_crit_edge
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mii_if, align 4
  %call12 = tail call i32 @jme_mdio_read(ptr noundef %47, i32 noundef %49, i32 noundef 9)
  %and13 = and i32 %call12, -57345
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %52 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mii_if, align 4
  tail call void @jme_mdio_write(ptr noundef %51, i32 noundef %53, i32 noundef 9, i32 noundef %and13)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_phy_setEA(ptr nocapture noundef readonly %jme) unnamed_addr #2 align 64 {
entry:
  %nic_ctrl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nic_ctrl) #20
  %0 = ptrtoint ptr %nic_ctrl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %nic_ctrl, align 1, !annotation !260
  %1 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %jme, align 8
  %call = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef 245, ptr noundef nonnull %nic_ctrl) #20
  %3 = ptrtoint ptr %nic_ctrl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nic_ctrl, align 1
  %5 = and i8 %4, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jme, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %9, label %if.end.cleanup_crit_edge [
    i16 592, label %sw.bb
    i16 608, label %sw.bb42
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %chip_main_rev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 31
  %11 = ptrtoint ptr %chip_main_rev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_main_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %12)
  %cmp5 = icmp eq i8 %12, 5
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false19

land.lhs.true:                                    ; preds = %sw.bb
  %chip_sub_rev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 32
  %13 = ptrtoint ptr %chip_sub_rev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_sub_rev, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %14, label %land.lhs.true.cleanup_crit_edge [
    i8 0, label %land.lhs.true.if.then107_crit_edge
    i8 1, label %land.lhs.true.if.then107_crit_edge78
    i8 3, label %land.lhs.true.if.then107_crit_edge79
  ]

land.lhs.true.if.then107_crit_edge79:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

land.lhs.true.if.then107_crit_edge78:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

land.lhs.true.if.then107_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false19:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %12)
  %cmp22 = icmp ugt i8 %12, 5
  br i1 %cmp22, label %lor.lhs.false19.if.then107_crit_edge, label %if.end25

lor.lhs.false19.if.then107_crit_edge:             ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

if.end25:                                         ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp28 = icmp eq i8 %12, 3
  br i1 %cmp28, label %land.lhs.true30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true30:                                  ; preds = %if.end25
  %chip_sub_rev31 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 32
  %16 = ptrtoint ptr %chip_sub_rev31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chip_sub_rev31, align 2
  %.off = add i8 %17, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true30.if.then107_crit_edge, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true30.if.then107_crit_edge:             ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

sw.bb42:                                          ; preds = %if.end
  %chip_main_rev43 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 31
  %18 = ptrtoint ptr %chip_main_rev43 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_main_rev43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %cmp45 = icmp eq i8 %19, 5
  br i1 %cmp45, label %land.lhs.true47, label %lor.lhs.false62

land.lhs.true47:                                  ; preds = %sw.bb42
  %chip_sub_rev48 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 32
  %20 = ptrtoint ptr %chip_sub_rev48 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chip_sub_rev48, align 2
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %21, label %land.lhs.true47.cleanup_crit_edge [
    i8 0, label %land.lhs.true47.if.then107_crit_edge
    i8 1, label %land.lhs.true47.if.then107_crit_edge80
    i8 3, label %land.lhs.true47.if.then107_crit_edge81
  ]

land.lhs.true47.if.then107_crit_edge81:           ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

land.lhs.true47.if.then107_crit_edge80:           ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

land.lhs.true47.if.then107_crit_edge:             ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false62:                                  ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %cmp65 = icmp ugt i8 %19, 5
  br i1 %cmp65, label %lor.lhs.false62.if.then107_crit_edge, label %if.end68

lor.lhs.false62.if.then107_crit_edge:             ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

if.end68:                                         ; preds = %lor.lhs.false62
  %23 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %19, label %if.end68.cleanup_crit_edge [
    i8 3, label %land.lhs.true73
    i8 2, label %land.lhs.true100
  ]

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true73:                                  ; preds = %if.end68
  %chip_sub_rev74 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 32
  %24 = ptrtoint ptr %chip_sub_rev74 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chip_sub_rev74, align 2
  %.off3 = add i8 %25, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off3)
  %switch4 = icmp ult i8 %.off3, 2
  br i1 %switch4, label %land.lhs.true73.if.then107_crit_edge, label %land.lhs.true73.cleanup_crit_edge

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true73.if.then107_crit_edge:             ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

land.lhs.true100:                                 ; preds = %if.end68
  %chip_sub_rev101 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 32
  %26 = ptrtoint ptr %chip_sub_rev101 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %chip_sub_rev101, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp103 = icmp eq i8 %27, 2
  br i1 %cmp103, label %land.lhs.true100.if.then107_crit_edge, label %sw.epilog

land.lhs.true100.if.then107_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

sw.epilog:                                        ; preds = %land.lhs.true100
  %28 = ptrtoint ptr %chip_sub_rev101 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chip_sub_rev101, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp92 = icmp eq i8 %29, 0
  br i1 %cmp92, label %sw.epilog.if.then107_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.epilog.if.then107_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then107

if.then107:                                       ; preds = %sw.epilog.if.then107_crit_edge, %land.lhs.true100.if.then107_crit_edge, %land.lhs.true73.if.then107_crit_edge, %lor.lhs.false62.if.then107_crit_edge, %land.lhs.true47.if.then107_crit_edge, %land.lhs.true47.if.then107_crit_edge80, %land.lhs.true47.if.then107_crit_edge81, %land.lhs.true30.if.then107_crit_edge, %lor.lhs.false19.if.then107_crit_edge, %land.lhs.true.if.then107_crit_edge, %land.lhs.true.if.then107_crit_edge78, %land.lhs.true.if.then107_crit_edge79
  %tobool109.not = phi i1 [ false, %lor.lhs.false62.if.then107_crit_edge ], [ false, %land.lhs.true47.if.then107_crit_edge ], [ false, %land.lhs.true47.if.then107_crit_edge80 ], [ false, %land.lhs.true47.if.then107_crit_edge81 ], [ false, %lor.lhs.false19.if.then107_crit_edge ], [ false, %land.lhs.true.if.then107_crit_edge ], [ false, %land.lhs.true.if.then107_crit_edge78 ], [ false, %land.lhs.true.if.then107_crit_edge79 ], [ true, %land.lhs.true73.if.then107_crit_edge ], [ true, %land.lhs.true30.if.then107_crit_edge ], [ true, %land.lhs.true100.if.then107_crit_edge ], [ true, %sw.epilog.if.then107_crit_edge ]
  %phy_comm1.262 = phi i32 [ 16649, %lor.lhs.false62.if.then107_crit_edge ], [ 16649, %land.lhs.true47.if.then107_crit_edge ], [ 16649, %land.lhs.true47.if.then107_crit_edge80 ], [ 16649, %land.lhs.true47.if.then107_crit_edge81 ], [ 16649, %lor.lhs.false19.if.then107_crit_edge ], [ 16649, %land.lhs.true.if.then107_crit_edge ], [ 16649, %land.lhs.true.if.then107_crit_edge78 ], [ 16649, %land.lhs.true.if.then107_crit_edge79 ], [ 0, %land.lhs.true73.if.then107_crit_edge ], [ 0, %land.lhs.true30.if.then107_crit_edge ], [ 0, %land.lhs.true100.if.then107_crit_edge ], [ 0, %sw.epilog.if.then107_crit_edge ]
  %phy_comm0.461 = phi i32 [ 138, %lor.lhs.false62.if.then107_crit_edge ], [ 138, %land.lhs.true47.if.then107_crit_edge ], [ 138, %land.lhs.true47.if.then107_crit_edge80 ], [ 138, %land.lhs.true47.if.then107_crit_edge81 ], [ 138, %lor.lhs.false19.if.then107_crit_edge ], [ 138, %land.lhs.true.if.then107_crit_edge ], [ 138, %land.lhs.true.if.then107_crit_edge78 ], [ 138, %land.lhs.true.if.then107_crit_edge79 ], [ 57480, %land.lhs.true73.if.then107_crit_edge ], [ 57480, %land.lhs.true30.if.then107_crit_edge ], [ 16522, %land.lhs.true100.if.then107_crit_edge ], [ 24714, %sw.epilog.if.then107_crit_edge ]
  %dev.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %mii_if.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 3
  %32 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mii_if.i, align 4
  call void @jme_mdio_write(ptr noundef %31, i32 noundef %33, i32 noundef 31, i32 noundef %phy_comm0.461) #20
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %36 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mii_if.i, align 4
  %shl.i.i = shl i32 %37, 6
  %and.i.i = and i32 %shl.i.i, 1984
  %or4.i = or i32 %and.i.i, -2144276432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  call void @arm_heavy_mb() #20
  %38 = call i32 @llvm.bswap.i32(i32 %or4.i) #20
  %regs.i.i = getelementptr i8, ptr %35, i32 2312
  %39 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %40, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %38) #20, !srcloc !224
  %41 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %42, i32 80
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  call void @arm_heavy_mb() #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then107
  %i.027.i = phi i32 [ 5000, %if.then107 ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 4294960) #20
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %46, i32 80
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #20, !srcloc !221
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %48 = and i32 %47, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp7.i = icmp eq i32 %48, 0
  br i1 %cmp7.i, label %for.body.i.if.end108_crit_edge, label %for.inc.i

for.body.i.if.end108_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end108

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.027.i, -1
  %cmp.i = icmp ugt i32 %i.027.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end12.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

do.end12.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %37, i32 noundef 30) #23
  br label %if.end108

if.end108:                                        ; preds = %do.end12.i, %for.body.i.if.end108_crit_edge
  br i1 %tobool109.not, label %if.end108.cleanup_crit_edge, label %if.then110

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then110:                                       ; preds = %if.end108
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %51 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mii_if.i, align 4
  call void @jme_mdio_write(ptr noundef %50, i32 noundef %52, i32 noundef 31, i32 noundef %phy_comm1.262) #20
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %55 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mii_if.i, align 4
  %shl.i.i8 = shl i32 %56, 6
  %and.i.i9 = and i32 %shl.i.i8, 1984
  %or4.i12 = or i32 %and.i.i9, -2144210896
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  call void @arm_heavy_mb() #20
  %57 = call i32 @llvm.bswap.i32(i32 %or4.i12) #20
  %regs.i.i13 = getelementptr i8, ptr %54, i32 2312
  %58 = ptrtoint ptr %regs.i.i13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i13, align 8
  %add.ptr.i22.i14 = getelementptr i8, ptr %59, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i14, i32 %57) #20, !srcloc !224
  %60 = ptrtoint ptr %regs.i.i13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i13, align 8
  %add.ptr2.i.i15 = getelementptr i8, ptr %61, i32 80
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i15) #20, !srcloc !221
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  call void @arm_heavy_mb() #20
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.inc.i22.for.body.i19_crit_edge, %if.then110
  %i.027.i16 = phi i32 [ 5000, %if.then110 ], [ %dec.i20, %for.inc.i22.for.body.i19_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %63(i32 noundef 4294960) #20
  %64 = ptrtoint ptr %regs.i.i13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i.i13, align 8
  %add.ptr.i24.i17 = getelementptr i8, ptr %65, i32 80
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i17) #20, !srcloc !221
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %67 = and i32 %66, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp7.i18 = icmp eq i32 %67, 0
  br i1 %cmp7.i18, label %for.body.i19.cleanup_crit_edge, label %for.inc.i22

for.body.i19.cleanup_crit_edge:                   ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.inc.i22:                                      ; preds = %for.body.i19
  %dec.i20 = add nsw i32 %i.027.i16, -1
  %cmp.i21 = icmp ugt i32 %i.027.i16, 1
  br i1 %cmp.i21, label %for.inc.i22.for.body.i19_crit_edge, label %do.end12.i24

for.inc.i22.for.body.i19_crit_edge:               ; preds = %for.inc.i22
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i19

do.end12.i24:                                     ; preds = %for.inc.i22
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %56, i32 noundef 30) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end12.i24, %for.body.i19.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %land.lhs.true73.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %land.lhs.true47.cleanup_crit_edge, %land.lhs.true30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nic_ctrl) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jme_process_receive(ptr noundef %jme, i32 noundef %limit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_mask = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 27
  %0 = ptrtoint ptr %rx_ring_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_mask, align 8
  %rx_cleaning = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cleaning, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %rx_cleaning, i32 1, i32 3, i32 1) #20
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_cleaning, ptr %rx_cleaning, i32 1, ptr elementtype(i32) %rx_cleaning) #20, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.out_inc_crit_edge, !prof !230

entry.out_inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_inc

if.end:                                           ; preds = %entry
  %link_changing = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 39
  %call.i.i116 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_changing, i32 noundef 4) #20
  %3 = ptrtoint ptr %link_changing to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %link_changing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end12, label %if.end.out_inc_crit_edge, !prof !230

if.end.out_inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_inc

if.end12:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end23, label %if.end12.out_inc_crit_edge, !prof !230

if.end12.out_inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_inc

if.end23:                                         ; preds = %if.end12
  %next_to_clean = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 4, i32 0, i32 6
  %call.i.i117 = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean, i32 noundef 4) #20
  %10 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %next_to_clean, align 4
  %desc = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 4, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit)
  %cmp25135 = icmp sgt i32 %limit, 0
  br i1 %cmp25135, label %while.body.lr.ph, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

while.body.lr.ph:                                 ; preds = %if.end23
  %bufinf.i122 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 4, i32 0, i32 4
  %msg_enable35.i.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 34
  %jme_rx.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 43
  br label %while.body

while.body:                                       ; preds = %if.end77.while.body_crit_edge, %while.body.lr.ph
  %i.0137 = phi i32 [ %11, %while.body.lr.ph ], [ %and79, %if.end77.while.body_crit_edge ]
  %limit.addr.0136 = phi i32 [ %limit, %while.body.lr.ph ], [ %limit.addr.2, %if.end77.while.body_crit_edge ]
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %add.ptr = getelementptr %struct.rxdesc, ptr %13, i32 %i.0137
  %flags = getelementptr inbounds %struct.anon.157, ptr %add.ptr, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 2
  %16 = and i16 %15, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool26.not = icmp eq i16 %16, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

lor.lhs.false:                                    ; preds = %while.body
  %desccnt27 = getelementptr inbounds %struct.anon.157, ptr %add.ptr, i32 0, i32 4
  %17 = ptrtoint ptr %desccnt27 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %desccnt27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool30.not = icmp sgt i8 %18, -1
  br i1 %tobool30.not, label %lor.lhs.false.out_crit_edge, label %if.end32

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end32:                                         ; preds = %lor.lhs.false
  %dec = add nsw i32 %limit.addr.0136, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !266
  %19 = ptrtoint ptr %desccnt27 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %desccnt27, align 1
  %21 = and i8 %20, 127
  %and35 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp36 = icmp ugt i8 %21, 1
  br i1 %cmp36, label %if.end32.if.then47_crit_edge, label %lor.rhs, !prof !231

if.end32.if.then47_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then47

lor.rhs:                                          ; preds = %if.end32
  %errstat = getelementptr inbounds %struct.anon.157, ptr %add.ptr, i32 0, i32 3
  %22 = ptrtoint ptr %errstat to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %errstat, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool40.not = icmp eq i8 %23, 0
  br i1 %tobool40.not, label %if.else76, label %lor.rhs.if.then47_crit_edge, !prof !230

lor.rhs.if.then47_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then47

if.then47:                                        ; preds = %lor.rhs.if.then47_crit_edge, %if.end32.if.then47_crit_edge
  %errstat48 = getelementptr inbounds %struct.anon.157, ptr %add.ptr, i32 0, i32 3
  %24 = ptrtoint ptr %errstat48 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %errstat48, align 2
  %conv49 = zext i8 %25 to i32
  %and50 = and i32 %conv49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 12
  br label %if.end67

if.else:                                          ; preds = %if.then47
  %and56 = and i32 %conv49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  br i1 %tobool57.not, label %if.else62, label %if.then58

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 14
  br label %if.end67

if.else62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 4
  br label %if.end67

if.end67:                                         ; preds = %if.else62, %if.then58, %if.then52
  %rx_fifo_errors.sink145 = phi ptr [ %rx_fifo_errors, %if.then58 ], [ %rx_errors, %if.else62 ], [ %rx_crc_errors, %if.then52 ]
  %30 = ptrtoint ptr %rx_fifo_errors.sink145 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_fifo_errors.sink145, align 8
  %inc61 = add i32 %31, 1
  store i32 %inc61, ptr %rx_fifo_errors.sink145, align 8
  %sub = add nsw i32 %and35, -1
  %sub71 = select i1 %cmp36, i32 %sub, i32 0
  %limit.addr.1 = sub nsw i32 %dec, %sub71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool74.not132 = icmp eq i8 %21, 0
  br i1 %tobool74.not132, label %if.end67.if.end77_crit_edge, label %if.end67.for.body_crit_edge

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  br label %for.body

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end77

for.body:                                         ; preds = %jme_set_clean_rxdesc.exit.for.body_crit_edge, %if.end67.for.body_crit_edge
  %ccnt.0134 = phi i32 [ %dec73, %jme_set_clean_rxdesc.exit.for.body_crit_edge ], [ %and35, %if.end67.for.body_crit_edge ]
  %j.0133 = phi i32 [ %and75, %jme_set_clean_rxdesc.exit.for.body_crit_edge ], [ %i.0137, %if.end67.for.body_crit_edge ]
  %dec73 = add nsw i32 %ccnt.0134, -1
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc, align 4
  %34 = ptrtoint ptr %bufinf.i122 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bufinf.i122, align 4
  %add.ptr.i = getelementptr %struct.rxdesc, ptr %33, i32 %j.0133
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %add.ptr.i, align 4
  %arrayidx4.i = getelementptr [4 x i32], ptr %add.ptr.i, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx4.i, align 4
  %mapping.i = getelementptr %struct.jme_buffer_info, ptr %35, i32 %j.0133, i32 1
  %bufaddrh.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i, i32 0, i32 5
  %38 = ptrtoint ptr %bufaddrh.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bufaddrh.i, align 4
  %39 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mapping.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #20
  %bufaddrl.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i, i32 0, i32 6
  %42 = ptrtoint ptr %bufaddrl.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %bufaddrl.i, align 4
  %len.i = getelementptr %struct.jme_buffer_info, ptr %35, i32 %j.0133, i32 2
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %conv9.i = trunc i32 %44 to i16
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #20
  %46 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx4.i, align 4
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 23
  %49 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %features.i, align 16
  %and10.i = and i64 %50, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool.not.i120 = icmp eq i64 %and10.i, 0
  br i1 %tobool.not.i120, label %for.body.jme_set_clean_rxdesc.exit_crit_edge, label %if.then.i

for.body.jme_set_clean_rxdesc.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_set_clean_rxdesc.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %flags.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i, i32 0, i32 2
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 32, ptr %flags.i, align 1
  br label %jme_set_clean_rxdesc.exit

jme_set_clean_rxdesc.exit:                        ; preds = %if.then.i, %for.body.jme_set_clean_rxdesc.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !241
  tail call void @arm_heavy_mb() #20
  %flags11.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i, i32 0, i32 2
  %52 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %flags11.i, align 1
  %54 = or i8 %53, -64
  store i8 %54, ptr %flags11.i, align 1
  %add = add i32 %j.0133, 1
  %and75 = and i32 %add, %1
  %tobool74.not = icmp eq i32 %dec73, 0
  br i1 %tobool74.not, label %jme_set_clean_rxdesc.exit.if.end77_crit_edge, label %jme_set_clean_rxdesc.exit.for.body_crit_edge

jme_set_clean_rxdesc.exit.for.body_crit_edge:     ; preds = %jme_set_clean_rxdesc.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

jme_set_clean_rxdesc.exit.if.end77_crit_edge:     ; preds = %jme_set_clean_rxdesc.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end77

if.else76:                                        ; preds = %lor.rhs
  %55 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %desc, align 4
  %57 = ptrtoint ptr %bufinf.i122 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bufinf.i122, align 4
  %add.ptr.i123 = getelementptr %struct.rxdesc, ptr %56, i32 %i.0137
  %add.ptr2.i = getelementptr %struct.jme_buffer_info, ptr %58, i32 %i.0137
  %59 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr2.i, align 4
  %61 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %jme, align 8
  %dev.i124 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %mapping.i125 = getelementptr %struct.jme_buffer_info, ptr %58, i32 %i.0137, i32 1
  %63 = ptrtoint ptr %mapping.i125 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mapping.i125, align 4
  %len.i126 = getelementptr %struct.jme_buffer_info, ptr %58, i32 %i.0137, i32 2
  %65 = ptrtoint ptr %len.i126 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i126, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i124, i32 noundef %64, i32 noundef %66, i32 noundef 2) #20
  %call.i = tail call fastcc i32 @jme_make_new_rx_buf(ptr noundef %jme, i32 noundef %i.0137) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i127 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i127, label %if.else.i, label %if.then.i128, !prof !230

if.then.i128:                                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #22
  %67 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %jme, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %69 = ptrtoint ptr %mapping.i125 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mapping.i125, align 4
  %71 = ptrtoint ptr %len.i126 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i126, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev7.i, i32 noundef %70, i32 noundef %72, i32 noundef 2) #20
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 36, i32 6
  br label %if.end43.i

if.else.i:                                        ; preds = %if.else76
  %framesize11.i = getelementptr inbounds %struct.anon.157, ptr %add.ptr.i123, i32 0, i32 2
  %75 = ptrtoint ptr %framesize11.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %framesize11.i, align 4
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #20
  %conv.i = zext i16 %77 to i32
  %sub.i = add nsw i32 %conv.i, -10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 19
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 10
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 16
  %80 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %81, i32 10
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call12.i = tail call ptr @skb_put(ptr noundef %60, i32 noundef %sub.i) #20
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %call14.i = tail call zeroext i16 @eth_type_trans(ptr noundef %60, ptr noundef %83) #20
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 15, i32 0, i32 18
  %84 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %call14.i, ptr %protocol.i, align 8
  %flags.i129 = getelementptr inbounds %struct.anon.157, ptr %add.ptr.i123, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %flags.i129, align 2
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #20
  %conv.i.i = zext i16 %87 to i32
  %and.i.i = and i32 %conv.i.i, 6208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.if.end.i_crit_edge, label %if.end.i.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.else.i
  %and2.i.i = and i32 %conv.i.i, 12800
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and2.i.i)
  %cmp.i.i130 = icmp eq i32 %and2.i.i, 4096
  br i1 %cmp.i.i130, label %if.then6.i.i, label %if.end16.i.i, !prof !231

if.then6.i.i:                                     ; preds = %if.end.i.i
  %and8.i.i = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then6.i.i.if.endthread-pre-split.i_crit_edge, label %do.body.i.i

if.then6.i.i.if.endthread-pre-split.i_crit_edge:  ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.endthread-pre-split.i

do.body.i.i:                                      ; preds = %if.then6.i.i
  %88 = ptrtoint ptr %msg_enable35.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_enable35.i.i, align 8
  %and11.i.i = and i32 %89, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body.i.i.if.endthread-pre-split.i_crit_edge, label %do.body.i.i.return.sink.split.i.i_crit_edge

do.body.i.i.return.sink.split.i.i_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return.sink.split.i.i

do.body.i.i.if.endthread-pre-split.i_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.endthread-pre-split.i

if.end16.i.i:                                     ; preds = %if.end.i.i
  %and18.i.i = and i32 %conv.i.i, 10496
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and18.i.i)
  %cmp19.i.i = icmp eq i32 %and18.i.i, 2048
  br i1 %cmp19.i.i, label %land.lhs.true.i.i, label %if.end16.i.i.if.end43.i.i_crit_edge, !prof !231

if.end16.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i.i

land.lhs.true.i.i:                                ; preds = %if.end16.i.i
  %call.i.i131 = tail call fastcc zeroext i16 @jme_udpsum(ptr noundef %60) #20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i131)
  %tobool28.not.i.i = icmp eq i16 %call.i.i131, 0
  br i1 %tobool28.not.i.i, label %land.lhs.true.i.i.if.end43.i.i_crit_edge, label %if.then29.i.i

land.lhs.true.i.i.if.end43.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i.i

if.then29.i.i:                                    ; preds = %land.lhs.true.i.i
  %and31.i.i = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then29.i.i.if.endthread-pre-split.i_crit_edge, label %do.body34.i.i

if.then29.i.i.if.endthread-pre-split.i_crit_edge: ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.endthread-pre-split.i

do.body34.i.i:                                    ; preds = %if.then29.i.i
  %90 = ptrtoint ptr %msg_enable35.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_enable35.i.i, align 8
  %and36.i.i = and i32 %91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %do.body34.i.i.if.endthread-pre-split.i_crit_edge, label %do.body34.i.i.return.sink.split.i.i_crit_edge

do.body34.i.i.return.sink.split.i.i_crit_edge:    ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return.sink.split.i.i

do.body34.i.i.if.endthread-pre-split.i_crit_edge: ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.endthread-pre-split.i

if.end43.i.i:                                     ; preds = %land.lhs.true.i.i.if.end43.i.i_crit_edge, %if.end16.i.i.if.end43.i.i_crit_edge
  %and45.i.i = and i32 %conv.i.i, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and45.i.i)
  %cmp46.i.i = icmp eq i32 %and45.i.i, 64
  br i1 %cmp46.i.i, label %do.body55.i.i, label %if.then17.i, !prof !231

do.body55.i.i:                                    ; preds = %if.end43.i.i
  %92 = ptrtoint ptr %msg_enable35.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %msg_enable35.i.i, align 8
  %and57.i.i = and i32 %93, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i)
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  br i1 %tobool58.not.i.i, label %do.body55.i.i.if.endthread-pre-split.i_crit_edge, label %do.body55.i.i.return.sink.split.i.i_crit_edge

do.body55.i.i.return.sink.split.i.i_crit_edge:    ; preds = %do.body55.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return.sink.split.i.i

do.body55.i.i.if.endthread-pre-split.i_crit_edge: ; preds = %do.body55.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.endthread-pre-split.i

return.sink.split.i.i:                            ; preds = %do.body55.i.i.return.sink.split.i.i_crit_edge, %do.body34.i.i.return.sink.split.i.i_crit_edge, %do.body.i.i.return.sink.split.i.i_crit_edge
  %.str.43.sink.i.i = phi ptr [ @.str.41, %do.body.i.i.return.sink.split.i.i_crit_edge ], [ @.str.42, %do.body34.i.i.return.sink.split.i.i_crit_edge ], [ @.str.43, %do.body55.i.i.return.sink.split.i.i_crit_edge ]
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %95, ptr noundef nonnull %.str.43.sink.i.i) #23
  br label %if.endthread-pre-split.i

if.then17.i:                                      ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 15
  %96 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.endthread-pre-split.i

if.endthread-pre-split.i:                         ; preds = %if.then17.i, %return.sink.split.i.i, %do.body55.i.i.if.endthread-pre-split.i_crit_edge, %do.body34.i.i.if.endthread-pre-split.i_crit_edge, %if.then29.i.i.if.endthread-pre-split.i_crit_edge, %do.body.i.i.if.endthread-pre-split.i_crit_edge, %if.then6.i.i.if.endthread-pre-split.i_crit_edge
  %97 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_load2_noabort(i32 %97)
  %.pr.i = load i16, ptr %flags.i129, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.endthread-pre-split.i, %if.else.i.if.end.i_crit_edge
  %98 = phi i16 [ %.pr.i, %if.endthread-pre-split.i ], [ %86, %if.else.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %98)
  %tobool21.not.i = icmp sgt i16 %98, -1
  br i1 %tobool21.not.i, label %if.end.i.if.end25.i_crit_edge, label %if.then22.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %99 = ptrtoint ptr %add.ptr.i123 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %add.ptr.i123, align 4
  %101 = tail call i16 @llvm.bswap.i16(i16 %100) #20
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 15, i32 0, i32 9
  %102 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 15, i32 0, i32 10
  %103 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %101, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 15, i32 0, i32 3
  %104 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 36, i32 2
  %107 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %108, 4
  store i32 %add.i, ptr %rx_bytes.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end.i.if.end25.i_crit_edge
  %109 = ptrtoint ptr %jme_rx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %jme_rx.i, align 4
  %call26.i = tail call i32 %110(ptr noundef %60) #20
  %111 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %flags.i129, align 2
  %113 = and i16 %112, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %113)
  %cmp.i = icmp eq i16 %113, 512
  br i1 %cmp.i, label %if.then31.i, label %if.end25.i.if.end35.i_crit_edge

if.end25.i.if.end35.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #22
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 36, i32 8
  %116 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %multicast.i, align 8
  %inc34.i = add i32 %117, 1
  store i32 %inc34.i, ptr %multicast.i, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %if.end25.i.if.end35.i_crit_edge
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 4
  %rx_bytes38.i = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 36, i32 2
  %120 = ptrtoint ptr %rx_bytes38.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rx_bytes38.i, align 8
  %add39.i = add i32 %121, %sub.i
  store i32 %add39.i, ptr %rx_bytes38.i, align 8
  %122 = load ptr, ptr %dev, align 4
  %stats41.i = getelementptr inbounds %struct.net_device, ptr %122, i32 0, i32 36
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end35.i, %if.then.i128
  %stats41.sink84.i = phi ptr [ %stats41.i, %if.end35.i ], [ %rx_dropped.i, %if.then.i128 ]
  %123 = ptrtoint ptr %stats41.sink84.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %stats41.sink84.i, align 8
  %inc42.i = add i32 %124, 1
  store i32 %inc42.i, ptr %stats41.sink84.i, align 8
  %125 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %desc, align 4
  %127 = ptrtoint ptr %bufinf.i122 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bufinf.i122, align 4
  %add.ptr.i79.i = getelementptr %struct.rxdesc, ptr %126, i32 %i.0137
  %129 = ptrtoint ptr %add.ptr.i79.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %add.ptr.i79.i, align 4
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %add.ptr.i79.i, i32 0, i32 1
  %130 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %arrayidx4.i.i, align 4
  %mapping.i.i = getelementptr %struct.jme_buffer_info, ptr %128, i32 %i.0137, i32 1
  %bufaddrh.i.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i79.i, i32 0, i32 5
  %131 = ptrtoint ptr %bufaddrh.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %bufaddrh.i.i, align 4
  %132 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mapping.i.i, align 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #20
  %bufaddrl.i.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i79.i, i32 0, i32 6
  %135 = ptrtoint ptr %bufaddrl.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %bufaddrl.i.i, align 4
  %len.i.i = getelementptr %struct.jme_buffer_info, ptr %128, i32 %i.0137, i32 2
  %136 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %len.i.i, align 4
  %conv9.i.i = trunc i32 %137 to i16
  %138 = tail call i16 @llvm.bswap.i16(i16 %conv9.i.i) #20
  %139 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %arrayidx4.i.i, align 4
  %140 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 23
  %142 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %features.i.i, align 16
  %and10.i.i = and i64 %143, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i.i)
  %tobool.not.i80.i = icmp eq i64 %and10.i.i, 0
  br i1 %tobool.not.i80.i, label %if.end43.i.jme_alloc_and_feed_skb.exit_crit_edge, label %if.then.i.i

if.end43.i.jme_alloc_and_feed_skb.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_alloc_and_feed_skb.exit

if.then.i.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  %flags.i.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i79.i, i32 0, i32 2
  %144 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 32, ptr %flags.i.i, align 1
  br label %jme_alloc_and_feed_skb.exit

jme_alloc_and_feed_skb.exit:                      ; preds = %if.then.i.i, %if.end43.i.jme_alloc_and_feed_skb.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !241
  tail call void @arm_heavy_mb() #20
  %flags11.i.i = getelementptr inbounds %struct.anon.156, ptr %add.ptr.i79.i, i32 0, i32 2
  %145 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %flags11.i.i, align 1
  %147 = or i8 %146, -64
  store i8 %147, ptr %flags11.i.i, align 1
  br label %if.end77

if.end77:                                         ; preds = %jme_alloc_and_feed_skb.exit, %jme_set_clean_rxdesc.exit.if.end77_crit_edge, %if.end67.if.end77_crit_edge
  %limit.addr.2 = phi i32 [ %dec, %jme_alloc_and_feed_skb.exit ], [ %limit.addr.1, %if.end67.if.end77_crit_edge ], [ %limit.addr.1, %jme_set_clean_rxdesc.exit.if.end77_crit_edge ]
  %add78 = add i32 %i.0137, %and35
  %and79 = and i32 %add78, %1
  %cmp25 = icmp sgt i32 %limit.addr.2, 0
  br i1 %cmp25, label %if.end77.while.body_crit_edge, label %if.end77.out_crit_edge

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end77.while.body_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

out:                                              ; preds = %if.end77.out_crit_edge, %lor.lhs.false.out_crit_edge, %while.body.out_crit_edge, %if.end23.out_crit_edge
  %limit.addr.0.lcssa = phi i32 [ %limit, %if.end23.out_crit_edge ], [ %limit.addr.2, %if.end77.out_crit_edge ], [ %limit.addr.0136, %while.body.out_crit_edge ], [ %limit.addr.0136, %lor.lhs.false.out_crit_edge ]
  %i.0.lcssa = phi i32 [ %11, %if.end23.out_crit_edge ], [ %and79, %if.end77.out_crit_edge ], [ %i.0137, %while.body.out_crit_edge ], [ %i.0137, %lor.lhs.false.out_crit_edge ]
  %call.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean, i32 noundef 4) #20
  %148 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile i32 %i.0.lcssa, ptr %next_to_clean, align 4
  br label %out_inc

out_inc:                                          ; preds = %out, %if.end12.out_inc_crit_edge, %if.end.out_inc_crit_edge, %entry.out_inc_crit_edge
  %limit.addr.3 = phi i32 [ %limit, %entry.out_inc_crit_edge ], [ %limit, %if.end.out_inc_crit_edge ], [ %limit, %if.end12.out_inc_crit_edge ], [ %limit.addr.0.lcssa, %out ]
  %call.i.i119 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cleaning, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %rx_cleaning, i32 1, i32 3, i32 1) #20
  %149 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_cleaning, ptr %rx_cleaning, i32 1, ptr elementtype(i32) %rx_cleaning) #20, !srcloc !228
  %150 = tail call i32 @llvm.smax.i32(i32 %limit.addr.3, i32 0)
  ret i32 %150
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jme_make_new_rx_buf(ptr nocapture noundef readonly %jme, i32 noundef %i) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %bufinf = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 4, i32 0, i32 4
  %0 = ptrtoint ptr %bufinf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bufinf, align 4
  %add.ptr = getelementptr %struct.jme_buffer_info, ptr %1, i32 %i
  %dev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %add = add i32 %5, 36
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef %add, i32 noundef 2592) #20
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !231

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jme, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  %sub = add i32 %11, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr9 = getelementptr %struct.page, ptr %8, i32 %shr
  %and = and i32 %11, 4095
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end.skb_tailroom.exit_crit_edge

if.end.skb_tailroom.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end.skb_tailroom.exit_crit_edge ]
  %call12 = tail call i32 @dma_map_page_attrs(ptr noundef %dev6, ptr noundef %add.ptr9, i32 noundef %and, i32 noundef %cond.i, i32 noundef 2, i32 noundef 0) #20
  %18 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %jme, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev14, i32 noundef %call12) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12)
  %cmp.i.not = icmp eq i32 %call12, -1
  br i1 %cmp.i.not, label %if.then23, label %if.end24, !prof !231

if.then23:                                        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @consume_skb(ptr noundef nonnull %call.i) #20
  br label %cleanup

if.end24:                                         ; preds = %skb_tailroom.exit
  %mapping25 = getelementptr %struct.jme_buffer_info, ptr %1, i32 %i, i32 1
  %20 = ptrtoint ptr %mapping25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mapping25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %if.end24.if.end37_crit_edge, label %if.then33, !prof !231

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  %22 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %jme, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %len = getelementptr %struct.jme_buffer_info, ptr %1, i32 %i, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev35, i32 noundef %21, i32 noundef %25, i32 noundef 2, i32 noundef 0) #20
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end24.if.end37_crit_edge
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %add.ptr, align 4
  %27 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i63 = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i63, label %cond.false.i69, label %if.end37.skb_tailroom.exit71_crit_edge

if.end37.skb_tailroom.exit71_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_tailroom.exit71

cond.false.i69:                                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #22
  %end.i64 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %29 = ptrtoint ptr %end.i64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i64, align 4
  %tail.i65 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i65, align 8
  %sub.ptr.lhs.cast.i66 = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i67 = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i68 = sub i32 %sub.ptr.lhs.cast.i66, %sub.ptr.rhs.cast.i67
  br label %skb_tailroom.exit71

skb_tailroom.exit71:                              ; preds = %cond.false.i69, %if.end37.skb_tailroom.exit71_crit_edge
  %cond.i70 = phi i32 [ %sub.ptr.sub.i68, %cond.false.i69 ], [ 0, %if.end37.skb_tailroom.exit71_crit_edge ]
  %len40 = getelementptr %struct.jme_buffer_info, ptr %1, i32 %i, i32 2
  %33 = ptrtoint ptr %len40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond.i70, ptr %len40, align 4
  %34 = ptrtoint ptr %mapping25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call12, ptr %mapping25, align 4
  br label %cleanup

cleanup:                                          ; preds = %skb_tailroom.exit71, %if.then23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then23 ], [ 0, %skb_tailroom.exit71 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i16 @jme_udpsum(ptr noundef %skb) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %1)
  %cmp = icmp ult i32 %1, 34
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp1.not = icmp eq i16 %3, 2048
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %add.i = add i16 %conv.i.i, 14
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %add.i, ptr %network_header.i.i, align 4
  %conv.i.i41 = zext i16 %add.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i41
  %protocol5 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %protocol5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protocol5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %10)
  %cmp7.not = icmp eq i8 %10, 17
  br i1 %cmp7.not, label %lor.lhs.false, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = shl i8 %bf.load, 2
  %12 = and i8 %bf.clear, 60
  %narrow = add nuw nsw i8 %12, 22
  %add12 = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add12)
  %cmp13 = icmp ult i32 %1, %add12
  br i1 %cmp13, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end16

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end16:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  %narrow38 = add nuw nsw i8 %12, 14
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %13 = zext i8 %narrow38 to i16
  %conv1.i = add i16 %13, %conv.i.i
  %14 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv1.i, ptr %transport_header.i.i, align 2
  %conv.i.i58 = zext i16 %conv1.i to i32
  %add.ptr.i.i59 = getelementptr i8, ptr %7, i32 %conv.i.i58
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i59, i32 0, i32 3
  %15 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %check, align 2
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end16, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i16 [ %16, %if.end16 ], [ -1, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -1, %if.end4.cleanup.sink.split_crit_edge ]
  %17 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_intr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %dev_id, i32 2312
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %1, i32 2080
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #20, !srcloc !221
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %and = and i32 %3, -500101120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp3 = icmp eq i32 %2, -1
  %or.cond = or i1 %cmp3, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end11, !prof !262

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  tail call fastcc void @jme_intr_msi(ptr noundef %add.ptr.i, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_msi(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %regs.i = getelementptr i8, ptr %dev_id, i32 2312
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %1, i32 2080
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #20, !srcloc !221
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  tail call fastcc void @jme_intr_msi(ptr noundef %add.ptr.i, i32 noundef %3)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_intr_msi(ptr noundef %jme, i32 noundef %intrstat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %regs.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1061346) #20, !srcloc !224
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %3, i32 2092
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %6, i32 2092
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %and = and i32 %intrstat, -1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %8 = tail call i32 @llvm.bswap.i32(i32 %intrstat) #20
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %10, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %8) #20, !srcloc !224
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i70 = getelementptr i8, ptr %12, i32 2080
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i70) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %linkch_task = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i71 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %linkch_task) #20
  br label %out_reenable

if.end:                                           ; preds = %entry
  %and1 = and i32 %intrstat, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr.i73 = getelementptr i8, ptr %16, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 64) #20, !srcloc !224
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i74 = getelementptr i8, ptr %18, i32 2080
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i74) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %state.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 13, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  %pcc_task = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %pcc_task) #20
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %and5 = and i32 %intrstat, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %add.ptr.i76 = getelementptr i8, ptr %21, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 16785664) #20, !srcloc !224
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i77 = getelementptr i8, ptr %23, i32 2080
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i77) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %state.i78 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 11, i32 1
  %call.i79 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i78) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %if.then.i81, label %if.then7.if.end8_crit_edge

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then.i81:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #22
  %txclean_task = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %txclean_task) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then.i81, %if.then7.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %and9 = and i32 %intrstat, 34607104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  %or = or i32 %and9, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #20
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i84 = getelementptr i8, ptr %27, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %25) #20, !srcloc !224
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i85 = getelementptr i8, ptr %29, i32 2080
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i85) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %flags = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 14
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags, align 4
  %33 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool15.not = icmp eq i32 %33, 0
  %and31 = and i32 %intrstat, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  br i1 %tobool32.not, label %if.then16.if.end20_crit_edge, label %if.then19

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #22
  %rx_empty = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_empty, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %rx_empty, i32 1, i32 3, i32 1) #20
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_empty, ptr %rx_empty, i32 1, ptr elementtype(i32) %rx_empty) #20, !srcloc !228
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then16.if.end20_crit_edge
  br i1 %tobool10.not, label %if.end20.out_reenable_crit_edge, label %if.then23

if.end20.out_reenable_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_reenable

if.then23:                                        ; preds = %if.end20
  %napi = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 44
  %call24 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #20
  br i1 %call24, label %if.then27, label %if.then23.out_reenable_crit_edge, !prof !230

if.then23.out_reenable_crit_edge:                 ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_reenable

if.then27:                                        ; preds = %if.then23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #20, !srcloc !224
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %38, i32 2096
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !229
  tail call void @arm_heavy_mb() #20
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags, align 4
  %42 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %if.then27.jme_polling_mode.exit_crit_edge

if.then27.jme_polling_mode.exit_crit_edge:        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_polling_mode.exit

do.body4.i.i:                                     ; preds = %if.then27
  %msg_enable.i.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 34
  %43 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %44, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body4.i.i.jme_polling_mode.exit_crit_edge, label %if.then6.i.i

do.body4.i.i.jme_polling_mode.exit_crit_edge:     ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_polling_mode.exit

if.then6.i.i:                                     ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %45 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %46, ptr noundef nonnull @.str.50, i32 noundef 0) #23
  br label %jme_polling_mode.exit

jme_polling_mode.exit:                            ; preds = %if.then6.i.i, %do.body4.i.i.jme_polling_mode.exit_crit_edge, %if.then27.jme_polling_mode.exit_crit_edge
  tail call void @__napi_schedule(ptr noundef %napi) #20
  br label %out_reenable

if.else:                                          ; preds = %if.end13
  br i1 %tobool32.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.else
  %rx_empty34 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 42
  %call.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_empty34, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %rx_empty34, i32 1, i32 3, i32 1) #20
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_empty34, ptr %rx_empty34, i32 1, ptr elementtype(i32) %rx_empty34) #20, !srcloc !228
  %state.i86 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 9, i32 1
  %call.i87 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i86) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %if.then.i89, label %if.then33.out_reenable_crit_edge

if.then33.out_reenable_crit_edge:                 ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_reenable

if.then.i89:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  %rxempty_task = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 9
  tail call void @__tasklet_hi_schedule(ptr noundef %rxempty_task) #20
  br label %out_reenable

if.else35:                                        ; preds = %if.else
  %and36 = and i32 %intrstat, 34603008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else35.out_reenable_crit_edge, label %if.then38

if.else35.out_reenable_crit_edge:                 ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_reenable

if.then38:                                        ; preds = %if.else35
  %state.i90 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 10, i32 1
  %call.i91 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i90) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %if.then.i93, label %if.then38.out_reenable_crit_edge

if.then38.out_reenable_crit_edge:                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_reenable

if.then.i93:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #22
  %rxclean_task = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 10
  tail call void @__tasklet_hi_schedule(ptr noundef %rxclean_task) #20
  br label %out_reenable

out_reenable:                                     ; preds = %if.then.i93, %if.then38.out_reenable_crit_edge, %if.else35.out_reenable_crit_edge, %if.then.i89, %if.then33.out_reenable_crit_edge, %jme_polling_mode.exit, %if.then23.out_reenable_crit_edge, %if.end20.out_reenable_crit_edge, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 8
  %add.ptr.i96 = getelementptr i8, ptr %49, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 1061346) #20, !srcloc !224
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i97 = getelementptr i8, ptr %51, i32 2088
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i97) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 8
  %add.ptr7.i98 = getelementptr i8, ptr %54, i32 2088
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i98) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tasklet_schedule(ptr noundef %t) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__tasklet_schedule(ptr noundef %t) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_set_rx_pcc(ptr noundef %jme, i32 noundef %p) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %0 = zext i32 %p to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %p, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #20, !srcloc !224
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %4, i32 2096
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %do.body

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i16 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %6 = ptrtoint ptr %regs.i16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i16, align 8
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 65792) #20, !srcloc !224
  %8 = ptrtoint ptr %regs.i16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i16, align 8
  %add.ptr2.i18 = getelementptr i8, ptr %9, i32 2096
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i19 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %11 = ptrtoint ptr %regs.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i19, align 8
  %add.ptr.i20 = getelementptr i8, ptr %12, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 1064960) #20, !srcloc !224
  %13 = ptrtoint ptr %regs.i19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i19, align 8
  %add.ptr2.i21 = getelementptr i8, ptr %14, i32 2096
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i21) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %do.body

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i22 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %16 = ptrtoint ptr %regs.i22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i22, align 8
  %add.ptr.i23 = getelementptr i8, ptr %17, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 2129920) #20, !srcloc !224
  %18 = ptrtoint ptr %regs.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i22, align 8
  %add.ptr2.i24 = getelementptr i8, ptr %19, i32 2096
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i24) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %do.body

do.body:                                          ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !229
  tail call void @arm_heavy_mb() #20
  %flags = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 14
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %do.body4, label %do.body.if.end8_crit_edge

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

do.body4:                                         ; preds = %do.body
  %msg_enable = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 34
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 8
  %and = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body4.if.end8_crit_edge, label %if.then6

do.body4.if.end8_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then6:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #22
  %dev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.50, i32 noundef %p) #23
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body4.if.end8_crit_edge, %do.body.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jme_phy_specreg_read(ptr nocapture noundef readonly %jme) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mii_if = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 3
  %2 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_if, align 4
  %shl.i.i = shl i32 %3, 6
  %and.i.i = and i32 %shl.i.i, 1984
  %or4.i = or i32 %and.i.i, 1077080112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %4 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #20
  %regs.i.i = getelementptr i8, ptr %1, i32 2312
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %4) #20, !srcloc !224
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.027.i = phi i32 [ 5000, %entry ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #20
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %14 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7.i = icmp eq i32 %14, 0
  br i1 %cmp7.i, label %for.body.i.jme_mdio_write.exit_crit_edge, label %for.inc.i

for.body.i.jme_mdio_write.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_mdio_write.exit

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.027.i, -1
  %cmp.i = icmp ugt i32 %i.027.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end12.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

do.end12.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %3, i32 noundef 30) #23
  br label %jme_mdio_write.exit

jme_mdio_write.exit:                              ; preds = %do.end12.i, %for.body.i.jme_mdio_write.exit_crit_edge
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mii_if, align 4
  %call = tail call i32 @jme_mdio_read(ptr noundef %16, i32 noundef %18, i32 noundef 31)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_disable_rx_engine(ptr nocapture noundef %jme) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %reg_rxcs = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 17
  %0 = ptrtoint ptr %reg_rxcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_rxcs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #20
  %regs.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #20, !srcloc !224
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %6, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !267
  tail call void @arm_heavy_mb() #20
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not18.not = icmp eq i32 %11, 0
  br i1 %tobool.not18.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 10, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #20
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %14, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !268
  %dec = add nsw i32 %i.019, -1
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp ne i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %phi.cmp = icmp eq i32 %dec, 0
  br i1 %phi.cmp, label %do.end5, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end5:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #23
  br label %if.end

if.end:                                           ; preds = %do.end5, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %reg_gpreg1.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 21
  %17 = ptrtoint ptr %reg_gpreg1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_gpreg1.i, align 8
  %or.i = or i32 %18, 67108864
  store i32 %or.i, ptr %reg_gpreg1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #20
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #20, !srcloc !224
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %23, i32 2060
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %26, i32 2060
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_disable_tx_engine(ptr nocapture noundef %jme) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %reg_txcs = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 15
  %0 = ptrtoint ptr %reg_txcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_txcs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #20
  %regs.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #20, !srcloc !224
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !269
  tail call void @arm_heavy_mb() #20
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not16.not = icmp eq i32 %11, 0
  br i1 %tobool.not16.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 10, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #20
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !270
  %dec = add nsw i32 %i.017, -1
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp ne i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %phi.cmp = icmp eq i32 %dec, 0
  br i1 %phi.cmp, label %do.end5, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end5:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #23
  br label %if.end

if.end:                                           ; preds = %do.end5, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %reg_ghc.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 19
  %17 = ptrtoint ptr %reg_ghc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_ghc.i, align 8
  %and.i = and i32 %18, -15728641
  store i32 %and.i, ptr %reg_ghc.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i) #20
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #20, !srcloc !224
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %23, i32 84
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %26, i32 84
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_free_rx_resources(ptr noundef %jme) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rxring1 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 4
  %0 = ptrtoint ptr %rxring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxring1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then:                                          ; preds = %entry
  %bufinf = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 4, i32 0, i32 4
  %2 = ptrtoint ptr %bufinf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bufinf, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %for.cond.preheader

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

for.cond.preheader:                               ; preds = %if.then
  %rx_ring_size = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 26
  %4 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp28.not = icmp eq i32 %5, 0
  br i1 %cmp28.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %jme_free_rx_buf.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %jme_free_rx_buf.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %bufinf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bufinf, align 4
  %add.ptr.i = getelementptr %struct.jme_buffer_info, ptr %7, i32 %i.029
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.jme_free_rx_buf.exit_crit_edge, label %if.then.i

for.body.jme_free_rx_buf.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_free_rx_buf.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jme, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %mapping.i = getelementptr %struct.jme_buffer_info, ptr %7, i32 %i.029, i32 1
  %12 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mapping.i, align 4
  %len.i = getelementptr %struct.jme_buffer_info, ptr %7, i32 %i.029, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %13, i32 noundef %15, i32 noundef 2, i32 noundef 0) #20
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  tail call void @consume_skb(ptr noundef %17) #20
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %add.ptr.i, align 4
  %19 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %mapping.i, align 4
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %len.i, align 4
  br label %jme_free_rx_buf.exit

jme_free_rx_buf.exit:                             ; preds = %if.then.i, %for.body.jme_free_rx_buf.exit_crit_edge
  %inc = add nuw i32 %i.029, 1
  %21 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_ring_size, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %jme_free_rx_buf.exit.for.body_crit_edge, label %jme_free_rx_buf.exit.for.end_crit_edge

jme_free_rx_buf.exit.for.end_crit_edge:           ; preds = %jme_free_rx_buf.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

jme_free_rx_buf.exit.for.body_crit_edge:          ; preds = %jme_free_rx_buf.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %jme_free_rx_buf.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %23 = ptrtoint ptr %bufinf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bufinf, align 4
  tail call void @kfree(ptr noundef %24) #20
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.if.end_crit_edge
  %25 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %jme, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %rx_ring_size5 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 26
  %27 = ptrtoint ptr %rx_ring_size5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_ring_size5, align 4
  %mul = shl i32 %28, 4
  %add = add i32 %mul, 16
  %29 = ptrtoint ptr %rxring1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rxring1, align 4
  %dmaalloc = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 4, i32 0, i32 2
  %31 = ptrtoint ptr %dmaalloc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dmaalloc, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %add, ptr noundef %30, i32 noundef %32, i32 noundef 0) #20
  %33 = call ptr @memset(ptr %rxring1, i32 0, i32 20)
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %next_to_use = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 4, i32 0, i32 5
  %34 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 4, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean, i32 noundef 4) #20
  %35 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %next_to_clean, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_free_tx_resources(ptr noundef %jme) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %txring1 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 5
  %0 = ptrtoint ptr %txring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txring1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then:                                          ; preds = %entry
  %bufinf = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 5, i32 0, i32 4
  %2 = ptrtoint ptr %bufinf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bufinf, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end10_crit_edge, label %for.cond.preheader

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

for.cond.preheader:                               ; preds = %if.then
  %tx_ring_size = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 23
  %4 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_ring_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp42.not = icmp eq i32 %5, 0
  br i1 %cmp42.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %bufinf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bufinf, align 4
  %add.ptr = getelementptr %struct.jme_buffer_info, ptr %7, i32 %i.043
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %for.body.if.end_crit_edge, label %if.then6

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @consume_skb(ptr noundef nonnull %9) #20
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %add.ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body.if.end_crit_edge
  %mapping = getelementptr %struct.jme_buffer_info, ptr %7, i32 %i.043, i32 1
  %inc = add nuw i32 %i.043, 1
  %11 = call ptr @memset(ptr %mapping, i32 0, i32 16)
  %12 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ring_size, align 8
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %14 = ptrtoint ptr %bufinf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bufinf, align 4
  tail call void @kfree(ptr noundef %15) #20
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then.if.end10_crit_edge
  %16 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jme, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %tx_ring_size11 = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 23
  %18 = ptrtoint ptr %tx_ring_size11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ring_size11, align 8
  %mul = shl i32 %19, 4
  %add = add i32 %mul, 16
  %20 = ptrtoint ptr %txring1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %txring1, align 4
  %dmaalloc = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 5, i32 0, i32 2
  %22 = ptrtoint ptr %dmaalloc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dmaalloc, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %add, ptr noundef %21, i32 noundef %23, i32 noundef 0) #20
  %24 = call ptr @memset(ptr %txring1, i32 0, i32 20)
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %entry.if.end16_crit_edge
  %next_to_use = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 5, i32 0, i32 5
  %25 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 5, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean, i32 noundef 4) #20
  %26 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %next_to_clean, align 4
  %nr_free = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 5, i32 0, i32 7
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_free, i32 noundef 4) #20
  %27 = ptrtoint ptr %nr_free to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %nr_free, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_get_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_lock = getelementptr i8, ptr %netdev, i32 2732
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock) #20
  %mii_if = getelementptr i8, ptr %netdev, i32 2316
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %info) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #20
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jme_get_regs_len(ptr nocapture noundef readnone %netdev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1280
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_get_regs(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 255, i32 1280)
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %1 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %version, align 4
  %regs.i.i = getelementptr i8, ptr %netdev, i32 2312
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %add1.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %i.06.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !221
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %6 = lshr exact i32 %i.06.i, 2
  %arrayidx.i = getelementptr i32, ptr %p, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %arrayidx.i, align 4
  %add1.i = add nuw nsw i32 %i.06.i, 4
  %cmp.i = icmp ult i32 %i.06.i, 124
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %mmapio_memcpy.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

mmapio_memcpy.exit:                               ; preds = %for.body.i
  %add.ptr = getelementptr i32, ptr %p, i32 64
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.body.i24.for.body.i24_crit_edge, %mmapio_memcpy.exit
  %i.06.i18 = phi i32 [ 0, %mmapio_memcpy.exit ], [ %add1.i22, %for.body.i24.for.body.i24_crit_edge ]
  %add.i = add nuw nsw i32 %i.06.i18, 1024
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i19 = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #20, !srcloc !221
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %12 = lshr exact i32 %i.06.i18, 2
  %arrayidx.i21 = getelementptr i32, ptr %add.ptr, i32 %12
  %13 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %arrayidx.i21, align 4
  %add1.i22 = add nuw nsw i32 %i.06.i18, 4
  %cmp.i23 = icmp ult i32 %i.06.i18, 84
  br i1 %cmp.i23, label %for.body.i24.for.body.i24_crit_edge, label %mmapio_memcpy.exit25

for.body.i24.for.body.i24_crit_edge:              ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i24

mmapio_memcpy.exit25:                             ; preds = %for.body.i24
  %add.ptr1 = getelementptr i32, ptr %p, i32 128
  br label %for.body.i34

for.body.i34:                                     ; preds = %for.body.i34.for.body.i34_crit_edge, %mmapio_memcpy.exit25
  %i.06.i27 = phi i32 [ 0, %mmapio_memcpy.exit25 ], [ %add1.i32, %for.body.i34.for.body.i34_crit_edge ]
  %add.i28 = add nuw nsw i32 %i.06.i27, 2048
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i29 = getelementptr i8, ptr %15, i32 %add.i28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #20, !srcloc !221
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %18 = lshr exact i32 %i.06.i27, 2
  %arrayidx.i31 = getelementptr i32, ptr %add.ptr1, i32 %18
  %19 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %arrayidx.i31, align 4
  %add1.i32 = add nuw nsw i32 %i.06.i27, 4
  %cmp.i33 = icmp ult i32 %i.06.i27, 148
  br i1 %cmp.i33, label %for.body.i34.for.body.i34_crit_edge, label %mmapio_memcpy.exit35

for.body.i34.for.body.i34_crit_edge:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i34

mmapio_memcpy.exit35:                             ; preds = %for.body.i34
  %add.ptr2 = getelementptr i32, ptr %p, i32 192
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %mmapio_memcpy.exit35
  %i.06.i37 = phi i32 [ 0, %mmapio_memcpy.exit35 ], [ %add1.i42, %for.body.i44.for.body.i44_crit_edge ]
  %add.i38 = add nuw nsw i32 %i.06.i37, 3072
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i39 = getelementptr i8, ptr %21, i32 %add.i38
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #20, !srcloc !221
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %24 = lshr exact i32 %i.06.i37, 2
  %arrayidx.i41 = getelementptr i32, ptr %add.ptr2, i32 %24
  %25 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %arrayidx.i41, align 4
  %add1.i42 = add nuw nsw i32 %i.06.i37, 4
  %cmp.i43 = icmp ult i32 %i.06.i37, 251
  br i1 %cmp.i43, label %for.body.i44.for.body.i44_crit_edge, label %mmapio_memcpy.exit45

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i44

mmapio_memcpy.exit45:                             ; preds = %for.body.i44
  %add.ptr3 = getelementptr i32, ptr %p, i32 256
  %dev.i = getelementptr i8, ptr %netdev, i32 2308
  %mii_if.i = getelementptr i8, ptr %netdev, i32 2316
  br label %for.body.i47

for.body.i47:                                     ; preds = %for.body.i47.for.body.i47_crit_edge, %mmapio_memcpy.exit45
  %i.01.i = phi i32 [ 0, %mmapio_memcpy.exit45 ], [ %inc.i, %for.body.i47.for.body.i47_crit_edge ]
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mii_if.i, align 4
  %call.i = tail call i32 @jme_mdio_read(ptr noundef %27, i32 noundef %29, i32 noundef %i.01.i) #20
  %conv.i = trunc i32 %call.i to i16
  %arrayidx.i46 = getelementptr i16, ptr %add.ptr3, i32 %i.01.i
  %30 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %arrayidx.i46, align 2
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %mdio_memcpy.exit, label %for.body.i47.for.body.i47_crit_edge

for.body.i47.for.body.i47_crit_edge:              ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i47

mdio_memcpy.exit:                                 ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #22
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @jme_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %wol) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %reg_pmcs = getelementptr i8, ptr %netdev, i32 3028
  %2 = ptrtoint ptr %reg_pmcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_pmcs, align 4
  %and = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %spec.store.select = zext i1 %tobool.not to i32
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.store.select, ptr %wolopts, align 4
  %5 = ptrtoint ptr %reg_pmcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_pmcs, align 4
  %and3 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %entry.if.end8_crit_edge, label %if.then5

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %or7 = or i32 %spec.store.select, 32
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or7, ptr %wolopts, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jme_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %wol) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_pmcs = getelementptr i8, ptr %netdev, i32 3028
  %2 = ptrtoint ptr %reg_pmcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg_pmcs, align 4
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %and2 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.store.select = select i1 %tobool3.not, i32 0, i32 6
  %5 = ptrtoint ptr %reg_pmcs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.store.select, ptr %reg_pmcs, align 4
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  %and8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %or12 = or i32 %spec.store.select, 1
  %8 = ptrtoint ptr %reg_pmcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or12, ptr %reg_pmcs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jme_get_msglevel(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3072
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @jme_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %value) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3072
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_nway_reset(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_lock.i = getelementptr i8, ptr %netdev, i32 2732
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock.i) #20
  %dev.i = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %mii_if.i = getelementptr i8, ptr %netdev, i32 2316
  %2 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_if.i, align 4
  %call.i = tail call i32 @jme_mdio_read(ptr noundef %1, i32 noundef %3, i32 noundef 0) #20
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii_if.i, align 4
  %or.i = shl i32 %call.i, 16
  %shl.i.i.i = shl i32 %7, 6
  %and.i.i.i = and i32 %shl.i.i.i, 1984
  %shl.i.i = or i32 %and.i.i.i, %or.i
  %or4.i.i = or i32 %shl.i.i, 301989936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %8 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #20
  %regs.i.i.i = getelementptr i8, ptr %5, i32 2312
  %9 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i22.i.i = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %8) #20, !srcloc !224
  %11 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.027.i.i = phi i32 [ 5000, %entry ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 4294960) #20
  %15 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i24.i.i = getelementptr i8, ptr %16, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %18 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.i.i = icmp eq i32 %18, 0
  br i1 %cmp7.i.i, label %for.body.i.i.jme_restart_an.exit_crit_edge, label %for.inc.i.i

for.body.i.i.jme_restart_an.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_restart_an.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %i.027.i.i, -1
  %cmp.i.i = icmp ugt i32 %i.027.i.i, 1
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %do.end12.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

do.end12.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %7, i32 noundef 0) #23
  br label %jme_restart_an.exit

jme_restart_an.exit:                              ; preds = %do.end12.i.i, %for.body.i.i.jme_restart_an.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock.i) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_get_link(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %1, i32 1072
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #20, !srcloc !221
  %3 = lshr i32 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %and = and i32 %3, 1024
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_get_eeprom_len(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %1, i32 1088
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %3 = lshr i32 %2, 21
  %4 = and i32 %3, 256
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_get_eeprom(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 592, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9 = icmp sgt i32 %3, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs.i.i = getelementptr i8, ptr %netdev, i32 2312
  %msg_enable.i = getelementptr i8, ptr %netdev, i32 3072
  %dev.i = getelementptr i8, ptr %netdev, i32 2308
  br label %for.body

for.body:                                         ; preds = %jme_smb_read.exit.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %jme_smb_read.exit.for.body_crit_edge ]
  %add = add i32 %i.010, %1
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 1088
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %8 = and i32 %7, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not58.i = icmp eq i32 %8, 0
  br i1 %tobool.not58.i, label %for.body.if.end7.i_crit_edge, label %for.body.land.rhs.i_crit_edge

for.body.land.rhs.i_crit_edge:                    ; preds = %for.body
  br label %land.rhs.i

for.body.if.end7.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %for.body.land.rhs.i_crit_edge
  %to.059.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 20, %for.body.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %to.059.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %do.body.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @msleep(i32 noundef 1) #20
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i49.i = getelementptr i8, ptr %10, i32 1088
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %12 = and i32 %11, 251658240
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %while.body.i.if.end7.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs.i

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

do.body.critedge.i:                               ; preds = %land.rhs.i
  %13 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable.i, align 8
  %and4.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body.critedge.i.jme_smb_read.exit_crit_edge, label %if.then6.i

do.body.critedge.i.jme_smb_read.exit_crit_edge:   ; preds = %do.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_smb_read.exit

if.then6.i:                                       ; preds = %do.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.60) #23
  br label %jme_smb_read.exit

if.end7.i:                                        ; preds = %while.body.i.if.end7.i_crit_edge, %for.body.if.end7.i_crit_edge
  %shl.i = shl i32 %add, 8
  %and8.i = and i32 %shl.i, 65280
  %or9.i = or i32 %and8.i, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %17 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #20
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i51.i = getelementptr i8, ptr %19, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 %17) #20, !srcloc !224
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %21, i32 1092
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %24, i32 1092
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #20, !srcloc !221
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %and1260.i = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1260.i)
  %tobool13.not61.i = icmp eq i32 %and1260.i, 0
  br i1 %tobool13.not61.i, label %if.end7.i.if.end32.i_crit_edge, label %if.end7.i.land.rhs14.i_crit_edge

if.end7.i.land.rhs14.i_crit_edge:                 ; preds = %if.end7.i
  br label %land.rhs14.i

if.end7.i.if.end32.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32.i

land.rhs14.i:                                     ; preds = %while.body18.i.land.rhs14.i_crit_edge, %if.end7.i.land.rhs14.i_crit_edge
  %to.262.i = phi i32 [ %dec15.i, %while.body18.i.land.rhs14.i_crit_edge ], [ 20, %if.end7.i.land.rhs14.i_crit_edge ]
  %dec15.i = add nsw i32 %to.262.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec15.i)
  %tobool16.not.i = icmp eq i32 %dec15.i, 0
  br i1 %tobool16.not.i, label %do.body23.critedge.i, label %while.body18.i

while.body18.i:                                   ; preds = %land.rhs14.i
  tail call void @msleep(i32 noundef 1) #20
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i55.i = getelementptr i8, ptr %28, i32 1092
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i) #20, !srcloc !221
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %and12.i = and i32 %30, 16
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %while.body18.i.if.end32.i_crit_edge, label %while.body18.i.land.rhs14.i_crit_edge

while.body18.i.land.rhs14.i_crit_edge:            ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs14.i

while.body18.i.if.end32.i_crit_edge:              ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32.i

do.body23.critedge.i:                             ; preds = %land.rhs14.i
  %31 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable.i, align 8
  %and25.i = and i32 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.body23.critedge.i.jme_smb_read.exit_crit_edge, label %if.then27.i

do.body23.critedge.i.jme_smb_read.exit_crit_edge: ; preds = %do.body23.critedge.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_smb_read.exit

if.then27.i:                                      ; preds = %do.body23.critedge.i
  call void @__sanitizer_cov_trace_pc() #22
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.60) #23
  br label %jme_smb_read.exit

if.end32.i:                                       ; preds = %while.body18.i.if.end32.i_crit_edge, %if.end7.i.if.end32.i_crit_edge
  %val.1.lcssa.i = phi i32 [ %26, %if.end7.i.if.end32.i_crit_edge ], [ %30, %while.body18.i.if.end32.i_crit_edge ]
  %shr.i = lshr i32 %val.1.lcssa.i, 24
  %conv.i = trunc i32 %shr.i to i8
  br label %jme_smb_read.exit

jme_smb_read.exit:                                ; preds = %if.end32.i, %if.then27.i, %do.body23.critedge.i.jme_smb_read.exit_crit_edge, %if.then6.i, %do.body.critedge.i.jme_smb_read.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end32.i ], [ -1, %if.then6.i ], [ -1, %do.body.critedge.i.jme_smb_read.exit_crit_edge ], [ -1, %if.then27.i ], [ -1, %do.body23.critedge.i.jme_smb_read.exit_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.010
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %jme_smb_read.exit.for.end_crit_edge, label %jme_smb_read.exit.for.body_crit_edge

jme_smb_read.exit.for.body_crit_edge:             ; preds = %jme_smb_read.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

jme_smb_read.exit.for.end_crit_edge:              ; preds = %jme_smb_read.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %jme_smb_read.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_set_eeprom(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 592, i32 %5)
  %cmp.not = icmp eq i32 %5, 592
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp312 = icmp sgt i32 %3, 0
  br i1 %cmp312, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regs.i.i = getelementptr i8, ptr %netdev, i32 2312
  %msg_enable.i = getelementptr i8, ptr %netdev, i32 3072
  %dev.i = getelementptr i8, ptr %netdev, i32 2308
  br label %for.body

for.body:                                         ; preds = %jme_smb_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %jme_smb_write.exit.for.body_crit_edge ]
  %add = add i32 %i.013, %1
  %arrayidx = getelementptr i8, ptr %data, i32 %i.013
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 1088
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %11 = and i32 %10, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not58.i = icmp eq i32 %11, 0
  br i1 %tobool.not58.i, label %for.body.if.end7.i_crit_edge, label %for.body.land.rhs.i_crit_edge

for.body.land.rhs.i_crit_edge:                    ; preds = %for.body
  br label %land.rhs.i

for.body.if.end7.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %for.body.land.rhs.i_crit_edge
  %to.059.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 20, %for.body.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %to.059.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %do.body.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @msleep(i32 noundef 1) #20
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %13, i32 1088
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %15 = and i32 %14, 251658240
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %while.body.i.if.end7.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs.i

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

do.body.critedge.i:                               ; preds = %land.rhs.i
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 8
  %and4.i = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body.critedge.i.jme_smb_write.exit_crit_edge, label %if.then6.i

do.body.critedge.i.jme_smb_write.exit_crit_edge:  ; preds = %do.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_smb_write.exit

if.then6.i:                                       ; preds = %do.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #22
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.60) #23
  br label %jme_smb_write.exit

if.end7.i:                                        ; preds = %while.body.i.if.end7.i_crit_edge, %for.body.if.end7.i_crit_edge
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %shl9.i = shl i32 %add, 8
  %and10.i = and i32 %shl9.i, 65280
  %or.i = or i32 %shl.i, %and10.i
  %or12.i = or i32 %or.i, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %20 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #20
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i52.i = getelementptr i8, ptr %22, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %20) #20, !srcloc !224
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %24, i32 1092
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %27, i32 1092
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %29 = and i32 %28, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not61.i = icmp eq i32 %29, 0
  br i1 %tobool16.not61.i, label %if.end7.i.if.end35.i_crit_edge, label %if.end7.i.land.rhs17.i_crit_edge

if.end7.i.land.rhs17.i_crit_edge:                 ; preds = %if.end7.i
  br label %land.rhs17.i

if.end7.i.if.end35.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35.i

land.rhs17.i:                                     ; preds = %while.body21.i.land.rhs17.i_crit_edge, %if.end7.i.land.rhs17.i_crit_edge
  %to.262.i = phi i32 [ %dec18.i, %while.body21.i.land.rhs17.i_crit_edge ], [ 20, %if.end7.i.land.rhs17.i_crit_edge ]
  %dec18.i = add nsw i32 %to.262.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18.i)
  %tobool19.not.i = icmp eq i32 %dec18.i, 0
  br i1 %tobool19.not.i, label %do.body26.critedge.i, label %while.body21.i

while.body21.i:                                   ; preds = %land.rhs17.i
  tail call void @msleep(i32 noundef 1) #20
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i56.i = getelementptr i8, ptr %31, i32 1092
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %33 = and i32 %32, 268435456
  %tobool16.not.i = icmp eq i32 %33, 0
  br i1 %tobool16.not.i, label %while.body21.i.if.end35.i_crit_edge, label %while.body21.i.land.rhs17.i_crit_edge

while.body21.i.land.rhs17.i_crit_edge:            ; preds = %while.body21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs17.i

while.body21.i.if.end35.i_crit_edge:              ; preds = %while.body21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35.i

do.body26.critedge.i:                             ; preds = %land.rhs17.i
  %34 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable.i, align 8
  %and28.i = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.body26.critedge.i.jme_smb_write.exit_crit_edge, label %if.then30.i

do.body26.critedge.i.jme_smb_write.exit_crit_edge: ; preds = %do.body26.critedge.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_smb_write.exit

if.then30.i:                                      ; preds = %do.body26.critedge.i
  call void @__sanitizer_cov_trace_pc() #22
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.60) #23
  br label %jme_smb_write.exit

if.end35.i:                                       ; preds = %while.body21.i.if.end35.i_crit_edge, %if.end7.i.if.end35.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 429496000) #20
  br label %jme_smb_write.exit

jme_smb_write.exit:                               ; preds = %if.end35.i, %if.then30.i, %do.body26.critedge.i.jme_smb_write.exit_crit_edge, %if.then6.i, %do.body.critedge.i.jme_smb_write.exit_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %jme_smb_write.exit.cleanup_crit_edge, label %jme_smb_write.exit.for.body_crit_edge

jme_smb_write.exit.for.body_crit_edge:            ; preds = %jme_smb_write.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

jme_smb_write.exit.cleanup_crit_edge:             ; preds = %jme_smb_write.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %jme_smb_write.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %jme_smb_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jme_get_coalesce(ptr noundef %netdev, ptr nocapture noundef writeonly %ecmd, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 5
  %0 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %tx_coalesce_usecs, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 6
  %1 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %tx_max_coalesced_frames, align 4
  %flags = getelementptr i8, ptr %netdev, i32 3004
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %use_adaptive_rx_coalesce2 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 10
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %5 = ptrtoint ptr %use_adaptive_rx_coalesce2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %use_adaptive_rx_coalesce2, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %use_adaptive_rx_coalesce2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %use_adaptive_rx_coalesce2, align 4
  %cur = getelementptr i8, ptr %netdev, i32 3180
  %7 = ptrtoint ptr %cur to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cur, align 4
  %switch.tableidx = add i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %9 = icmp ult i8 %switch.tableidx, 3
  br i1 %9, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %10 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.jme_get_coalesce, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %12 = sext i8 %switch.tableidx to i32
  %switch.gep24 = getelementptr inbounds [3 x i32], ptr @switch.table.jme_get_coalesce.90, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load25 = load i32, ptr %switch.gep24, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %if.then
  %.sink23 = phi i32 [ 0, %if.then ], [ %switch.load, %switch.lookup ]
  %.sink = phi i32 [ 0, %if.then ], [ %switch.load25, %switch.lookup ]
  %rx_coalesce_usecs3 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 1
  %14 = ptrtoint ptr %rx_coalesce_usecs3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink23, ptr %rx_coalesce_usecs3, align 4
  %rx_max_coalesced_frames4 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 2
  %15 = ptrtoint ptr %rx_max_coalesced_frames4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %rx_max_coalesced_frames4, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ecmd, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 10
  %2 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %flags10 = getelementptr i8, ptr %netdev, i32 3004
  %4 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags10, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags10) #20
  %jme_rx = getelementptr i8, ptr %netdev, i32 3204
  %7 = ptrtoint ptr %jme_rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @netif_rx, ptr %jme_rx, align 4
  %cur = getelementptr i8, ptr %netdev, i32 3180
  %8 = ptrtoint ptr %cur to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %cur, align 4
  %attempt = getelementptr i8, ptr %netdev, i32 3181
  %9 = ptrtoint ptr %attempt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %attempt, align 1
  %cnt = getelementptr i8, ptr %netdev, i32 3182
  %10 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cnt, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i16.i = getelementptr i8, ptr %netdev, i32 2312
  %11 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %12, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 65792) #20, !srcloc !224
  %13 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr2.i18.i = getelementptr i8, ptr %14, i32 2096
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !229
  tail call void @arm_heavy_mb() #20
  %16 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags10, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body4.i, label %if.then5.jme_set_rx_pcc.exit_crit_edge

if.then5.jme_set_rx_pcc.exit_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_set_rx_pcc.exit

do.body4.i:                                       ; preds = %if.then5
  %msg_enable.i = getelementptr i8, ptr %netdev, i32 3072
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body4.i.jme_set_rx_pcc.exit_crit_edge, label %if.then6.i

do.body4.i.jme_set_rx_pcc.exit_crit_edge:         ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_set_rx_pcc.exit

if.then6.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr i8, ptr %netdev, i32 2308
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %22, ptr noundef nonnull @.str.50, i32 noundef 1) #23
  br label %jme_set_rx_pcc.exit

jme_set_rx_pcc.exit:                              ; preds = %if.then6.i, %do.body4.i.jme_set_rx_pcc.exit_crit_edge, %if.then5.jme_set_rx_pcc.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %23 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr.i17.i.i = getelementptr i8, ptr %24, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 65792) #20, !srcloc !224
  %25 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr2.i18.i.i = getelementptr i8, ptr %26, i32 2096
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !229
  tail call void @arm_heavy_mb() #20
  %28 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags10, align 4
  %30 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %jme_set_rx_pcc.exit.cleanup_crit_edge

jme_set_rx_pcc.exit.cleanup_crit_edge:            ; preds = %jme_set_rx_pcc.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body4.i.i:                                     ; preds = %jme_set_rx_pcc.exit
  %msg_enable.i.i = getelementptr i8, ptr %netdev, i32 3072
  %31 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %32, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body4.i.i.cleanup_crit_edge, label %do.body4.i.i.cleanup.sink.split_crit_edge

do.body4.i.i.cleanup.sink.split_crit_edge:        ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

do.body4.i.i.cleanup_crit_edge:                   ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true9:                                   ; preds = %if.end
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true9
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags10) #20
  %jme_rx15 = getelementptr i8, ptr %netdev, i32 3204
  %33 = ptrtoint ptr %jme_rx15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @netif_receive_skb, ptr %jme_rx15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i16.i.i34 = getelementptr i8, ptr %netdev, i32 2312
  %34 = ptrtoint ptr %regs.i16.i.i34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i16.i.i34, align 8
  %add.ptr.i17.i.i35 = getelementptr i8, ptr %35, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i35, i32 65792) #20, !srcloc !224
  %36 = ptrtoint ptr %regs.i16.i.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i16.i.i34, align 8
  %add.ptr2.i18.i.i36 = getelementptr i8, ptr %37, i32 2096
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18.i.i36) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !229
  tail call void @arm_heavy_mb() #20
  %39 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags10, align 4
  %41 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i38 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i38, label %do.body4.i.i42, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body4.i.i42:                                   ; preds = %if.then13
  %msg_enable.i.i39 = getelementptr i8, ptr %netdev, i32 3072
  %42 = ptrtoint ptr %msg_enable.i.i39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable.i.i39, align 8
  %and.i.i40 = and i32 %43, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool5.not.i.i41 = icmp eq i32 %and.i.i40, 0
  br i1 %tobool5.not.i.i41, label %do.body4.i.i42.cleanup_crit_edge, label %do.body4.i.i42.cleanup.sink.split_crit_edge

do.body4.i.i42.cleanup.sink.split_crit_edge:      ; preds = %do.body4.i.i42
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

do.body4.i.i42.cleanup_crit_edge:                 ; preds = %do.body4.i.i42
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body4.i.i42.cleanup.sink.split_crit_edge, %do.body4.i.i.cleanup.sink.split_crit_edge
  %dev.i.i43 = getelementptr i8, ptr %netdev, i32 2308
  %44 = ptrtoint ptr %dev.i.i43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i43, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %45, ptr noundef nonnull @.str.50, i32 noundef 1) #23
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body4.i.i42.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %do.body4.i.i.cleanup_crit_edge, %jme_set_rx_pcc.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true9.cleanup_crit_edge ], [ 0, %jme_set_rx_pcc.exit.cleanup_crit_edge ], [ 0, %do.body4.i.i.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %do.body4.i.i42.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jme_get_pauseparam(ptr noundef %netdev, ptr nocapture noundef writeonly %ecmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_txpfc = getelementptr i8, ptr %netdev, i32 3012
  %0 = ptrtoint ptr %reg_txpfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_txpfc, align 4
  %and = and i32 %1, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 3
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %tx_pause, align 4
  %reg_rxmcs = getelementptr i8, ptr %netdev, i32 3020
  %3 = ptrtoint ptr %reg_rxmcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_rxmcs, align 4
  %and1 = lshr i32 %4, 3
  %and1.lobit = and i32 %and1, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and1.lobit, ptr %rx_pause, align 4
  %phy_lock = getelementptr i8, ptr %netdev, i32 2732
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock) #20
  %dev = getelementptr i8, ptr %netdev, i32 2308
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %mii_if = getelementptr i8, ptr %netdev, i32 2316
  %8 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mii_if, align 4
  %call4 = tail call i32 @jme_mdio_read(ptr noundef %7, i32 noundef %9, i32 noundef 4)
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock) #20
  %and6 = and i32 %call4, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp ne i32 %and6, 0
  %conv8 = zext i1 %cmp7 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 1
  %10 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv8, ptr %autoneg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %ecmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_txpfc = getelementptr i8, ptr %netdev, i32 3012
  %0 = ptrtoint ptr %reg_txpfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_txpfc, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 3
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp ne i32 %3, 0
  %4 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %tobool.not = xor i1 %5, %cmp1
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %and8 = and i32 %1, -2
  %masksel = zext i1 %cmp1 to i32
  %storemerge78 = or i32 %and8, %masksel
  %6 = ptrtoint ptr %reg_txpfc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge78, ptr %reg_txpfc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %7 = tail call i32 @llvm.bswap.i32(i32 %storemerge78) #20
  %regs.i = getelementptr i8, ptr %netdev, i32 2312
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i79 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %7) #20, !srcloc !224
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %if.end10

if.end10:                                         ; preds = %if.then, %entry.if.end10_crit_edge
  %rxmcs_lock = getelementptr i8, ptr %netdev, i32 2820
  tail call void @_raw_spin_lock_bh(ptr noundef %rxmcs_lock) #20
  %reg_rxmcs = getelementptr i8, ptr %netdev, i32 3020
  %13 = ptrtoint ptr %reg_rxmcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_rxmcs, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 2
  %15 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14 = icmp ne i32 %16, 0
  %17 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  %tobool17.not = xor i1 %18, %cmp14
  br i1 %tobool17.not, label %if.end10.if.end29_crit_edge, label %if.then18

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  %and26 = and i32 %14, -9
  %masksel83 = select i1 %cmp14, i32 8, i32 0
  %storemerge = or i32 %masksel83, %and26
  %19 = ptrtoint ptr %reg_rxmcs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %reg_rxmcs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %20 = tail call i32 @llvm.bswap.i32(i32 %storemerge) #20
  %regs.i80 = getelementptr i8, ptr %netdev, i32 2312
  %21 = ptrtoint ptr %regs.i80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i80, align 8
  %add.ptr.i81 = getelementptr i8, ptr %22, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %20) #20, !srcloc !224
  %23 = ptrtoint ptr %regs.i80 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i80, align 8
  %add.ptr2.i82 = getelementptr i8, ptr %24, i32 52
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i82) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %if.end29

if.end29:                                         ; preds = %if.then18, %if.end10.if.end29_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rxmcs_lock) #20
  %phy_lock = getelementptr i8, ptr %netdev, i32 2732
  tail call void @_raw_spin_lock_bh(ptr noundef %phy_lock) #20
  %dev = getelementptr i8, ptr %netdev, i32 2308
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %mii_if = getelementptr i8, ptr %netdev, i32 2316
  %28 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mii_if, align 4
  %call31 = tail call i32 @jme_mdio_read(ptr noundef %27, i32 noundef %29, i32 noundef 4)
  %and32 = and i32 %call31, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %cmp33 = icmp ne i32 %and32, 0
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 1
  %30 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp35 = icmp ne i32 %31, 0
  %xor3777 = xor i1 %cmp33, %cmp35
  br i1 %xor3777, label %if.then39, label %if.end29.if.end50_crit_edge

if.end29.if.end50_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  %and45 = and i32 %call31, -3073
  %masksel84 = select i1 %cmp35, i32 3072, i32 0
  %val.0 = or i32 %masksel84, %and45
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mii_if, align 4
  tail call void @jme_mdio_write(ptr noundef %33, i32 noundef %35, i32 noundef 4, i32 noundef %val.0)
  br label %if.end50

if.end50:                                         ; preds = %if.then39, %if.end29.if.end50_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %phy_lock) #20
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_shutdown_nic(ptr nocapture noundef readonly %jme) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %mii_if.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 3
  %2 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_if.i, align 4
  %call.i = tail call i32 @jme_mdio_read(ptr noundef %1, i32 noundef %3, i32 noundef 17) #20
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii_if.i, align 4
  %call4.i = tail call i32 @jme_mdio_read(ptr noundef %5, i32 noundef %7, i32 noundef 1) #20
  %and = and i32 %call.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %regs.i.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1061346) #20, !srcloc !224
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %11, i32 2092
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %14, i32 2092
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 2164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777471) #20, !srcloc !224
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %19, i32 2164
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_stop_pcc_timer(ptr nocapture noundef readonly %jme) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #20, !srcloc !224
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %3, i32 2048
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jme_check_link(ptr noundef %netdev, i32 noundef %testonly) unnamed_addr #2 align 64 {
entry:
  %linkmsg = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %linkmsg) #20
  %0 = getelementptr inbounds i8, ptr %linkmsg, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %2 = ptrtoint ptr %linkmsg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %linkmsg, align 1
  %fpgaver = getelementptr i8, ptr %netdev, i32 3064
  %3 = ptrtoint ptr %fpgaver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fpgaver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr i8, ptr %netdev, i32 2308
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %mii_if.i = getelementptr i8, ptr %netdev, i32 2316
  %7 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mii_if.i, align 4
  %call.i = tail call i32 @jme_mdio_read(ptr noundef %6, i32 noundef %8, i32 noundef 17) #20
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mii_if.i, align 4
  %call4.i = tail call i32 @jme_mdio_read(ptr noundef %10, i32 noundef %12, i32 noundef 1) #20
  %and.i = shl i32 %call4.i, 4
  %13 = and i32 %and.i, 512
  %14 = or i32 %13, %call.i
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %regs.i = getelementptr i8, ptr %netdev, i32 2312
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr.i189 = getelementptr i8, ptr %16, i32 1072
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #20, !srcloc !221
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %phylink.0 = phi i32 [ %14, %if.then ], [ %18, %if.else ]
  %and = and i32 %phylink.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else109, label %if.then4

if.then4:                                         ; preds = %if.end
  %and5 = and i32 %phylink.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then7, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then4
  %and21216 = and i32 %phylink.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21216)
  %tobool22.not217 = icmp eq i32 %and21216, 0
  br i1 %tobool22.not217, label %land.rhs.lr.ph, label %while.cond.preheader.if.end34_crit_edge

while.cond.preheader.if.end34_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %dev.i190 = getelementptr i8, ptr %netdev, i32 2308
  %mii_if.i191 = getelementptr i8, ptr %netdev, i32 2316
  %regs.i195 = getelementptr i8, ptr %netdev, i32 2312
  br label %while.body

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  %dev = getelementptr i8, ptr %netdev, i32 2308
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %mii_if = getelementptr i8, ptr %netdev, i32 2316
  %21 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mii_if, align 4
  %call8 = tail call i32 @jme_mdio_read(ptr noundef %20, i32 noundef %22, i32 noundef 0)
  %23 = and i32 %call8, 8256
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %23)
  %24 = icmp eq i32 %23, 64
  %and12 = shl i32 %call8, 1
  %25 = and i32 %and12, 16384
  %phi.bo = or i32 %25, 1024
  %cond14 = select i1 %24, i32 33792, i32 %phi.bo
  %and15 = shl i32 %call8, 5
  %26 = and i32 %and15, 8192
  %or18 = or i32 %cond14, %26
  %strlen = call i32 @strlen(ptr noundef nonnull %linkmsg) #27
  %endptr = getelementptr i8, ptr %linkmsg, i32 %strlen
  %27 = call ptr @memcpy(ptr %endptr, ptr @.str.69, i32 9)
  br label %if.end37

land.rhs:                                         ; preds = %if.end30
  %dec = add nsw i32 %dec223, -1
  %tobool23.not = icmp eq i32 %dec, 0
  br i1 %tobool23.not, label %do.end.critedge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.lr.ph
  %dec223 = phi i32 [ 499, %land.rhs.lr.ph ], [ %dec, %land.rhs.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #20
  %29 = ptrtoint ptr %fpgaver to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fpgaver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25.not = icmp eq i32 %30, 0
  br i1 %tobool25.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  %31 = ptrtoint ptr %dev.i190 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i190, align 4
  %33 = ptrtoint ptr %mii_if.i191 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mii_if.i191, align 4
  %call.i192 = tail call i32 @jme_mdio_read(ptr noundef %32, i32 noundef %34, i32 noundef 17) #20
  %35 = ptrtoint ptr %dev.i190 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i190, align 4
  %37 = ptrtoint ptr %mii_if.i191 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mii_if.i191, align 4
  %call4.i193 = tail call i32 @jme_mdio_read(ptr noundef %36, i32 noundef %38, i32 noundef 1) #20
  %and.i194 = shl i32 %call4.i193, 4
  %39 = and i32 %and.i194, 512
  %40 = or i32 %39, %call.i192
  br label %if.end30

if.else28:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  %41 = ptrtoint ptr %regs.i195 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i195, align 8
  %add.ptr.i196 = getelementptr i8, ptr %42, i32 1072
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #20, !srcloc !221
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  %phylink.2 = phi i32 [ %40, %if.then26 ], [ %44, %if.else28 ]
  %and21 = and i32 %phylink.2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.rhs, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #23
  br label %if.end34

if.end34:                                         ; preds = %do.end.critedge, %if.end30.if.end34_crit_edge, %while.cond.preheader.if.end34_crit_edge
  %phylink.1215 = phi i32 [ %phylink.2, %do.end.critedge ], [ %phylink.0, %while.cond.preheader.if.end34_crit_edge ], [ %phylink.2, %if.end30.if.end34_crit_edge ]
  %strlen187 = call i32 @strlen(ptr noundef nonnull %linkmsg) #27
  %endptr188 = getelementptr i8, ptr %linkmsg, i32 %strlen187
  %45 = call ptr @memcpy(ptr %endptr188, ptr @.str.72, i32 7)
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %if.then7
  %phylink.3 = phi i32 [ %phylink.1215, %if.end34 ], [ %or18, %if.then7 ]
  %phylink38 = getelementptr i8, ptr %netdev, i32 3036
  %46 = ptrtoint ptr %phylink38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %phylink38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %phylink.3)
  %cmp39 = icmp eq i32 %47, %phylink.3
  br i1 %cmp39, label %if.end37.out_crit_edge, label %if.end41

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %testonly)
  %tobool42.not = icmp eq i32 %testonly, 0
  br i1 %tobool42.not, label %if.end44, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end44:                                         ; preds = %if.end41
  %48 = ptrtoint ptr %phylink38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %phylink.3, ptr %phylink38, align 4
  %49 = trunc i32 %phylink.3 to i16
  %trunc = and i16 %49, -16384
  %50 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %trunc, label %if.end44.sw.epilog_crit_edge [
    i16 0, label %sw.bb
    i16 16384, label %sw.bb50
    i16 -32768, label %sw.bb55
  ]

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22
  %reg_ghc = getelementptr i8, ptr %netdev, i32 3024
  %51 = ptrtoint ptr %reg_ghc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_ghc, align 8
  %or47 = or i32 %52, 16
  store i32 %or47, ptr %reg_ghc, align 8
  %strlen185 = call i32 @strlen(ptr noundef nonnull %linkmsg) #27
  %endptr186 = getelementptr i8, ptr %linkmsg, i32 %strlen185
  %53 = call ptr @memcpy(ptr %endptr186, ptr @.str.73, i32 10)
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22
  %reg_ghc51 = getelementptr i8, ptr %netdev, i32 3024
  %54 = ptrtoint ptr %reg_ghc51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg_ghc51, align 8
  %or52 = or i32 %55, 32
  store i32 %or52, ptr %reg_ghc51, align 8
  %strlen183 = call i32 @strlen(ptr noundef nonnull %linkmsg) #27
  %endptr184 = getelementptr i8, ptr %linkmsg, i32 %strlen183
  %56 = call ptr @memcpy(ptr %endptr184, ptr @.str.74, i32 11)
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22
  %reg_ghc56 = getelementptr i8, ptr %netdev, i32 3024
  %57 = ptrtoint ptr %reg_ghc56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reg_ghc56, align 8
  %or57 = or i32 %58, 48
  store i32 %or57, ptr %reg_ghc56, align 8
  %strlen178 = call i32 @strlen(ptr noundef nonnull %linkmsg) #27
  %endptr179 = getelementptr i8, ptr %linkmsg, i32 %strlen178
  %59 = call ptr @memcpy(ptr %endptr179, ptr @.str.75, i32 12)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb55, %sw.bb50, %sw.bb, %if.end44.sw.epilog_crit_edge
  %and60 = and i32 %phylink.3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20
  tail call void @arm_heavy_mb() #20
  %regs.i202 = getelementptr i8, ptr %netdev, i32 2312
  %60 = ptrtoint ptr %regs.i202 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i202, align 8
  %add.ptr.i203 = getelementptr i8, ptr %61, i32 20
  br i1 %tobool61.not, label %if.else65, label %if.then62

if.then62:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i203, i32 587399264) #20, !srcloc !224
  %62 = ptrtoint ptr %regs.i202 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i202, align 8
  %add.ptr2.i = getelementptr i8, ptr %63, i32 20
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %65 = ptrtoint ptr %regs.i202 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i202, align 8
  %add.ptr.i200 = getelementptr i8, ptr %66, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 0) #20, !srcloc !224
  %67 = ptrtoint ptr %regs.i202 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i202, align 8
  %add.ptr2.i201 = getelementptr i8, ptr %68, i32 28
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i201) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %reg_ghc63 = getelementptr i8, ptr %netdev, i32 3024
  %70 = ptrtoint ptr %reg_ghc63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reg_ghc63, align 8
  %or64 = or i32 %71, 64
  store i32 %or64, ptr %reg_ghc63, align 8
  br label %if.end66

if.else65:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i203, i32 1057161312) #20, !srcloc !224
  %72 = ptrtoint ptr %regs.i202 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i202, align 8
  %add.ptr2.i204 = getelementptr i8, ptr %73, i32 20
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i204) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %75 = ptrtoint ptr %regs.i202 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i202, align 8
  %add.ptr.i206 = getelementptr i8, ptr %76, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 -2013257600) #20, !srcloc !224
  %77 = ptrtoint ptr %regs.i202 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i202, align 8
  %add.ptr2.i207 = getelementptr i8, ptr %78, i32 28
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i207) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then62
  %reg_ghc67 = getelementptr i8, ptr %netdev, i32 3024
  %80 = ptrtoint ptr %reg_ghc67 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %reg_ghc67, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #20
  %regs.i208 = getelementptr i8, ptr %netdev, i32 2312
  %83 = ptrtoint ptr %regs.i208 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i208, align 8
  %add.ptr.i209 = getelementptr i8, ptr %84, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 %82) #20, !srcloc !224
  %85 = ptrtoint ptr %regs.i208 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i208, align 8
  %add.ptr2.i210 = getelementptr i8, ptr %86, i32 84
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i210) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %device, align 2
  %chiprev = getelementptr i8, ptr %netdev, i32 3068
  %92 = ptrtoint ptr %chiprev to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %chiprev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 592, i16 %91)
  %cmp.i = icmp ne i16 %91, 592
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %93)
  %cmp3.i = icmp ne i8 %93, 17
  %tobool69.not = or i1 %cmp.i, %cmp3.i
  br i1 %tobool69.not, label %if.end66.if.end88_crit_edge, label %if.then70

if.end66.if.end88_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88

if.then70:                                        ; preds = %if.end66
  %reg_gpreg1 = getelementptr i8, ptr %netdev, i32 3032
  %94 = ptrtoint ptr %reg_gpreg1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %reg_gpreg1, align 8
  %and71 = and i32 %95, -97
  %or76 = or i32 %and71, 64
  %spec.select = select i1 %tobool61.not, i32 %or76, i32 %and71
  store i32 %spec.select, ptr %reg_gpreg1, align 8
  %96 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %trunc, label %if.then70.if.end88_crit_edge [
    i16 0, label %sw.bb79
    i16 16384, label %sw.bb82
    i16 -32768, label %sw.bb85
  ]

if.then70.if.end88_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88

sw.bb79:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @jme_set_phyfifo_8level(ptr noundef %add.ptr.i)
  %97 = ptrtoint ptr %reg_gpreg1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reg_gpreg1, align 8
  %or81 = or i32 %98, 32
  store i32 %or81, ptr %reg_gpreg1, align 8
  br label %if.end88

sw.bb82:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @jme_set_phyfifo_5level(ptr noundef %add.ptr.i)
  %99 = ptrtoint ptr %reg_gpreg1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %reg_gpreg1, align 8
  %or84 = or i32 %100, 32
  store i32 %or84, ptr %reg_gpreg1, align 8
  br label %if.end88

sw.bb85:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @jme_set_phyfifo_8level(ptr noundef %add.ptr.i)
  br label %if.end88

if.end88:                                         ; preds = %sw.bb85, %sw.bb82, %sw.bb79, %if.then70.if.end88_crit_edge, %if.end66.if.end88_crit_edge
  %reg_gpreg189 = getelementptr i8, ptr %netdev, i32 3032
  %101 = ptrtoint ptr %reg_gpreg189 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %reg_gpreg189, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #20
  %104 = ptrtoint ptr %regs.i208 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i208, align 8
  %add.ptr.i212 = getelementptr i8, ptr %105, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 %103) #20, !srcloc !224
  %106 = ptrtoint ptr %regs.i208 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i208, align 8
  %add.ptr2.i213 = getelementptr i8, ptr %107, i32 2060
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i213) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  %cond93 = select i1 %tobool61.not, ptr @.str.77, ptr @.str.76
  %strlen180 = call i32 @strlen(ptr noundef nonnull %linkmsg) #27
  %endptr181 = getelementptr i8, ptr %linkmsg, i32 %strlen180
  %109 = call ptr @memcpy(ptr %endptr181, ptr %cond93, i32 14)
  %and96 = and i32 %phylink.3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %cond98 = select i1 %tobool97.not, ptr @.str.79, ptr @.str.78
  %call99 = call ptr @strcat(ptr noundef nonnull %linkmsg, ptr noundef nonnull %cond98)
  %msg_enable = getelementptr i8, ptr %netdev, i32 3072
  %110 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %msg_enable, align 8
  %and101 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end88.do.end108_crit_edge, label %if.then103

if.end88.do.end108_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end108

if.then103:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #22
  %dev104 = getelementptr i8, ptr %netdev, i32 2308
  %112 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev104, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %113, ptr noundef nonnull @.str.80, ptr noundef nonnull %linkmsg) #23
  br label %do.end108

do.end108:                                        ; preds = %if.then103, %if.end88.do.end108_crit_edge
  call void @netif_carrier_on(ptr noundef %netdev) #20
  br label %out

if.else109:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %testonly)
  %tobool110.not = icmp eq i32 %testonly, 0
  br i1 %tobool110.not, label %do.body113, label %if.else109.out_crit_edge

if.else109.out_crit_edge:                         ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

do.body113:                                       ; preds = %if.else109
  %msg_enable114 = getelementptr i8, ptr %netdev, i32 3072
  %114 = ptrtoint ptr %msg_enable114 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %msg_enable114, align 8
  %and115 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body113.do.end121_crit_edge, label %if.then117

do.body113.do.end121_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end121

if.then117:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #22
  %dev118 = getelementptr i8, ptr %netdev, i32 2308
  %116 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev118, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %117, ptr noundef nonnull @.str.81) #23
  br label %do.end121

do.end121:                                        ; preds = %if.then117, %do.body113.do.end121_crit_edge
  %phylink122 = getelementptr i8, ptr %netdev, i32 3036
  %118 = ptrtoint ptr %phylink122 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %phylink122, align 4
  tail call void @netif_carrier_off(ptr noundef %netdev) #20
  br label %out

out:                                              ; preds = %do.end121, %if.else109.out_crit_edge, %do.end108, %if.end41.out_crit_edge, %if.end37.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end41.out_crit_edge ], [ 0, %do.end108 ], [ 0, %if.else109.out_crit_edge ], [ 0, %do.end121 ], [ 1, %if.end37.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %linkmsg) #20
  ret i32 %rc.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_set_phyfifo_8level(ptr nocapture noundef readonly %jme) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %dev = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mii_if = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 3
  %2 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_if, align 4
  %shl.i.i = shl i32 %3, 6
  %and.i.i = and i32 %shl.i.i, 1984
  %or4.i = or i32 %and.i.i, 55344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %4 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #20
  %regs.i.i = getelementptr i8, ptr %1, i32 2312
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %4) #20, !srcloc !224
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.027.i = phi i32 [ 5000, %entry ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #20
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %14 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7.i = icmp eq i32 %14, 0
  br i1 %cmp7.i, label %for.body.i.jme_mdio_write.exit_crit_edge, label %for.inc.i

for.body.i.jme_mdio_write.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %jme_mdio_write.exit

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.027.i, -1
  %cmp.i = icmp ugt i32 %i.027.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end12.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

do.end12.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %3, i32 noundef 27) #23
  br label %jme_mdio_write.exit

jme_mdio_write.exit:                              ; preds = %do.end12.i, %for.body.i.jme_mdio_write.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jme_powersave_phy(ptr nocapture noundef readonly %jme) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_pmcs = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 20
  %0 = ptrtoint ptr %reg_pmcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_pmcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %jme to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jme, align 8
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.else_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  tail call fastcc void @jme_phy_on(ptr noundef %jme) #20
  %dev.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %mii_if.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 3
  %9 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mii_if.i, align 4
  %call.i = tail call i32 @jme_mdio_read(ptr noundef %8, i32 noundef %10, i32 noundef 0) #20
  %and.i = and i32 %call.i, -12609
  %or.i = or i32 %and.i, 8192
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %or.i)
  %cmp.not.i = icmp eq i32 %call.i, %or.i
  br i1 %cmp.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mii_if.i, align 4
  %shl.i.i = shl i32 %or.i, 16
  %shl.i.i.i = shl i32 %14, 6
  %and.i.i.i = and i32 %shl.i.i.i, 1984
  %or.i.i = or i32 %and.i.i.i, %shl.i.i
  %or4.i.i = or i32 %or.i.i, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %15 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #20
  %regs.i.i.i = getelementptr i8, ptr %12, i32 2312
  %16 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i22.i.i = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %15) #20, !srcloc !224
  %18 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %19, i32 80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !226
  tail call void @arm_heavy_mb() #20
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.027.i.i = phi i32 [ 5000, %if.then.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 4294960) #20
  %22 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i24.i.i = getelementptr i8, ptr %23, i32 80
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %25 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.i.i = icmp eq i32 %25, 0
  br i1 %cmp7.i.i, label %for.body.i.i.if.end.i_crit_edge, label %for.inc.i.i

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %i.027.i.i, -1
  %cmp.i.i = icmp ugt i32 %i.027.i.i, 1
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %do.end12.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

do.end12.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %14, i32 noundef 0) #23
  br label %if.end.i

if.end.i:                                         ; preds = %do.end12.i.i, %for.body.i.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %fpgaver.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 29
  %26 = ptrtoint ptr %fpgaver.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fpgaver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i11 = icmp eq i32 %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20
  tail call void @arm_heavy_mb() #20
  %regs.i16.i = getelementptr inbounds %struct.jme_adapter, ptr %jme, i32 0, i32 2
  %28 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %29, i32 84
  br i1 %tobool.not.i11, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 553648128) #20, !srcloc !224
  %30 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %31, i32 84
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %jme_set_100m_half.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 536870912) #20, !srcloc !224
  %33 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr2.i18.i = getelementptr i8, ptr %34, i32 84
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %jme_set_100m_half.exit

jme_set_100m_half.exit:                           ; preds = %if.else.i, %if.then4.i
  %36 = ptrtoint ptr %reg_pmcs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_pmcs, align 4
  %and = and i32 %37, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %jme_set_100m_half.exit.if.end_crit_edge, label %if.then3

jme_set_100m_half.exit.if.end_crit_edge:          ; preds = %jme_set_100m_half.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then3:                                         ; preds = %jme_set_100m_half.exit
  tail call void @msleep(i32 noundef 1000) #20
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mii_if.i, align 4
  %call.i.i = tail call i32 @jme_mdio_read(ptr noundef %39, i32 noundef %41, i32 noundef 17) #20
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %44 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mii_if.i, align 4
  %call4.i.i = tail call i32 @jme_mdio_read(ptr noundef %43, i32 noundef %45, i32 noundef 1) #20
  %and8.i = and i32 %call.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not9.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not9.i, label %if.then3.land.rhs.i13_crit_edge, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then3.land.rhs.i13_crit_edge:                  ; preds = %if.then3
  br label %land.rhs.i13

land.rhs.i13:                                     ; preds = %while.body.i.land.rhs.i13_crit_edge, %if.then3.land.rhs.i13_crit_edge
  %to.010.i = phi i32 [ %sub.i, %while.body.i.land.rhs.i13_crit_edge ], [ 2000, %if.then3.land.rhs.i13_crit_edge ]
  %sub.i = add nsw i32 %to.010.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i12 = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i12, label %land.rhs.i13.if.end_crit_edge, label %while.body.i

land.rhs.i13.if.end_crit_edge:                    ; preds = %land.rhs.i13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

while.body.i:                                     ; preds = %land.rhs.i13
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %48 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mii_if.i, align 4
  %call.i5.i = tail call i32 @jme_mdio_read(ptr noundef %47, i32 noundef %49, i32 noundef 17) #20
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %52 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mii_if.i, align 4
  %call4.i6.i = tail call i32 @jme_mdio_read(ptr noundef %51, i32 noundef %53, i32 noundef 1) #20
  %and.i14 = and i32 %call.i5.i, 1024
  %tobool.not.i15 = icmp eq i32 %and.i14, 0
  br i1 %tobool.not.i15, label %while.body.i.land.rhs.i13_crit_edge, label %while.body.i.if.end_crit_edge

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

while.body.i.land.rhs.i13_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs.i13

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %land.rhs.i13.if.end_crit_edge, %if.then3.if.end_crit_edge, %jme_set_100m_half.exit.if.end_crit_edge
  %54 = ptrtoint ptr %reg_pmcs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg_pmcs, align 4
  %or.i16 = or i32 %55, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i16) #20
  %57 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %56) #20, !srcloc !224
  %59 = ptrtoint ptr %regs.i16.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i16.i, align 8
  %add.ptr2.i.i17 = getelementptr i8, ptr %60, i32 96
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i17) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  br label %if.end4

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call fastcc void @jme_phy_off(ptr noundef %jme)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_pme_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_changing = getelementptr i8, ptr %1, i32 3188
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_changing, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %link_changing, i32 1, i32 3, i32 1) #20
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %link_changing, ptr %link_changing, i32 1, ptr elementtype(i32) %link_changing) #20, !srcloc !227
  tail call void @netif_device_detach(ptr noundef %1) #20
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !235
  tail call void @arm_heavy_mb() #20
  %regs.i.i = getelementptr i8, ptr %1, i32 2312
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1061346) #20, !srcloc !224
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %10, i32 2092
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !236
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %13, i32 2092
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !237
  %txclean_task = getelementptr i8, ptr %1, i32 2912
  %count.i.i = getelementptr i8, ptr %1, i32 2920
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #20
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #20, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !239
  tail call void @tasklet_unlock_wait(ptr noundef %txclean_task) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !240
  %rxclean_task = getelementptr i8, ptr %1, i32 2888
  %count.i.i35 = getelementptr i8, ptr %1, i32 2896
  %call.i.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i35, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i35, i32 1, i32 3, i32 1) #20
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i35, ptr %count.i.i35, i32 1, ptr elementtype(i32) %count.i.i35) #20, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !239
  tail call void @tasklet_unlock_wait(ptr noundef %rxclean_task) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !240
  %rxempty_task = getelementptr i8, ptr %1, i32 2864
  %count.i.i37 = getelementptr i8, ptr %1, i32 2872
  %call.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i37, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i37, i32 1, i32 3, i32 1) #20
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i37, ptr %count.i.i37, i32 1, ptr elementtype(i32) %count.i.i37) #20, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !239
  tail call void @tasklet_unlock_wait(ptr noundef %rxempty_task) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !240
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %flags = getelementptr i8, ptr %1, i32 3004
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %if.then4.if.end7_crit_edge, label %if.then6

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then6:                                         ; preds = %if.then4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #20, !srcloc !224
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %27, i32 2096
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !229
  tail call void @arm_heavy_mb() #20
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags, align 4
  %31 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %if.then6.if.end7_crit_edge

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

do.body4.i.i:                                     ; preds = %if.then6
  %msg_enable.i.i = getelementptr i8, ptr %1, i32 3072
  %32 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body4.i.i.if.end7_crit_edge, label %if.then6.i.i

do.body4.i.i.if.end7_crit_edge:                   ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then6.i.i:                                     ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i.i = getelementptr i8, ptr %1, i32 2308
  %34 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %35, ptr noundef nonnull @.str.50, i32 noundef 0) #23
  br label %if.end7

if.end7:                                          ; preds = %if.then6.i.i, %do.body4.i.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %if.then4.if.end7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i41 = getelementptr i8, ptr %37, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41, i32 0) #20, !srcloc !224
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i42 = getelementptr i8, ptr %39, i32 2048
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i42) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call fastcc void @jme_disable_rx_engine(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_disable_tx_engine(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_reset_mac_processor(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_free_rx_resources(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_free_tx_resources(ptr noundef %add.ptr.i)
  tail call void @netif_carrier_off(ptr noundef %1) #20
  %phylink = getelementptr i8, ptr %1, i32 3036
  %41 = ptrtoint ptr %phylink to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %phylink, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !247
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #20
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #20, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !247
  %call.i.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i35, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i35, i32 1, i32 3, i32 1) #20
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i35, ptr %count.i.i35, i32 1, ptr elementtype(i32) %count.i.i35) #20, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !247
  %call.i.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i37, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %count.i.i37, i32 1, i32 3, i32 1) #20
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i37, ptr %count.i.i37, i32 1, ptr elementtype(i32) %count.i.i37) #20, !srcloc !227
  tail call fastcc void @jme_powersave_phy(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jme_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %regs.i.i = getelementptr i8, ptr %1, i32 2312
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 65535) #20, !srcloc !224
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %7, i32 96
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call fastcc void @jme_phy_on(ptr noundef %add.ptr.i)
  %flags = getelementptr i8, ptr %1, i32 3004
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %old_cmd = getelementptr i8, ptr %1, i32 3076
  %call5 = tail call i32 @jme_set_link_ksettings(ptr noundef %1, ptr noundef %old_cmd)
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @jme_reset_phy_processor(ptr noundef %add.ptr.i)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  tail call fastcc void @jme_phy_calibration(ptr noundef %add.ptr.i)
  tail call fastcc void @jme_phy_setEA(ptr noundef %add.ptr.i)
  tail call void @netif_device_attach(ptr noundef %1) #20
  %link_changing = getelementptr i8, ptr %1, i32 3188
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_changing, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %link_changing, i32 1, i32 3, i32 1) #20
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %link_changing, ptr %link_changing, i32 1, ptr elementtype(i32) %link_changing) #20, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i23 = getelementptr i8, ptr %14, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 128) #20, !srcloc !224
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i24 = getelementptr i8, ptr %16, i32 2048
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i24) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !225
  tail call fastcc void @jme_start_irq(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readnone }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !28, !29, !30, !31, !32, !33, !35, !36, !38, !39, !41, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !155, !156, !157, !159, !160, !161, !163, !165, !166, !167, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !192, !193, !195, !196, !197, !198, !200, !202, !203, !204, !205, !207, !209, !210, !211}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @__param_force_pseudohp, !1, !"__param_force_pseudohp", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/jme.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_pseudohptype496, !1, !"__UNIQUE_ID_force_pseudohptype496", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_pseudohp497, !4, !"__UNIQUE_ID_force_pseudohp497", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/jme.c", i32 38, i32 1}
!5 = !{ptr @__param_no_pseudohp, !6, !"__param_no_pseudohp", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/jme.c", i32 40, i32 1}
!7 = !{ptr @__UNIQUE_ID_no_pseudohptype498, !6, !"__UNIQUE_ID_no_pseudohptype498", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_no_pseudohp499, !9, !"__UNIQUE_ID_no_pseudohp499", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/jme.c", i32 41, i32 1}
!10 = !{ptr @__param_no_extplug, !11, !"__param_no_extplug", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/jme.c", i32 42, i32 1}
!12 = !{ptr @__UNIQUE_ID_no_extplugtype500, !11, !"__UNIQUE_ID_no_extplugtype500", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_no_extplug501, !14, !"__UNIQUE_ID_no_extplug501", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/jme.c", i32 43, i32 1}
!15 = !{ptr @__initcall__kmod_jme__502_3273_jme_init_module6, !16, !"__initcall__kmod_jme__502_3273_jme_init_module6", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/jme.c", i32 3273, i32 1}
!17 = !{ptr @__exitcall_jme_cleanup_module, !18, !"__exitcall_jme_cleanup_module", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/jme.c", i32 3274, i32 1}
!19 = !{ptr @__UNIQUE_ID_author503, !20, !"__UNIQUE_ID_author503", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/jme.c", i32 3276, i32 1}
!21 = !{ptr @__UNIQUE_ID_description504, !22, !"__UNIQUE_ID_description504", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/jme.c", i32 3277, i32 1}
!23 = !{ptr @__UNIQUE_ID_file505, !24, !"__UNIQUE_ID_file505", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/jme.c", i32 3278, i32 1}
!25 = !{ptr @__UNIQUE_ID_license506, !24, !"__UNIQUE_ID_license506", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_version507, !27, !"__UNIQUE_ID_version507", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/jme.c", i32 3279, i32 1}
!28 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__modver_attr, !27, !"__modver_attr", i1 false, i1 false}
!32 = !{ptr @__param_str_force_pseudohp, !1, !"__param_str_force_pseudohp", i1 false, i1 false}
!33 = !{ptr @force_pseudohp, !34, !"force_pseudohp", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/jme.c", i32 34, i32 12}
!35 = !{ptr @__param_str_no_pseudohp, !6, !"__param_str_no_pseudohp", i1 false, i1 false}
!36 = !{ptr @no_pseudohp, !37, !"no_pseudohp", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/jme.c", i32 35, i32 12}
!38 = !{ptr @__param_str_no_extplug, !11, !"__param_str_no_extplug", i1 false, i1 false}
!39 = !{ptr @no_extplug, !40, !"no_extplug", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/jme.c", i32 36, i32 12}
!41 = !{ptr @jme_driver, !42, !"jme_driver", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/jme.c", i32 3251, i32 26}
!43 = !{ptr @jme_pci_tbl, !44, !"jme_pci_tbl", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/jme.c", i32 3245, i32 35}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/jme.c", i32 2921, i32 3}
!47 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @jme_init_one._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @jme_init_one._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/jme.c", i32 2927, i32 3}
!53 = !{ptr @jme_init_one._entry.6, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @jme_init_one._entry_ptr.8, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/jme.c", i32 2933, i32 3}
!57 = !{ptr @jme_init_one._entry.9, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @jme_init_one._entry_ptr.11, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/jme.c", i32 2940, i32 3}
!61 = !{ptr @jme_init_one._entry.12, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @jme_init_one._entry_ptr.14, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/jme.c", i32 2998, i32 3}
!65 = !{ptr @jme_init_one._entry.15, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @jme_init_one._entry_ptr.17, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @jme_init_one.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/jme.c", i32 3013, i32 2}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @jme_init_one.__key.19, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/jme.c", i32 3014, i32 2}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @jme_init_one.__key.21, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/jme.c", i32 3015, i32 2}
!75 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @jme_init_one.__key.23, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/jme.c", i32 3023, i32 2}
!78 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/jme.c", i32 3071, i32 4}
!81 = !{ptr @jme_init_one._entry.25, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @jme_init_one._entry_ptr.27, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/jme.c", i32 3103, i32 3}
!85 = !{ptr @jme_init_one._entry.28, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @jme_init_one._entry_ptr.30, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/jme.c", i32 3115, i32 3}
!89 = !{ptr @jme_init_one._entry.31, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @jme_init_one._entry_ptr.33, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/jme.c", i32 3119, i32 2}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @jme_netdev_ops, !99, !"jme_netdev_ops", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/jme.c", i32 2886, i32 36}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/jme.c", i32 1406, i32 3}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/jme.c", i32 973, i32 4}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/jme.c", i32 980, i32 4}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/jme.c", i32 986, i32 3}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/jme.c", i32 1386, i32 2}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/jme.c", i32 1629, i32 7}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/jme.c", i32 1630, i32 45}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/jme.c", i32 1630, i32 53}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/jme.h", i32 1219, i32 15}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/jme.h", i32 1222, i32 15}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/jme.c", i32 350, i32 3}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/jme.c", i32 930, i32 3}
!124 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @jme_disable_rx_engine._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @jme_disable_rx_engine._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/jme.c", i32 695, i32 3}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @jme_disable_tx_engine._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @jme_disable_tx_engine._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/jme.c", i32 2210, i32 3}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/jme.c", i32 2093, i32 4}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/jme.c", i32 2172, i32 3}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/jme.c", i32 2177, i32 4}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/jme.c", i32 2185, i32 3}
!142 = !{ptr @jme_ethtool_ops, !143, !"jme_ethtool_ops", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/jme.c", i32 2823, i32 33}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/jme.c", i32 2718, i32 3}
!146 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/jme.h", i32 1209, i32 15}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/jme.c", i32 1270, i32 3}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/jme.c", i32 1272, i32 4}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/jme.c", i32 1305, i32 4}
!154 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @jme_link_change_work._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @jme_link_change_work._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/jme.c", i32 1311, i32 4}
!159 = !{ptr @jme_link_change_work._entry.66, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @jme_link_change_work._entry_ptr.68, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/jme.c", i32 446, i32 20}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/jme.c", i32 462, i32 5}
!165 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @jme_check_link._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @jme_check_link._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/jme.c", i32 464, i32 20}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/jme.c", i32 483, i32 20}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/jme.c", i32 487, i32 20}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/jme.c", i32 491, i32 20}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/jme.c", i32 535, i32 6}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/jme.c", i32 536, i32 6}
!180 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/jme.c", i32 538, i32 6}
!182 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/jme.c", i32 539, i32 6}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/jme.c", i32 540, i32 3}
!186 = !{ptr @.str.81, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/jme.c", i32 546, i32 3}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/jme.c", i32 66, i32 3}
!190 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @jme_mdio_read._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @jme_mdio_read._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/jme.c", i32 95, i32 3}
!195 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @jme_mdio_write._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @jme_mdio_write._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = distinct !{null, !199, !"mask", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/jme.c", i32 214, i32 19}
!200 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/jme.c", i32 292, i32 4}
!202 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @jme_reload_eeprom._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @jme_reload_eeprom._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @jme_pm_ops, !206, !"jme_pm_ops", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/jme.c", i32 3237, i32 8}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/jme.c", i32 3263, i32 2}
!209 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @jme_init_module._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @jme_init_module._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{i64 5053119}
!222 = !{i64 2157974203}
!223 = !{i64 2157974584}
!224 = !{i64 5052701}
!225 = !{i64 2157975235}
!226 = !{i64 2157995596}
!227 = !{i64 2148415267, i64 2148415293, i64 2148415322, i64 2148415356, i64 2148415387, i64 2148415410}
!228 = !{i64 2148412802, i64 2148412828, i64 2148412857, i64 2148412891, i64 2148412922, i64 2148412945}
!229 = !{i64 2158007627}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{!"branch_weights", i32 1, i32 2000}
!232 = !{i64 2148501278}
!233 = !{i64 2148415987, i64 2148416019, i64 2148416048, i64 2148416082, i64 2148416113, i64 2148416136}
!234 = !{i64 2148501507}
!235 = !{i64 2157975616}
!236 = !{i64 2157976267}
!237 = !{i64 2157976745}
!238 = !{i64 2158030402}
!239 = !{i64 2153149216}
!240 = !{i64 2153149858}
!241 = !{i64 2158017519}
!242 = !{i64 2158020512}
!243 = !{i64 2158020660}
!244 = !{i64 2158013353}
!245 = !{i64 2158013501}
!246 = !{i64 2158029993}
!247 = !{i64 2153150205}
!248 = !{i64 2157993247}
!249 = !{i64 2157998298}
!250 = !{i64 2157998446}
!251 = !{i64 2157998596}
!252 = !{i64 2157998744}
!253 = !{i64 2158051680}
!254 = !{i64 7810095, i64 7810136, i64 7810181}
!255 = !{i64 7808993}
!256 = !{i64 2158051828}
!257 = !{i64 2158052039}
!258 = !{i64 2158052832}
!259 = !{i64 2158060578}
!260 = !{!"auto-init"}
!261 = !{i64 816502, i64 816563}
!262 = !{!"branch_weights", i32 4001, i32 4000000}
!263 = !{i64 819234}
!264 = !{i64 819519}
!265 = !{i64 2158039548}
!266 = !{i64 2158027373}
!267 = !{i64 2158021146}
!268 = !{i64 2158022528}
!269 = !{i64 2158013818}
!270 = !{i64 2158015200}
