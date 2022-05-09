; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/iavf/iavf_client.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/iavf/iavf_client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iavf_register_client\22, \22a\22\09"
module asm "\09.weak\09__crc_iavf_register_client\09\09\09\09"
module asm "\09.long\09__crc_iavf_register_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iavf_register_client:\09\09\09\09\09"
module asm "\09.asciz \09\22iavf_register_client\22\09\09\09\09\09"
module asm "__kstrtabns_iavf_register_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iavf_unregister_client\22, \22a\22\09"
module asm "\09.weak\09__crc_iavf_unregister_client\09\09\09\09"
module asm "\09.long\09__crc_iavf_unregister_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iavf_unregister_client:\09\09\09\09\09"
module asm "\09.asciz \09\22iavf_unregister_client\22\09\09\09\09\09"
module asm "__kstrtabns_iavf_unregister_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iavf_ops = type { ptr, ptr, ptr }
%struct.iavf_adapter = type { %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.wait_queue_head, ptr, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, [25 x i8], i32, i32, ptr, i32, i32, ptr, i64, i32, i32, i32, i32, i32, ptr, ptr, i32, i64, ptr, ptr, %struct.iavf_hw, i32, i32, i32, %struct.delayed_work, i8, i8, i32, i32, i32, ptr, ptr, %struct.virtchnl_version_info, %struct.virtchnl_vlan_caps, i16, %struct.iavf_eth_stats, %struct.iavf_vsi, i32, i64, i16, i16, ptr, ptr, %struct.iavf_channel_config, i8, %struct.list_head, %struct.spinlock, i16, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iavf_hw = type { ptr, ptr, %struct.iavf_mac_info, %struct.iavf_bus_info, i16, i16, i16, i16, i8, %struct.iavf_hw_capabilities, %struct.iavf_adminq_info, i32, [16 x i8] }
%struct.iavf_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.iavf_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.iavf_hw_capabilities = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.iavf_adminq_info = type { %struct.iavf_adminq_ring, %struct.iavf_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.iavf_adminq_ring = type { %struct.iavf_virt_mem, %struct.iavf_dma_mem, %struct.iavf_virt_mem, %union.anon.159, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.iavf_dma_mem = type { ptr, i32, i32 }
%struct.iavf_virt_mem = type { ptr, i32 }
%union.anon.159 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_vlan_caps = type { %struct.virtchnl_vlan_filtering_caps, %struct.virtchnl_vlan_offload_caps }
%struct.virtchnl_vlan_filtering_caps = type { %struct.virtchnl_vlan_supported_caps, i32, i16, [2 x i8] }
%struct.virtchnl_vlan_supported_caps = type { i32, i32 }
%struct.virtchnl_vlan_offload_caps = type { %struct.virtchnl_vlan_supported_caps, %struct.virtchnl_vlan_supported_caps, i32, i8, [3 x i8] }
%struct.iavf_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iavf_vsi = type { ptr, ptr, [128 x i32], [128 x i32], i16, i16, [1 x i32], i32, i16, i16, ptr }
%struct.iavf_channel_config = type { [4 x %struct.virtchnl_channel_info], i32, i8 }
%struct.virtchnl_channel_info = type { i16, i16, i32, i64 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.iavf_client_instance = type { %struct.list_head, %struct.iavf_info, ptr, i32 }
%struct.iavf_info = type { %struct.iavf_client_version, [6 x i8], ptr, ptr, ptr, i8, i8, ptr, %struct.iavf_params, ptr, i16, ptr, i16 }
%struct.iavf_client_version = type { i8, i8, i8, i8 }
%struct.iavf_params = type { %struct.iavf_qos_params, i16, i16 }
%struct.iavf_qos_params = type { [8 x %struct.iavf_prio_qos_params] }
%struct.iavf_prio_qos_params = type { i16, i8, i8 }
%struct.iavf_client = type { %struct.list_head, [10 x i8], %struct.iavf_client_version, i32, %struct.atomic_t, i32, i8, ptr }
%struct.iavf_client_ops = type { ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.158, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.158 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.iavf_device = type { %struct.list_head, ptr }
%struct.iavf_qvlist_info = type { i32, [1 x %struct.iavf_qv_info] }
%struct.iavf_qv_info = type { i32, i16, i16, i8 }

@iavf_notify_client_message.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iavf\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iavf_notify_client_message\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/iavf/iavf_client.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Cannot locate client instance virtchnl_receive function\0A\00", [39 x i8] zeroinitializer }, align 32
@iavf_notify_client_l2_params.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iavf_notify_client_l2_params\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Cannot locate client instance l2_param_change function\0A\00", [40 x i8] zeroinitializer }, align 32
@iavf_notify_client_open.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iavf_notify_client_open\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot locate client instance open function\0A\00", [51 x i8] zeroinitializer }, align 32
@iavf_notify_client_close.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iavf_notify_client_close\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot locate client instance close function\0A\00", [50 x i8] zeroinitializer }, align 32
@vf_registered_client = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iavf_client_subtask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 270, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Added instance of Client %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iavf_client_subtask\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iavf_client_subtask._entry_ptr = internal global ptr @iavf_client_subtask._entry, section ".printk_index", align 4
@iavf_device_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iavf_device_mutex, i64 52), ptr getelementptr (i8, ptr @iavf_device_mutex, i64 52) }, ptr @iavf_device_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.47, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@iavf_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @iavf_devices, ptr @iavf_devices }, [24 x i8] zeroinitializer }, align 32
@iavf_lan_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 314, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Added LAN device bus=0x%02x dev=0x%02x func=0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iavf_lan_add_device\00", [44 x i8] zeroinitializer }, align 32
@iavf_lan_add_device._entry_ptr = internal global ptr @iavf_lan_add_device._entry, section ".printk_index", align 4
@iavf_lan_del_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 343, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Deleted LAN device bus=0x%02x dev=0x%02x func=0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iavf_lan_del_device\00", [44 x i8] zeroinitializer }, align 32
@iavf_lan_del_device._entry_ptr = internal global ptr @iavf_lan_del_device._entry, section ".printk_index", align 4
@iavf_register_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016iavf: Failed to register client with no name\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iavf_register_client\00", [43 x i8] zeroinitializer }, align 32
@iavf_register_client._entry_ptr = internal global ptr @iavf_register_client._entry, section ".printk_index", align 4
@iavf_register_client._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016iavf: Client %s has already been registered!\0A\00", [48 x i8] zeroinitializer }, align 32
@iavf_register_client._entry_ptr.22 = internal global ptr @iavf_register_client._entry.20, section ".printk_index", align 4
@iavf_register_client._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016iavf: Failed to register client %s due to mismatched client interface version\0A\00", [47 x i8] zeroinitializer }, align 32
@iavf_register_client._entry_ptr.25 = internal global ptr @iavf_register_client._entry.23, section ".printk_index", align 4
@iavf_register_client._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016Client is using version: %02d.%02d.%02d while LAN driver supports %s\0A\00", [56 x i8] zeroinitializer }, align 32
@iavf_register_client._entry_ptr.28 = internal global ptr @iavf_register_client._entry.26, section ".printk_index", align 4
@iavf_client_interface_version_str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.01.00\00", [24 x i8] zeroinitializer }, align 32
@iavf_register_client._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016iavf: Registered client %s with return code %d\0A\00", [46 x i8] zeroinitializer }, align 32
@iavf_register_client._entry_ptr.31 = internal global ptr @iavf_register_client._entry.29, section ".printk_index", align 4
@__kstrtab_iavf_register_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_iavf_register_client = external dso_local constant [0 x i8], align 1
@__ksymtab_iavf_register_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iavf_register_client to i32), ptr @__kstrtab_iavf_register_client, ptr @__kstrtabns_iavf_register_client }, section "___ksymtab+iavf_register_client", align 4
@iavf_unregister_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016iavf: Client %s has not been registered\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iavf_unregister_client\00", [41 x i8] zeroinitializer }, align 32
@iavf_unregister_client._entry_ptr = internal global ptr @iavf_unregister_client._entry, section ".printk_index", align 4
@iavf_unregister_client._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016iavf: Unregistered client %s\0A\00", [32 x i8] zeroinitializer }, align 32
@iavf_unregister_client._entry_ptr.36 = internal global ptr @iavf_unregister_client._entry.34, section ".printk_index", align 4
@__kstrtab_iavf_unregister_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_iavf_unregister_client = external dso_local constant [0 x i8], align 1
@__ksymtab_iavf_unregister_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iavf_unregister_client to i32), ptr @__kstrtab_iavf_unregister_client, ptr @__kstrtabns_iavf_unregister_client }, section "___ksymtab+iavf_unregister_client", align 4
@iavf_client_release_qvlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 150, ptr @.str.39, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Unable to send iWarp vector release message to PF, error %d, aq status %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iavf_client_release_qvlist\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@iavf_client_release_qvlist._entry_ptr = internal global ptr @iavf_client_release_qvlist._entry, section ".printk_index", align 4
@iavf_lan_ops = internal global { %struct.iavf_ops, [20 x i8] } { %struct.iavf_ops { ptr @iavf_client_setup_qvlist, ptr @iavf_client_virtchnl_send, ptr null }, [20 x i8] zeroinitializer }, align 32
@iavf_client_add_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 227, ptr @.str.39, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MAC address list is empty!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iavf_client_add_instance\00", [39 x i8] zeroinitializer }, align 32
@iavf_client_add_instance._entry_ptr = internal global ptr @iavf_client_add_instance._entry, section ".printk_index", align 4
@iavf_client_setup_qvlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 483, ptr @.str.39, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Unable to send iWarp vector config message to PF, error %d, aq status %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iavf_client_setup_qvlist\00", [39 x i8] zeroinitializer }, align 32
@iavf_client_setup_qvlist._entry_ptr = internal global ptr @iavf_client_setup_qvlist._entry, section ".printk_index", align 4
@iavf_client_virtchnl_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 432, ptr @.str.39, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Unable to send iWarp message to PF, error %d, aq status %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iavf_client_virtchnl_send\00", [38 x i8] zeroinitializer }, align 32
@iavf_client_virtchnl_send._entry_ptr = internal global ptr @iavf_client_virtchnl_send._entry, section ".printk_index", align 4
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iavf_device_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iavf_device_mutex\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iavf_client_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 380, ptr @.str.50, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Client %s instance closed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iavf_client_release\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@iavf_client_release._entry_ptr = internal global ptr @iavf_client_release._entry, section ".printk_index", align 4
@iavf_client_release._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.2, i32 385, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Deleted client instance of Client %s\0A\00", [58 x i8] zeroinitializer }, align 32
@iavf_client_release._entry_ptr.53 = internal global ptr @iavf_client_release._entry.51, section ".printk_index", align 4
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 68, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 94, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 118, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 169, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"vf_registered_client\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 13, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 269, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"iavf_device_mutex\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"iavf_devices\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 14, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 312, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 340, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 516, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 522, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 530, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 532, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [34 x i8] c"iavf_client_interface_version_str\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 12, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 544, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 568, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 574, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 148, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [13 x i8] c"iavf_lan_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 25, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 227, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 481, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 431, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 15, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 379, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [49 x i8] c"../drivers/net/ethernet/intel/iavf/iavf_client.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 384, i32 3 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__ksymtab_iavf_register_client, ptr @__ksymtab_iavf_unregister_client, ptr @iavf_client_add_instance._entry, ptr @iavf_client_add_instance._entry_ptr, ptr @iavf_client_release._entry, ptr @iavf_client_release._entry.51, ptr @iavf_client_release._entry_ptr, ptr @iavf_client_release._entry_ptr.53, ptr @iavf_client_release_qvlist._entry, ptr @iavf_client_release_qvlist._entry_ptr, ptr @iavf_client_setup_qvlist._entry, ptr @iavf_client_setup_qvlist._entry_ptr, ptr @iavf_client_subtask._entry, ptr @iavf_client_subtask._entry_ptr, ptr @iavf_client_virtchnl_send._entry, ptr @iavf_client_virtchnl_send._entry_ptr, ptr @iavf_lan_add_device._entry, ptr @iavf_lan_add_device._entry_ptr, ptr @iavf_lan_del_device._entry, ptr @iavf_lan_del_device._entry_ptr, ptr @iavf_register_client._entry, ptr @iavf_register_client._entry.20, ptr @iavf_register_client._entry.23, ptr @iavf_register_client._entry.26, ptr @iavf_register_client._entry.29, ptr @iavf_register_client._entry_ptr, ptr @iavf_register_client._entry_ptr.22, ptr @iavf_register_client._entry_ptr.25, ptr @iavf_register_client._entry_ptr.28, ptr @iavf_register_client._entry_ptr.31, ptr @iavf_unregister_client._entry, ptr @iavf_unregister_client._entry.34, ptr @iavf_unregister_client._entry_ptr, ptr @iavf_unregister_client._entry_ptr.36, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @vf_registered_client, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @iavf_device_mutex, ptr @iavf_devices, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @iavf_client_interface_version_str, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @iavf_lan_ops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf_registered_client to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_client_subtask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_device_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_lan_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_lan_del_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_register_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_register_client._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_register_client._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_register_client._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_client_interface_version_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_register_client._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_unregister_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_unregister_client._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_client_release_qvlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_lan_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_client_add_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_client_setup_qvlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_client_virtchnl_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_client_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_client_release._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_notify_client_message(ptr noundef readonly %vsi, ptr noundef %msg, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vsi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %cinst1 = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %cinst1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cinst1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %client = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.iavf_client, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false4.do.body_crit_edge, label %lor.lhs.false7

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %virtchnl_receive = getelementptr inbounds %struct.iavf_client_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %virtchnl_receive to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virtchnl_receive, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end18

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %lor.lhs.false4.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_notify_client_message.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_notify_client_message, %if.then15)) #6
          to label %cleanup [label %if.then15], !srcloc !121

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vsi, align 4
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %11, i32 0, i32 28
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_notify_client_message.__UNIQUE_ID_ddebug526, ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  %lan_info = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 1
  %call23 = tail call i32 %9(ptr noundef %lan_info, ptr noundef nonnull %5, ptr noundef %msg, i16 noundef zeroext %len) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then15, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_notify_client_l2_params(ptr noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.iavf_params, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %params) #6
  %0 = call ptr @memset(ptr %params, i32 255, i32 36)
  %tobool.not = icmp eq ptr %vsi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vsi, align 4
  %cinst1 = getelementptr inbounds %struct.iavf_adapter, ptr %2, i32 0, i32 23
  %3 = ptrtoint ptr %cinst1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cinst1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %client = getelementptr inbounds %struct.iavf_client_instance, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.iavf_client, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %lor.lhs.false4.do.body_crit_edge, label %lor.lhs.false7

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %l2_param_change = getelementptr inbounds %struct.iavf_client_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %l2_param_change to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %l2_param_change, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end18

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %lor.lhs.false4.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_notify_client_l2_params.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_notify_client_l2_params, %if.then15)) #6
          to label %cleanup [label %if.then15], !srcloc !121

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vsi, align 4
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %12, i32 0, i32 28
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_notify_client_l2_params.__UNIQUE_ID_ddebug527, ptr noundef %dev, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  %15 = getelementptr inbounds i8, ptr %params, i32 2
  %16 = call ptr @memset(ptr %15, i32 0, i32 30)
  %netdev.i = getelementptr inbounds %struct.iavf_vsi, ptr %vsi, i32 0, i32 1
  %17 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mtu.i, align 4
  %conv.i = trunc i32 %20 to i16
  %mtu1.i = getelementptr inbounds %struct.iavf_params, ptr %params, i32 0, i32 1
  %21 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %mtu1.i, align 2
  %link_up.i = getelementptr inbounds %struct.iavf_adapter, ptr %2, i32 0, i32 35
  %22 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %link_up.i, align 1, !range !122
  %24 = zext i8 %23 to i16
  %link_up3.i = getelementptr inbounds %struct.iavf_params, ptr %params, i32 0, i32 2
  %25 = ptrtoint ptr %link_up3.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %link_up3.i, align 2
  %qs_handle.i = getelementptr inbounds %struct.iavf_vsi, ptr %vsi, i32 0, i32 9
  %26 = ptrtoint ptr %qs_handle.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %qs_handle.i, align 2
  %28 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %params, align 2
  %arrayidx.1.i = getelementptr inbounds [8 x %struct.iavf_prio_qos_params], ptr %params, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %27, ptr %arrayidx.1.i, align 2
  %arrayidx.2.i = getelementptr inbounds [8 x %struct.iavf_prio_qos_params], ptr %params, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %27, ptr %arrayidx.2.i, align 2
  %arrayidx.3.i = getelementptr inbounds [8 x %struct.iavf_prio_qos_params], ptr %params, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %27, ptr %arrayidx.3.i, align 2
  %arrayidx.4.i = getelementptr inbounds [8 x %struct.iavf_prio_qos_params], ptr %params, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %27, ptr %arrayidx.4.i, align 2
  %arrayidx.5.i = getelementptr inbounds [8 x %struct.iavf_prio_qos_params], ptr %params, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %27, ptr %arrayidx.5.i, align 2
  %arrayidx.6.i = getelementptr inbounds [8 x %struct.iavf_prio_qos_params], ptr %params, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %27, ptr %arrayidx.6.i, align 2
  %arrayidx.7.i = getelementptr inbounds [8 x %struct.iavf_prio_qos_params], ptr %params, i32 0, i32 7
  %35 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %27, ptr %arrayidx.7.i, align 2
  %lan_info = getelementptr inbounds %struct.iavf_client_instance, ptr %4, i32 0, i32 1
  %params19 = getelementptr inbounds %struct.iavf_client_instance, ptr %4, i32 0, i32 1, i32 8
  %36 = call ptr @memcpy(ptr %params19, ptr %params, i32 36)
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %l2_param_change22 = getelementptr inbounds %struct.iavf_client_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %l2_param_change22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %l2_param_change22, align 4
  call void %40(ptr noundef %lan_info, ptr noundef nonnull %6, ptr noundef nonnull %params) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then15, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %params) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_notify_client_open(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %cinst1 = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %cinst1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cinst1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %client = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false3

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.iavf_client, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false3.do.body_crit_edge, label %lor.lhs.false6

lor.lhs.false3.do.body_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %lor.lhs.false6.do.body_crit_edge, label %if.end15

lor.lhs.false6.do.body_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false6.do.body_crit_edge, %lor.lhs.false3.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_notify_client_open.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_notify_client_open, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !121

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vsi, align 4
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %11, i32 0, i32 28
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_notify_client_open.__UNIQUE_ID_ddebug528, ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false6
  %state = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  %lan_info = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 1
  %call23 = tail call i32 %9(ptr noundef %lan_info, ptr noundef nonnull %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.then18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then13, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_notify_client_close(ptr nocapture noundef readonly %vsi, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %cinst1 = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %cinst1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cinst1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %client = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false3

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.iavf_client, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false3.do.body_crit_edge, label %lor.lhs.false6

lor.lhs.false3.do.body_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %close = getelementptr inbounds %struct.iavf_client_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %close, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %lor.lhs.false6.do.body_crit_edge, label %if.end16

lor.lhs.false6.do.body_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false6.do.body_crit_edge, %lor.lhs.false3.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_notify_client_close.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_notify_client_close, %if.then14)) #6
          to label %cleanup [label %if.then14], !srcloc !121

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vsi, align 4
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %11, i32 0, i32 28
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_notify_client_close.__UNIQUE_ID_ddebug529, ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false6
  %lan_info = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 1
  tail call void %9(ptr noundef %lan_info, ptr noundef nonnull %5, i1 noundef zeroext %reset) #6
  %vf.i = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vf.i, align 4
  %aq_required.i = getelementptr inbounds %struct.iavf_adapter, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %aq_required.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %aq_required.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool.not.i = icmp eq i64 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.iavf_client_release_qvlist.exit_crit_edge

if.end16.iavf_client_release_qvlist.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_client_release_qvlist.exit

if.end.i:                                         ; preds = %if.end16
  %hw.i = getelementptr inbounds %struct.iavf_adapter, ptr %15, i32 0, i32 29
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw.i, i32 noundef 22, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i.iavf_client_release_qvlist.exit_crit_edge, label %do.end.i

if.end.i.iavf_client_release_qvlist.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_client_release_qvlist.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %15, i32 0, i32 28
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %15, i32 0, i32 29, i32 10, i32 14
  %20 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %asq_last_status.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %call.i, i32 noundef %21) #9
  br label %iavf_client_release_qvlist.exit

iavf_client_release_qvlist.exit:                  ; preds = %do.end.i, %if.end.i.iavf_client_release_qvlist.exit_crit_edge, %if.end16.iavf_client_release_qvlist.exit_crit_edge
  %state = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #6
  br label %cleanup

cleanup:                                          ; preds = %iavf_client_release_qvlist.exit, %if.then14, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_client_subtask(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vf_registered_client, align 4
  %state = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 30
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %cmp = icmp ult i32 %2, 10
  %tobool.not = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %vsi1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 45
  %cinst2.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 23
  %3 = ptrtoint ptr %cinst2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cinst2.i, align 4
  %tobool3.not.i = icmp eq ptr %4, null
  br i1 %tobool3.not.i, label %if.end6.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end6.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 100) #10
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end9.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end6.i
  %lan_info.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1
  %vf.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %vf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %adapter, ptr %vf.i, align 4
  %netdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 45, i32 1
  %7 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev.i, align 4
  %netdev11.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %netdev11.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %netdev11.i, align 4
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %pcidev.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %pcidev.i, align 8
  %fid.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %fid.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %fid.i, align 8
  %ftype.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %ftype.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ftype.i, align 1
  %hw.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 8
  %hw_addr16.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %hw_addr16.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %hw_addr16.i, align 4
  %ops.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @iavf_lan_ops, ptr %ops.i, align 4
  %19 = ptrtoint ptr %lan_info.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %lan_info.i, align 8
  %minor.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %minor.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %minor.i, align 1
  %build.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %build.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %build.i, align 2
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %22 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mtu.i.i, align 4
  %conv.i.i = trunc i32 %23 to i16
  %24 = ptrtoint ptr %vsi1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vsi1.i, align 4
  %link_up.i.i = getelementptr inbounds %struct.iavf_adapter, ptr %25, i32 0, i32 35
  %26 = ptrtoint ptr %link_up.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %link_up.i.i, align 1, !range !122
  %28 = zext i8 %27 to i16
  %qs_handle.i.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 45, i32 9
  %29 = ptrtoint ptr %qs_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %qs_handle.i.i, align 2
  %params24.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8
  %31 = ptrtoint ptr %params24.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %params24.i, align 8
  %params.sroa.6.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %params.sroa.6.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %params.sroa.6.0.params24.sroa_idx.i, align 2
  %params.sroa.7.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 0, i32 2
  %33 = ptrtoint ptr %params.sroa.7.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %params.sroa.7.0.params24.sroa_idx.i, align 1
  %params.sroa.769.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %params.sroa.769.0.params24.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %30, ptr %params.sroa.769.0.params24.sroa_idx.i, align 4
  %params.sroa.8.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %params.sroa.8.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %params.sroa.8.0.params24.sroa_idx.i, align 2
  %params.sroa.9.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %params.sroa.9.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %params.sroa.9.0.params24.sroa_idx.i, align 1
  %params.sroa.970.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 2
  %37 = ptrtoint ptr %params.sroa.970.0.params24.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %30, ptr %params.sroa.970.0.params24.sroa_idx.i, align 8
  %params.sroa.10.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %params.sroa.10.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %params.sroa.10.0.params24.sroa_idx.i, align 2
  %params.sroa.11.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %params.sroa.11.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %params.sroa.11.0.params24.sroa_idx.i, align 1
  %params.sroa.1171.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 3
  %40 = ptrtoint ptr %params.sroa.1171.0.params24.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %30, ptr %params.sroa.1171.0.params24.sroa_idx.i, align 4
  %params.sroa.12.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %params.sroa.12.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %params.sroa.12.0.params24.sroa_idx.i, align 2
  %params.sroa.13.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %params.sroa.13.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %params.sroa.13.0.params24.sroa_idx.i, align 1
  %params.sroa.1372.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 4
  %43 = ptrtoint ptr %params.sroa.1372.0.params24.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %30, ptr %params.sroa.1372.0.params24.sroa_idx.i, align 8
  %params.sroa.14.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %params.sroa.14.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %params.sroa.14.0.params24.sroa_idx.i, align 2
  %params.sroa.15.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %params.sroa.15.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %params.sroa.15.0.params24.sroa_idx.i, align 1
  %params.sroa.1573.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 5
  %46 = ptrtoint ptr %params.sroa.1573.0.params24.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %30, ptr %params.sroa.1573.0.params24.sroa_idx.i, align 4
  %params.sroa.16.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %params.sroa.16.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %params.sroa.16.0.params24.sroa_idx.i, align 2
  %params.sroa.17.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 5, i32 2
  %48 = ptrtoint ptr %params.sroa.17.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %params.sroa.17.0.params24.sroa_idx.i, align 1
  %params.sroa.1774.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 6
  %49 = ptrtoint ptr %params.sroa.1774.0.params24.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %30, ptr %params.sroa.1774.0.params24.sroa_idx.i, align 8
  %params.sroa.18.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %params.sroa.18.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %params.sroa.18.0.params24.sroa_idx.i, align 2
  %params.sroa.19.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 6, i32 2
  %51 = ptrtoint ptr %params.sroa.19.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %params.sroa.19.0.params24.sroa_idx.i, align 1
  %params.sroa.1975.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 7
  %52 = ptrtoint ptr %params.sroa.1975.0.params24.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %30, ptr %params.sroa.1975.0.params24.sroa_idx.i, align 4
  %params.sroa.20.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %params.sroa.20.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %params.sroa.20.0.params24.sroa_idx.i, align 2
  %params.sroa.21.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 7, i32 2
  %54 = ptrtoint ptr %params.sroa.21.0.params24.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %params.sroa.21.0.params24.sroa_idx.i, align 1
  %params.sroa.2176.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 1
  %55 = ptrtoint ptr %params.sroa.2176.0.params24.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i, ptr %params.sroa.2176.0.params24.sroa_idx.i, align 8
  %params.sroa.22.0.params24.sroa_idx.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 2
  %56 = ptrtoint ptr %params.sroa.22.0.params24.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %28, ptr %params.sroa.22.0.params24.sroa_idx.i, align 2
  %state.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  %num_iwarp_msix.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 20
  %57 = ptrtoint ptr %num_iwarp_msix.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_iwarp_msix.i, align 8
  %conv.i = trunc i32 %58 to i16
  %msix_count.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 10
  %59 = ptrtoint ptr %msix_count.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i, ptr %msix_count.i, align 8
  %msix_entries.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 24
  %60 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msix_entries.i, align 8
  %iwarp_base_vector.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 21
  %62 = ptrtoint ptr %iwarp_base_vector.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iwarp_base_vector.i, align 4
  %arrayidx.i = getelementptr %struct.msix_entry, ptr %61, i32 %63
  %msix_entries27.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 11
  %64 = ptrtoint ptr %msix_entries27.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx.i, ptr %msix_entries27.i, align 4
  %65 = ptrtoint ptr %netdev11.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %netdev11.i, align 4
  %dev_addrs.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 67
  %67 = ptrtoint ptr %dev_addrs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_addrs.i, align 8
  %tobool30.not.i = icmp eq ptr %68, null
  br i1 %tobool30.not.i, label %do.end.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %lanmac.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %addr.i, align 4
  %71 = ptrtoint ptr %lanmac.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %lanmac.i, align 4
  %add.ptr.i.i = getelementptr %struct.netdev_hw_addr, ptr %68, i32 0, i32 2, i32 4
  %72 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 4
  %74 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %add.ptr1.i.i, align 8
  br label %if.end35.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40) #9
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end.i, %if.then31.i
  %77 = load ptr, ptr @vf_registered_client, align 4
  %client.i = getelementptr inbounds %struct.iavf_client_instance, ptr %call7.i.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %client.i, align 4
  %79 = ptrtoint ptr %cinst2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i.i, ptr %cinst2.i, align 4
  br label %do.end

do.end:                                           ; preds = %if.end35.i, %if.end.i.do.end_crit_edge
  %cinst.0.i.ph = phi ptr [ %4, %if.end.i.do.end_crit_edge ], [ %call7.i.i.i, %if.end35.i ]
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %80 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %name = getelementptr inbounds %struct.iavf_client, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %name) #9
  %state6 = getelementptr inbounds %struct.iavf_client_instance, ptr %cinst.0.i.ph, i32 0, i32 3
  %82 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %state6, align 4
  %84 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool8.not = icmp eq i32 %84, 0
  br i1 %tobool8.not, label %if.then9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %do.end
  %ops = getelementptr inbounds %struct.iavf_client, ptr %0, i32 0, i32 7
  %85 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops, align 4
  %tobool10.not = icmp eq ptr %86, null
  br i1 %tobool10.not, label %if.then9.if.then19_crit_edge, label %land.lhs.true

if.then9.if.then19_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

land.lhs.true:                                    ; preds = %if.then9
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %tobool12.not = icmp eq ptr %88, null
  br i1 %tobool12.not, label %land.lhs.true.if.then19_crit_edge, label %if.then13

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then13:                                        ; preds = %land.lhs.true
  %lan_info = getelementptr inbounds %struct.iavf_client_instance, ptr %cinst.0.i.ph, i32 0, i32 1
  %call16 = tail call i32 %88(ptr noundef %lan_info, ptr noundef nonnull %0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %phi.cmp = icmp eq i32 %call16, 0
  br i1 %phi.cmp, label %if.then13.if.then19_crit_edge, label %if.else

if.then13.if.then19_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then19:                                        ; preds = %if.then13.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge, %if.then9.if.then19_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state6) #6
  br label %cleanup

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %cinst2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cinst2.i, align 4
  tail call void @kfree(ptr noundef %90) #6
  %91 = ptrtoint ptr %cinst2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %cinst2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then19, %do.end.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_lan_add_device(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @iavf_device_mutex, i32 noundef 0) #6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ldev.0.in = phi ptr [ @iavf_devices, %entry ], [ %ldev.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ldev.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ldev.0 = load ptr, ptr %ldev.0.in, align 4
  %cmp.not = icmp eq ptr %ldev.0, @iavf_devices
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %vf = getelementptr inbounds %struct.iavf_device, ptr %ldev.0, i32 0, i32 1
  %1 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vf, align 4
  %cmp1 = icmp eq ptr %2, %adapter
  br i1 %cmp1, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.end.out_crit_edge, label %if.end7

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end7:                                          ; preds = %for.end
  %vf8 = getelementptr inbounds %struct.iavf_device, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %vf8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %adapter, ptr %vf8, align 8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %7 = load ptr, ptr @iavf_devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @iavf_devices, ptr noundef %7) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add.exit_crit_edge

if.end7.list_add.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %call7.i.i, align 8
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @iavf_devices, ptr %prev.i, align 4
  store volatile ptr %call7.i.i, ptr @iavf_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end7.list_add.exit_crit_edge
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %bus_id = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 3, i32 6
  %13 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bus_id, align 2
  %conv = zext i16 %14 to i32
  %device = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 3, i32 4
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device, align 2
  %conv13 = zext i16 %16 to i32
  %func = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 3, i32 3
  %17 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %func, align 4
  %conv16 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %conv13, i32 noundef %conv16) #9
  %flags = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %or = or i32 %20, 512
  store i32 %or, ptr %flags, align 4
  br label %out

out:                                              ; preds = %list_add.exit, %for.end.out_crit_edge, %for.body.out_crit_edge
  %ret.0 = phi i32 [ 0, %list_add.exit ], [ -12, %for.end.out_crit_edge ], [ -17, %for.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @iavf_device_mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_lan_del_device(ptr noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @iavf_device_mutex, i32 noundef 0) #6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ldev.0.in = phi ptr [ @iavf_devices, %entry ], [ %ldev.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ldev.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ldev.0 = load ptr, ptr %ldev.0.in, align 4
  %cmp.not = icmp eq ptr %ldev.0, @iavf_devices
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %vf = getelementptr inbounds %struct.iavf_device, ptr %ldev.0, i32 0, i32 1
  %1 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vf, align 4
  %cmp6 = icmp eq ptr %2, %adapter
  br i1 %cmp6, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

do.end:                                           ; preds = %for.body
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %bus_id = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 3, i32 6
  %5 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bus_id, align 2
  %conv = zext i16 %6 to i32
  %device = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 3, i32 4
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %conv9 = zext i16 %8 to i32
  %func = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 3, i32 3
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %func, align 4
  %conv12 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv12) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ldev.0) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ldev.0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %ldev.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ldev.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %17 = ptrtoint ptr %ldev.0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %ldev.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ldev.0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %ldev.0) #6
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %list_del.exit ], [ -19, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @iavf_device_mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_register_client(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %client, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.iavf_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %0)
  %char0 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp = icmp eq i8 %char0, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %out

if.end3:                                          ; preds = %if.end
  %1 = load ptr, ptr @vf_registered_client, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end13, label %do.end8

do.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name) #9
  br label %out

if.end13:                                         ; preds = %if.end3
  %version = getelementptr inbounds %struct.iavf_client, ptr %client, i32 0, i32 2
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp14.not = icmp eq i8 %3, 0
  br i1 %cmp14.not, label %lor.lhs.false, label %if.end13.do.end23_crit_edge

if.end13.do.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

lor.lhs.false:                                    ; preds = %if.end13
  %minor = getelementptr inbounds %struct.iavf_client, ptr %client, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %minor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp18.not = icmp eq i8 %5, 1
  br i1 %cmp18.not, label %if.end41, label %lor.lhs.false.do.end23_crit_edge

lor.lhs.false.do.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

do.end23:                                         ; preds = %lor.lhs.false.do.end23_crit_edge, %if.end13.do.end23_crit_edge
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name) #9
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %version, align 2
  %conv34 = zext i8 %7 to i32
  %minor36 = getelementptr inbounds %struct.iavf_client, ptr %client, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %minor36 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minor36, align 1
  %conv37 = zext i8 %9 to i32
  %build = getelementptr inbounds %struct.iavf_client, ptr %client, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %build to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %build, align 2
  %conv39 = zext i8 %11 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv34, i32 noundef %conv37, i32 noundef %conv39, ptr noundef nonnull @iavf_client_interface_version_str) #9
  br label %out

if.end41:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %client, ptr @vf_registered_client, align 4
  tail call fastcc void @iavf_client_prepare()
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef 0) #9
  br label %out

out:                                              ; preds = %if.end41, %do.end23, %do.end8, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ -5, %do.end ], [ -17, %do.end8 ], [ -5, %do.end23 ], [ 0, %if.end41 ], [ -5, %entry.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iavf_client_prepare() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @iavf_device_mutex, i32 noundef 0) #6
  %ldev.01 = load ptr, ptr @iavf_devices, align 4
  %cmp.not2 = icmp eq ptr %ldev.01, @iavf_devices
  br i1 %cmp.not2, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ldev.03 = phi ptr [ %ldev.0, %for.body.for.body_crit_edge ], [ %ldev.01, %entry.for.body_crit_edge ]
  %vf = getelementptr inbounds %struct.iavf_device, ptr %ldev.03, i32 0, i32 1
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 4
  %flags = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 512
  store i32 %or, ptr %flags, align 4
  %4 = ptrtoint ptr %ldev.03 to i32
  call void @__asan_load4_noabort(i32 %4)
  %ldev.0 = load ptr, ptr %ldev.03, align 4
  %cmp.not = icmp eq ptr %ldev.0, @iavf_devices
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @iavf_device_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_unregister_client(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @iavf_device_mutex, i32 noundef 0) #6
  %ldev.042.i = load ptr, ptr @iavf_devices, align 4
  %cmp.not43.i = icmp eq ptr %ldev.042.i, @iavf_devices
  br i1 %cmp.not43.i, label %entry.iavf_client_release.exit_crit_edge, label %for.body.lr.ph.i

entry.iavf_client_release.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_client_release.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %ops.i = getelementptr inbounds %struct.iavf_client, ptr %client, i32 0, i32 7
  %name.i = getelementptr inbounds %struct.iavf_client, ptr %client, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ldev.044.i = phi ptr [ %ldev.042.i, %for.body.lr.ph.i ], [ %ldev.0.i, %for.inc.i.for.body.i_crit_edge ]
  %vf.i = getelementptr inbounds %struct.iavf_device, ptr %ldev.044.i, i32 0, i32 1
  %0 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf.i, align 4
  %cinst1.i = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %cinst1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cinst1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %state.i = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then3.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then3.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %if.then3.i.if.end10.i_crit_edge, label %land.lhs.true.i

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %close.i = getelementptr inbounds %struct.iavf_client_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %close.i, align 4
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %lan_info.i = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 1
  tail call void %10(ptr noundef %lan_info.i, ptr noundef %client, i1 noundef zeroext false) #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true.i.if.end10.i_crit_edge, %if.then3.i.if.end10.i_crit_edge
  %vf.i.i = getelementptr inbounds %struct.iavf_client_instance, ptr %3, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vf.i.i, align 4
  %aq_required.i.i = getelementptr inbounds %struct.iavf_adapter, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %aq_required.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %aq_required.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not.i.i = icmp eq i64 %14, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.i.iavf_client_release_qvlist.exit.i_crit_edge

if.end10.i.iavf_client_release_qvlist.exit.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_client_release_qvlist.exit.i

if.end.i.i:                                       ; preds = %if.end10.i
  %hw.i.i = getelementptr inbounds %struct.iavf_adapter, ptr %12, i32 0, i32 29
  %call.i.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw.i.i, i32 noundef 22, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.iavf_client_release_qvlist.exit.i_crit_edge, label %do.end.i.i

if.end.i.i.iavf_client_release_qvlist.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_client_release_qvlist.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i.i = getelementptr inbounds %struct.iavf_adapter, ptr %12, i32 0, i32 28
  %15 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %asq_last_status.i.i = getelementptr inbounds %struct.iavf_adapter, ptr %12, i32 0, i32 29, i32 10, i32 14
  %17 = ptrtoint ptr %asq_last_status.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %asq_last_status.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.37, i32 noundef %call.i.i, i32 noundef %18) #9
  br label %iavf_client_release_qvlist.exit.i

iavf_client_release_qvlist.exit.i:                ; preds = %do.end.i.i, %if.end.i.i.iavf_client_release_qvlist.exit.i_crit_edge, %if.end10.i.iavf_client_release_qvlist.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #6
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 28
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.48, ptr noundef %name.i) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %iavf_client_release_qvlist.exit.i, %if.end.i.if.end14.i_crit_edge
  %21 = ptrtoint ptr %cinst1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cinst1.i, align 4
  tail call void @kfree(ptr noundef %22) #6
  %23 = ptrtoint ptr %cinst1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cinst1.i, align 4
  %pdev18.i = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 28
  %24 = ptrtoint ptr %pdev18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev18.i, align 4
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19.i, ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %ldev.044.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %ldev.0.i = load ptr, ptr %ldev.044.i, align 4
  %cmp.not.i = icmp eq ptr %ldev.0.i, @iavf_devices
  br i1 %cmp.not.i, label %for.inc.i.iavf_client_release.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.iavf_client_release.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_client_release.exit

iavf_client_release.exit:                         ; preds = %for.inc.i.iavf_client_release.exit_crit_edge, %entry.iavf_client_release.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @iavf_device_mutex) #6
  %27 = load ptr, ptr @vf_registered_client, align 4
  %cmp.not = icmp eq ptr %27, %client
  br i1 %cmp.not, label %if.end, label %iavf_client_release.exit.out_crit_edge

iavf_client_release.exit.out_crit_edge:           ; preds = %iavf_client_release.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %iavf_client_release.exit
  call void @__sanitizer_cov_trace_pc() #8
  store ptr null, ptr @vf_registered_client, align 4
  br label %out

out:                                              ; preds = %if.end, %iavf_client_release.exit.out_crit_edge
  %.str.35.sink = phi ptr [ @.str.35, %if.end ], [ @.str.32, %iavf_client_release.exit.out_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.end ], [ -19, %iavf_client_release.exit.out_crit_edge ]
  %name5 = getelementptr inbounds %struct.iavf_client, ptr %client, i32 0, i32 1
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink, ptr noundef %name5) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_aq_send_msg_to_pf(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_client_setup_qvlist(ptr nocapture noundef readonly %ldev, ptr nocapture noundef readnone %client, ptr noundef %qvlist_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vf = getelementptr inbounds %struct.iavf_info, ptr %ldev, i32 0, i32 7
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 4
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %aq_required, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %qvlist_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qvlist_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp56.not = icmp eq i32 %5, 0
  br i1 %cmp56.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %iwarp_base_vector = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 21
  %num_iwarp_msix = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iavf_qvlist_info, ptr %qvlist_info, i32 0, i32 1, i32 %i.057
  %tobool2.not = icmp eq ptr %arrayidx, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %iwarp_base_vector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iwarp_base_vector, align 4
  %10 = ptrtoint ptr %num_iwarp_msix to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_iwarp_msix, align 8
  %add = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp6.not = icmp uge i32 %7, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp8 = icmp ult i32 %7, %9
  %or.cond = or i1 %cmp8, %cmp6.not
  br i1 %or.cond, label %if.end4.cleanup_crit_edge, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sub = add i32 %5, -1
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub, i32 12) #6
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %14, i32 16) #6
  %client_pending = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %client_pending to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %client_pending, align 8
  %or = or i32 %16, 2097152
  store i32 %or, ptr %client_pending, align 8
  %hw = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 29
  %17 = trunc i32 %spec.select.i to i16
  %conv = select i1 %13, i16 -1, i16 %17
  %call12 = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw, i32 noundef 21, i32 noundef 0, ptr noundef %qvlist_info, i16 noundef zeroext %conv, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.body20.preheader, label %do.end

for.body20.preheader:                             ; preds = %for.end
  tail call void @msleep(i32 noundef 100) #6
  %18 = ptrtoint ptr %client_pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %client_pending, align 8
  %and = and i32 %19, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %for.body20.preheader.cleanup_crit_edge, label %for.cond17

for.body20.preheader.cleanup_crit_edge:           ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 28
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %asq_last_status = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 29, i32 10, i32 14
  %22 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asq_last_status, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call12, i32 noundef %23) #9
  br label %cleanup

for.cond17:                                       ; preds = %for.body20.preheader
  tail call void @msleep(i32 noundef 100) #6
  %24 = ptrtoint ptr %client_pending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %client_pending, align 8
  %and.1 = and i32 %25, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool22.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool22.not.1, label %for.cond17.cleanup_crit_edge, label %for.cond17.1

for.cond17.cleanup_crit_edge:                     ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond17.1:                                     ; preds = %for.cond17
  tail call void @msleep(i32 noundef 100) #6
  %26 = ptrtoint ptr %client_pending to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %client_pending, align 8
  %and.2 = and i32 %27, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool22.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool22.not.2, label %for.cond17.1.cleanup_crit_edge, label %for.cond17.2

for.cond17.1.cleanup_crit_edge:                   ; preds = %for.cond17.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond17.2:                                     ; preds = %for.cond17.1
  tail call void @msleep(i32 noundef 100) #6
  %28 = ptrtoint ptr %client_pending to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %client_pending, align 8
  %and.3 = and i32 %29, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool22.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool22.not.3, label %for.cond17.2.cleanup_crit_edge, label %for.cond17.3

for.cond17.2.cleanup_crit_edge:                   ; preds = %for.cond17.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond17.3:                                     ; preds = %for.cond17.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 100) #6
  %30 = ptrtoint ptr %client_pending to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %client_pending, align 8
  %and.4 = and i32 %31, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool22.not.4 = icmp eq i32 %and.4, 0
  %spec.select = select i1 %tobool22.not.4, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %for.cond17.3, %for.cond17.2.cleanup_crit_edge, %for.cond17.1.cleanup_crit_edge, %for.cond17.cleanup_crit_edge, %do.end, %for.body20.preheader.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %call12, %do.end ], [ 0, %for.body20.preheader.cleanup_crit_edge ], [ 0, %for.cond17.cleanup_crit_edge ], [ 0, %for.cond17.1.cleanup_crit_edge ], [ 0, %for.cond17.2.cleanup_crit_edge ], [ %spec.select, %for.cond17.3 ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_client_virtchnl_send(ptr nocapture noundef readonly %ldev, ptr nocapture noundef readnone %client, ptr noundef %msg, i16 noundef zeroext %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vf = getelementptr inbounds %struct.iavf_info, ptr %ldev, i32 0, i32 7
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 4
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %aq_required, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 29
  %call = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw, i32 noundef 20, i32 noundef 0, ptr noundef %msg, i16 noundef zeroext %len, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %asq_last_status = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 29, i32 10, i32 14
  %6 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asq_last_status, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %call, i32 noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74, !75, !76, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !102, !104, !105, !106, !107, !108, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 68, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @iavf_notify_client_message.__UNIQUE_ID_ddebug526, !1, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 94, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @iavf_notify_client_l2_params.__UNIQUE_ID_ddebug527, !7, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 118, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @iavf_notify_client_open.__UNIQUE_ID_ddebug528, !11, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 169, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @iavf_notify_client_close.__UNIQUE_ID_ddebug529, !15, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 269, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @iavf_client_subtask._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @iavf_client_subtask._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 312, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @iavf_lan_add_device._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @iavf_lan_add_device._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 340, i32 4}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @iavf_lan_del_device._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @iavf_lan_del_device._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 516, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @iavf_register_client._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @iavf_register_client._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 522, i32 3}
!42 = !{ptr @iavf_register_client._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @iavf_register_client._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 530, i32 3}
!46 = !{ptr @iavf_register_client._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @iavf_register_client._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 532, i32 3}
!50 = !{ptr @iavf_register_client._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @iavf_register_client._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 544, i32 2}
!54 = !{ptr @iavf_register_client._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @iavf_register_client._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__ksymtab_iavf_register_client, !57, !"__ksymtab_iavf_register_client", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 549, i32 1}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 568, i32 3}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @iavf_unregister_client._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @iavf_unregister_client._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 574, i32 2}
!65 = !{ptr @iavf_unregister_client._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @iavf_unregister_client._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @__ksymtab_iavf_unregister_client, !68, !"__ksymtab_iavf_unregister_client", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 578, i32 1}
!69 = !{ptr @vf_registered_client, !70, !"vf_registered_client", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 13, i32 28}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 148, i32 3}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @iavf_client_release_qvlist._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @iavf_client_release_qvlist._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 227, i32 3}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @iavf_client_add_instance._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @iavf_client_add_instance._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @iavf_lan_ops, !83, !"iavf_lan_ops", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 25, i32 24}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 481, i32 3}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @iavf_client_setup_qvlist._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @iavf_client_setup_qvlist._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 431, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @iavf_client_virtchnl_send._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @iavf_client_virtchnl_send._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 15, i32 8}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @iavf_device_mutex, !95, !"iavf_device_mutex", i1 false, i1 false}
!98 = !{ptr @iavf_devices, !99, !"iavf_devices", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 14, i32 8}
!100 = !{ptr @iavf_client_interface_version_str, !101, !"iavf_client_interface_version_str", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 12, i32 12}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 379, i32 4}
!104 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @iavf_client_release._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @iavf_client_release._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/iavf/iavf_client.c", i32 384, i32 3}
!110 = !{ptr @iavf_client_release._entry.51, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @iavf_client_release._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148988253, i64 2148988258, i64 2148988271, i64 2148988315, i64 2148988349, i64 2148988370}
!122 = !{i8 0, i8 2}
