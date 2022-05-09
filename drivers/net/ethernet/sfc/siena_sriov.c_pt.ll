; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/siena_sriov.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/siena_sriov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.efx_channel_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.efx_dword = type { [1 x i32] }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.150, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.150 = type { ptr }
%struct.siena_nic_data = type { ptr, i32, [59 x i64], ptr, ptr, i32, %struct.efx_buffer, %struct.list_head, %struct.list_head, %struct.mutex, %struct.work_struct }
%struct.vfdi_status = type { i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, %struct.vfdi_endpoint, [256 x %struct.vfdi_endpoint], i32 }
%struct.vfdi_endpoint = type { [6 x i8], i16 }
%struct.siena_vf = type { ptr, i32, [13 x i8], i32, %struct.work_struct, i64, i32, i32, i32, i8, %struct.efx_buffer, i32, i8, i32, i32, i32, i32, i32, %struct.vfdi_endpoint, i64, %struct.mutex, ptr, i32, [16 x i64], i32, %struct.wait_queue_head, %struct.mutex, [2 x i32], i32, [2 x i32], i32, [2 x i32], %struct.atomic_t, %struct.work_struct }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.132, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.132 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.efx_local_addr = type { %struct.list_head, [6 x i8] }
%struct.efx_endpoint_page = type { %struct.list_head, ptr, i32 }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_memcpy_req = type { i32, ptr, i64, i32, i64, i32 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.vfdi_req = type { i32, i32, i32, i32, %union.anon.153 }
%union.anon.153 = type { %struct.anon.155 }
%struct.anon.155 = type { i32, i32, i32, i32, i32, i32, [0 x i64] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%union.efx_qword = type { [1 x i64] }

@__param_str_vf_max_tx_channels = internal constant [23 x i8] c"sfc.vf_max_tx_channels\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@vf_max_tx_channels = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_vf_max_tx_channels = internal constant %struct.kernel_param { ptr @__param_str_vf_max_tx_channels, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @vf_max_tx_channels } }, section "__param", align 4
@__UNIQUE_ID_vf_max_tx_channelstype524 = internal constant [37 x i8] c"sfc.parmtype=vf_max_tx_channels:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vf_max_tx_channels525 = internal constant [72 x i8] c"sfc.parm=vf_max_tx_channels:Limit the number of TX channels VFs can use\00", section ".modinfo", align 1
@__param_str_max_vfs = internal constant [12 x i8] c"sfc.max_vfs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_vfs = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_max_vfs = internal constant %struct.kernel_param { ptr @__param_str_max_vfs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @max_vfs } }, section "__param", align 4
@__UNIQUE_ID_max_vfstype526 = internal constant [25 x i8] c"sfc.parmtype=max_vfs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_vfs527 = internal constant [68 x i8] c"sfc.parm=max_vfs:Reduce the number of VFs initialized by the driver\00", section ".modinfo", align 1
@efx_siena_sriov_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1060, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no SR-IOV VFs probed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efx_siena_sriov_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/sfc/siena_sriov.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efx_siena_sriov_probe._entry_ptr = internal global ptr @efx_siena_sriov_probe._entry, section ".printk_index", align 4
@efx_siena_sriov_channel_type = internal constant { %struct.efx_channel_type, [32 x i8] } { %struct.efx_channel_type { ptr @efx_siena_sriov_handle_no_channel, ptr @efx_siena_sriov_probe_channel, ptr @efx_channel_dummy_op_void, ptr @efx_siena_sriov_get_channel_name, ptr null, ptr null, ptr null, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@efx_siena_sriov_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&nic_data->local_lock\00", [42 x i8] zeroinitializer }, align 32
@efx_siena_sriov_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&nic_data->peer_work)\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"enabled SR-IOV for %d VFs, %d VI per VF\0A\00", [55 x i8] zeroinitializer }, align 32
@vfdi_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ERROR: Screaming VFDI request from %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FLR on VF %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"VF %d DMA Q %d reports descriptor fetch error.\0A\00", [48 x i8] zeroinitializer }, align 32
@efx_siena_sriov_reset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sfc_vfdi\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"ERROR: IOV requires MSI-X and 1 additional interruptvector. IOV disabled\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-iov\00", [25 x i8] zeroinitializer }, align 32
@efx_siena_sriov_vf_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&vf->req)\00", [36 x i8] zeroinitializer }, align 32
@efx_siena_sriov_vf_alloc.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&vf->reset_work)\00", [61 x i8] zeroinitializer }, align 32
@efx_siena_sriov_vf_alloc.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vf->flush_waitq\00", [47 x i8] zeroinitializer }, align 32
@efx_siena_sriov_vf_alloc.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vf->status_lock\00", [47 x i8] zeroinitializer }, align 32
@efx_siena_sriov_vf_alloc.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vf->txq_lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ERROR: Unable to fetch VFDI request from %s rc %d\0A\00", [45 x i8] zeroinitializer }, align 32
@vfdi_ops = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr null, ptr @efx_vfdi_init_evq, ptr @efx_vfdi_init_rxq, ptr @efx_vfdi_init_txq, ptr @efx_vfdi_fini_all_queues, ptr @efx_vfdi_insert_filter, ptr @efx_vfdi_remove_all_filters, ptr @efx_vfdi_set_status_page, ptr @efx_vfdi_clear_status_page], [60 x i8] zeroinitializer }, align 32
@efx_siena_sriov_vfdi.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efx_siena_sriov_vfdi\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vfdi request %d from %s ok\0A\00", [36 x i8] zeroinitializer }, align 32
@efx_siena_sriov_vfdi.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ERROR: Unrecognised request %d from VF %s addr %llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ERROR: Invalid INIT_EVQ from %s: evq %d bufs %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ERROR: Invalid INIT_RXQ from %s: rxq %d evq %d buf_count %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ERROR: Invalid INIT_TXQ from %s: txq %d evq %d buf_count %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ERROR: Invalid INSERT_FILTER from %s: rxq %d flags 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@efx_siena_sriov_reset_rx_filter.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"efx_siena_sriov_reset_rx_filter\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Removed vf %s rx filter %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to insert rx filter for vf %s\0A\00", [58 x i8] zeroinitializer }, align 32
@efx_siena_sriov_reset_rx_filter.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.35, ptr @.str.2, ptr @.str.38, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Inserted vf %s rx filter %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ERROR: Invalid SET_STATUS_PAGE from %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%04x:%02x:%02x.%d\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ERROR: Unable to notify %s of reset: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@efx_siena_sriov_reset_tx_filter.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"efx_siena_sriov_reset_tx_filter\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Removed vf %s tx filter %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to migrate tx filter for vf %s\0A\00", [57 x i8] zeroinitializer }, align 32
@efx_siena_sriov_reset_tx_filter.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.42, ptr @.str.2, ptr @.str.45, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Inserted vf %s tx filter %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"vf_max_tx_channels\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 175, i32 21 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"max_vfs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 180, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1060, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [29 x i8] c"efx_siena_sriov_channel_type\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1043, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1323, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1324, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1345, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"vfdi_workqueue\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 189, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1451, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1467, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1544, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1558, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1583, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1022, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1040, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1212, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1213, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1214, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1215, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1216, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 890, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant [9 x i8] c"vfdi_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 860, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 900, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 905, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 542, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 585, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 626, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 770, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 355, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 374, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 378, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 817, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1267, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 980, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 311, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 334, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [42 x i8] c"../drivers/net/ethernet/sfc/siena_sriov.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 338, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_max_vfs527, ptr @__UNIQUE_ID_max_vfstype526, ptr @__UNIQUE_ID_vf_max_tx_channels525, ptr @__UNIQUE_ID_vf_max_tx_channelstype524, ptr @__param_max_vfs, ptr @__param_vf_max_tx_channels, ptr @efx_siena_sriov_probe._entry, ptr @efx_siena_sriov_probe._entry_ptr, ptr @vf_max_tx_channels, ptr @max_vfs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @efx_siena_sriov_channel_type, ptr @efx_siena_sriov_init.__key, ptr @.str.5, ptr @efx_siena_sriov_init.__key.6, ptr @.str.7, ptr @.str.8, ptr @vfdi_workqueue, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @efx_siena_sriov_vf_alloc.__key, ptr @.str.17, ptr @efx_siena_sriov_vf_alloc.__key.18, ptr @.str.19, ptr @efx_siena_sriov_vf_alloc.__key.20, ptr @.str.21, ptr @efx_siena_sriov_vf_alloc.__key.22, ptr @.str.23, ptr @efx_siena_sriov_vf_alloc.__key.24, ptr @.str.25, ptr @.str.26, ptr @vfdi_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf_max_tx_channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_vfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_siena_sriov_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_siena_sriov_channel_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_siena_sriov_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_siena_sriov_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfdi_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_siena_sriov_vf_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_siena_sriov_vf_alloc.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_siena_sriov_vf_alloc.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_siena_sriov_vf_alloc.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_siena_sriov_vf_alloc.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfdi_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_siena_sriov_probe(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [3 x %union.efx_dword], align 4
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %vi_scale = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 122
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #13
  %1 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %outbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #13
  %2 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %outlen.i, align 4, !annotation !120
  %3 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %inbuf.i, align 4
  %add.ptr4.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %4 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2147483648, ptr %add.ptr4.i, align 4
  %vf_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %5 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vf_count.i, align 16
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  %add.ptr14.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %8 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %add.ptr14.i, align 4
  %call.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 48, ptr noundef nonnull %inbuf.i, i32 noundef 12, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef nonnull %outlen.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool20.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp.i = icmp ult i32 %10, 8
  br i1 %cmp.i, label %if.end.i.do.end_crit_edge, label %if.end23.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end23.i:                                       ; preds = %if.end.i
  %add.ptr25.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 1
  %11 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr25.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #13
  %14 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outbuf.i, align 8
  %16 = call i32 @llvm.bswap.i32(i32 %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp32.i = icmp ugt i32 %16, 6
  br i1 %cmp32.i, label %if.end23.i.do.end_crit_edge, label %if.end35.i

if.end23.i.do.end_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end35.i:                                       ; preds = %if.end23.i
  %tobool36.not.i = icmp eq ptr %vi_scale, null
  br i1 %tobool36.not.i, label %if.end35.i.if.end3_crit_edge, label %if.then37.i

if.end35.i.if.end3_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %vi_scale to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %vi_scale, align 4
  br label %if.end3

do.end:                                           ; preds = %if.end23.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i) #13
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #16
  br label %cleanup

if.end3:                                          ; preds = %if.then37.i, %if.end35.i.if.end3_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end3.if.end6_crit_edge, label %land.lhs.true

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %20 = load i32, ptr @max_vfs, align 4
  %21 = call i32 @llvm.umin.i32(i32 %13, i32 %20)
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end3.if.end6_crit_edge
  %count.1 = phi i32 [ 0, %if.end3.if.end6_crit_edge ], [ %21, %land.lhs.true ]
  %22 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %count.1, ptr %vf_count.i, align 16
  %extra_channel_type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 27
  %23 = ptrtoint ptr %extra_channel_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @efx_siena_sriov_channel_type, ptr %extra_channel_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_siena_sriov_init(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i126 = alloca [3 x %union.efx_dword], align 4
  %outbuf.i127 = alloca [2 x %union.efx_dword], align 8
  %outlen.i128 = alloca i32, align 4
  %offset.i = alloca i16, align 2
  %stride.i = alloca i16, align 2
  %inbuf.i = alloca [3 x %union.efx_dword], align 4
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %0 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev1, align 4
  %nic_data2 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data2, align 8
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %4 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #13
  %6 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %outbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #13
  %7 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %outlen.i, align 4, !annotation !120
  %8 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %inbuf.i, align 4
  %add.ptr4.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %9 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147483648, ptr %add.ptr4.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %add.ptr14.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %11 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr14.i, align 4
  %call.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 48, ptr noundef nonnull %inbuf.i, i32 noundef 12, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef nonnull %outlen.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool20.not.i, label %if.end.i, label %if.end.efx_siena_sriov_cmd.exit.thread_crit_edge

if.end.efx_siena_sriov_cmd.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_cmd.exit.thread

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp.i = icmp ult i32 %13, 8
  br i1 %cmp.i, label %if.end.i.efx_siena_sriov_cmd.exit.thread_crit_edge, label %if.end23.i

if.end.i.efx_siena_sriov_cmd.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_cmd.exit.thread

if.end23.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outbuf.i, align 8
  %16 = call i32 @llvm.bswap.i32(i32 %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp32.i = icmp ugt i32 %16, 6
  br i1 %cmp32.i, label %if.end23.i.efx_siena_sriov_cmd.exit.thread_crit_edge, label %if.end7

if.end23.i.efx_siena_sriov_cmd.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_cmd.exit.thread

efx_siena_sriov_cmd.exit.thread:                  ; preds = %if.end23.i.efx_siena_sriov_cmd.exit.thread_crit_edge, %if.end.i.efx_siena_sriov_cmd.exit.thread_crit_edge, %if.end.efx_siena_sriov_cmd.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -95, %if.end23.i.efx_siena_sriov_cmd.exit.thread_crit_edge ], [ -5, %if.end.i.efx_siena_sriov_cmd.exit.thread_crit_edge ], [ %call.i, %if.end.efx_siena_sriov_cmd.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end23.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i) #13
  %vfdi_status8 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 6
  %call9 = call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef %vfdi_status8, i32 noundef 2084, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.fail_status_crit_edge

if.end7.fail_status_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_status

if.end12:                                         ; preds = %if.end7
  %17 = ptrtoint ptr %vfdi_status8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vfdi_status8, align 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 2084)
  %version = getelementptr inbounds %struct.vfdi_status, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %version, align 4
  %length = getelementptr inbounds %struct.vfdi_status, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2084, ptr %length, align 4
  %22 = load i32, ptr @vf_max_tx_channels, align 4
  %conv = trunc i32 %22 to i8
  %max_tx_channels = getelementptr inbounds %struct.vfdi_status, ptr %18, i32 0, i32 5
  %23 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %max_tx_channels, align 1
  %vi_scale = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 122
  %24 = ptrtoint ptr %vi_scale to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vi_scale, align 8
  %conv14 = trunc i32 %25 to i8
  %vi_scale15 = getelementptr inbounds %struct.vfdi_status, ptr %18, i32 0, i32 4
  %26 = ptrtoint ptr %vi_scale15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv14, ptr %vi_scale15, align 4
  %rss_spread = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 44
  %27 = ptrtoint ptr %rss_spread to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rss_spread, align 16
  %conv16 = trunc i32 %28 to i8
  %rss_rxq_count = getelementptr inbounds %struct.vfdi_status, ptr %18, i32 0, i32 6
  %29 = ptrtoint ptr %rss_rxq_count to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv16, ptr %rss_rxq_count, align 2
  %30 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vf_count, align 16
  %32 = trunc i32 %31 to i16
  %conv18 = add i16 %32, 1
  %peer_count = getelementptr inbounds %struct.vfdi_status, ptr %18, i32 0, i32 8
  %33 = ptrtoint ptr %peer_count to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv18, ptr %peer_count, align 4
  %timer_quantum_ns = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %34 = ptrtoint ptr %timer_quantum_ns to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timer_quantum_ns, align 8
  %timer_quantum_ns19 = getelementptr inbounds %struct.vfdi_status, ptr %18, i32 0, i32 12
  %36 = ptrtoint ptr %timer_quantum_ns19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %timer_quantum_ns19, align 4
  %37 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nic_data2, align 8
  %39 = load i32, ptr %vf_count, align 16
  %40 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 616) #13
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !121

kcalloc.exit.thread.i:                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %vf264.i = getelementptr inbounds %struct.siena_nic_data, ptr %38, i32 0, i32 3
  %42 = ptrtoint ptr %vf264.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %vf264.i, align 8
  br label %fail_alloc

if.end7.i.i.i:                                    ; preds = %if.end12
  %43 = extractvalue { i32, i1 } %40, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #17
  %vf2.i = getelementptr inbounds %struct.siena_nic_data, ptr %38, i32 0, i32 3
  %44 = ptrtoint ptr %vf2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i.i.i, ptr %vf2.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.fail_alloc_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.fail_alloc_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_alloc

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %45 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp66.not.i = icmp eq i32 %46, 0
  br i1 %cmp66.not.i, label %for.cond.preheader.i.do.body24_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.body24_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %index.067.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %47 = ptrtoint ptr %vf2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vf2.i, align 8
  %add.ptr.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %efx, ptr %add.ptr.i, align 8
  %index7.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 3
  %50 = ptrtoint ptr %index7.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %index.067.i, ptr %index7.i, align 8
  %rx_filter_id.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 15
  %51 = ptrtoint ptr %rx_filter_id.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %rx_filter_id.i, align 4
  %tx_filter_mode.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 16
  %52 = ptrtoint ptr %tx_filter_mode.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %tx_filter_mode.i, align 8
  %tx_filter_id.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 17
  %53 = ptrtoint ptr %tx_filter_id.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %tx_filter_id.i, align 4
  %req.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 4
  call void @__init_work(ptr noundef %req.i, i32 noundef 0) #13
  %54 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -64, ptr %req.i, align 4
  %lockdep_map.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @efx_siena_sriov_vf_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry11.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 4, i32 1
  %55 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 4, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry11.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 4, i32 2
  %57 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @efx_siena_sriov_vfdi, ptr %func.i, align 4
  %reset_work.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 33
  call void @__init_work(ptr noundef %reset_work.i, i32 noundef 0) #13
  %58 = ptrtoint ptr %reset_work.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -64, ptr %reset_work.i, align 8
  %lockdep_map19.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 33, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map19.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @efx_siena_sriov_vf_alloc.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry21.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 33, i32 1
  %59 = ptrtoint ptr %entry21.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %entry21.i, ptr %entry21.i, align 4
  %prev.i62.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 33, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i62.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %entry21.i, ptr %prev.i62.i, align 4
  %func23.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 33, i32 2
  %61 = ptrtoint ptr %func23.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @efx_siena_sriov_reset_vf_work, ptr %func23.i, align 4
  %flush_waitq.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 25
  call void @__init_waitqueue_head(ptr noundef %flush_waitq.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @efx_siena_sriov_vf_alloc.__key.20) #13
  %status_lock.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 20
  call void @__mutex_init(ptr noundef %status_lock.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @efx_siena_sriov_vf_alloc.__key.22) #13
  %txq_lock.i = getelementptr %struct.siena_vf, ptr %48, i32 %index.067.i, i32 26
  call void @__mutex_init(ptr noundef %txq_lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @efx_siena_sriov_vf_alloc.__key.24) #13
  %inc.i = add nuw i32 %index.067.i, 1
  %62 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vf_count, align 16
  %cmp.i112 = icmp ult i32 %inc.i, %63
  br i1 %cmp.i112, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.body24_crit_edge

for.body.i.do.body24_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.body24:                                        ; preds = %for.body.i.do.body24_crit_edge, %for.cond.preheader.i.do.body24_crit_edge
  %local_lock = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 9
  call void @__mutex_init(ptr noundef %local_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @efx_siena_sriov_init.__key) #13
  %peer_work = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 10
  call void @__init_work(ptr noundef %peer_work, i32 noundef 0) #13
  %64 = ptrtoint ptr %peer_work to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %peer_work, align 4
  %lockdep_map = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 10, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @efx_siena_sriov_init.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry31 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 10, i32 1
  %65 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 10, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry31, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 10, i32 2
  %67 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @efx_siena_sriov_peer_work, ptr %func, align 4
  %local_addr_list = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 7
  %68 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %local_addr_list, ptr %local_addr_list, align 4
  %prev.i114 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 7, i32 1
  %69 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %local_addr_list, ptr %prev.i114, align 4
  %local_page_list = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 8
  %70 = ptrtoint ptr %local_page_list to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %local_page_list, ptr %local_page_list, align 4
  %prev.i115 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 8, i32 1
  %71 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %local_page_list, ptr %prev.i115, align 4
  %pci_dev1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %72 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci_dev1.i, align 4
  %74 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %nic_data2, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offset.i) #13
  %76 = ptrtoint ptr %offset.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 -1, ptr %offset.i, align 2, !annotation !120
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %stride.i) #13
  %77 = ptrtoint ptr %stride.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %stride.i, align 2, !annotation !120
  %call.i116 = call zeroext i16 @pci_find_ext_capability(ptr noundef %73, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i116)
  %tobool.not.i117 = icmp eq i16 %call.i116, 0
  br i1 %tobool.not.i117, label %do.body24.efx_siena_sriov_vfs_init.exit.thread149_crit_edge, label %if.end.i119

do.body24.efx_siena_sriov_vfs_init.exit.thread149_crit_edge: ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_vfs_init.exit.thread149

if.end.i119:                                      ; preds = %do.body24
  %conv.i = zext i16 %call.i116 to i32
  %add.i = add nuw nsw i32 %conv.i, 20
  %call3.i = call i32 @pci_read_config_word(ptr noundef %73, i32 noundef %add.i, ptr noundef nonnull %offset.i) #13
  %add4.i = add nuw nsw i32 %conv.i, 22
  %call5.i = call i32 @pci_read_config_word(ptr noundef %73, i32 noundef %add4.i, ptr noundef nonnull %stride.i) #13
  %78 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp59.not.i = icmp eq i32 %79, 0
  br i1 %cmp59.not.i, label %if.end.i119.efx_siena_sriov_vfs_init.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.i119.efx_siena_sriov_vfs_init.exit.thread_crit_edge: ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_vfs_init.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end.i119
  %80 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %offset.i, align 2
  %conv7.i = zext i16 %81 to i32
  %devfn6.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 6
  %82 = ptrtoint ptr %devfn6.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %devfn6.i, align 4
  %add8.i = add i32 %83, %conv7.i
  %vf_buftbl_base.i = getelementptr inbounds %struct.siena_nic_data, ptr %75, i32 0, i32 5
  %84 = ptrtoint ptr %vf_buftbl_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vf_buftbl_base.i, align 8
  %vf10.i = getelementptr inbounds %struct.siena_nic_data, ptr %75, i32 0, i32 3
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 1
  br label %for.body.i121

for.body.i121:                                    ; preds = %if.end22.i.for.body.i121_crit_edge, %for.body.lr.ph.i
  %buftbl_base.062.i = phi i32 [ %85, %for.body.lr.ph.i ], [ %add13.i, %if.end22.i.for.body.i121_crit_edge ]
  %devfn.061.i = phi i32 [ %add8.i, %for.body.lr.ph.i ], [ %add24.i, %if.end22.i.for.body.i121_crit_edge ]
  %index.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i122, %if.end22.i.for.body.i121_crit_edge ]
  %86 = ptrtoint ptr %vf10.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vf10.i, align 8
  %buftbl_base11.i = getelementptr %struct.siena_vf, ptr %87, i32 %index.060.i, i32 11
  %88 = ptrtoint ptr %buftbl_base11.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %buftbl_base.062.i, ptr %buftbl_base11.i, align 4
  %89 = ptrtoint ptr %vi_scale to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vi_scale, align 8
  %pci_rid.i = getelementptr %struct.siena_vf, ptr %87, i32 %index.060.i, i32 1
  %91 = ptrtoint ptr %pci_rid.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %devfn.061.i, ptr %pci_rid.i, align 4
  %pci_name.i = getelementptr %struct.siena_vf, ptr %87, i32 %index.060.i, i32 2
  %92 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %93, i32 0, i32 16
  %94 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %domain_nr.i.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %93, i32 0, i32 12
  %96 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %number.i, align 4
  %conv16.i = zext i8 %97 to i32
  %shr.i = lshr i32 %devfn.061.i, 3
  %and.i = and i32 %shr.i, 31
  %and17.i = and i32 %devfn.061.i, 7
  %call18.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %pci_name.i, i32 noundef 13, ptr noundef nonnull @.str.40, i32 noundef %95, i32 noundef %conv16.i, i32 noundef %and.i, i32 noundef %and17.i) #13
  %buf.i = getelementptr %struct.siena_vf, ptr %87, i32 %index.060.i, i32 10
  %call19.i = call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef %buf.i, i32 noundef 4096, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i120 = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i120, label %if.end22.i, label %fail.i

if.end22.i:                                       ; preds = %for.body.i121
  %mul.i = shl i32 32, %90
  %add13.i = add i32 %mul.i, %buftbl_base.062.i
  %98 = ptrtoint ptr %stride.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %stride.i, align 2
  %conv23.i = zext i16 %99 to i32
  %add24.i = add i32 %devfn.061.i, %conv23.i
  %inc.i122 = add nuw i32 %index.060.i, 1
  %100 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vf_count, align 16
  %cmp.i123 = icmp ult i32 %inc.i122, %101
  br i1 %cmp.i123, label %if.end22.i.for.body.i121_crit_edge, label %if.end22.i.efx_siena_sriov_vfs_init.exit.thread_crit_edge

if.end22.i.efx_siena_sriov_vfs_init.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_vfs_init.exit.thread

if.end22.i.for.body.i121_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i121

fail.i:                                           ; preds = %for.body.i121
  %102 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp12.not.i.i = icmp eq i32 %103, 0
  br i1 %cmp12.not.i.i, label %fail.i.efx_siena_sriov_vfs_init.exit.thread149_crit_edge, label %for.body.lr.ph.i.i

fail.i.efx_siena_sriov_vfs_init.exit.thread149_crit_edge: ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_vfs_init.exit.thread149

for.body.lr.ph.i.i:                               ; preds = %fail.i
  %104 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %nic_data2, align 8
  %vf2.i.i = getelementptr inbounds %struct.siena_nic_data, ptr %105, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %pos.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %106 = ptrtoint ptr %vf2.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vf2.i.i, align 8
  %buf.i.i = getelementptr %struct.siena_vf, ptr %107, i32 %pos.013.i.i, i32 10
  call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %buf.i.i) #13
  %peer_page_addrs.i.i = getelementptr %struct.siena_vf, ptr %107, i32 %pos.013.i.i, i32 21
  %108 = ptrtoint ptr %peer_page_addrs.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %peer_page_addrs.i.i, align 4
  call void @kfree(ptr noundef %109) #13
  %110 = ptrtoint ptr %peer_page_addrs.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %peer_page_addrs.i.i, align 4
  %peer_page_count.i.i = getelementptr %struct.siena_vf, ptr %107, i32 %pos.013.i.i, i32 22
  %111 = ptrtoint ptr %peer_page_count.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %peer_page_count.i.i, align 8
  %evq0_count.i.i = getelementptr %struct.siena_vf, ptr %107, i32 %pos.013.i.i, i32 24
  %112 = ptrtoint ptr %evq0_count.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %evq0_count.i.i, align 8
  %inc.i.i = add nuw i32 %pos.013.i.i, 1
  %113 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vf_count, align 16
  %cmp.i.i = icmp ult i32 %inc.i.i, %114
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %efx_siena_sriov_vfs_init.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

efx_siena_sriov_vfs_init.exit.thread:             ; preds = %if.end22.i.efx_siena_sriov_vfs_init.exit.thread_crit_edge, %if.end.i119.efx_siena_sriov_vfs_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stride.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset.i) #13
  call void @rtnl_lock() #13
  %peers = getelementptr inbounds %struct.vfdi_status, ptr %18, i32 0, i32 11
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %115 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_addr, align 64
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %119 = ptrtoint ptr %peers to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %peers, align 4
  %add.ptr.i125 = getelementptr i8, ptr %116, i32 4
  %120 = ptrtoint ptr %add.ptr.i125 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr.i125, align 2
  %add.ptr1.i = getelementptr %struct.vfdi_status, ptr %18, i32 0, i32 11, i32 0, i32 0, i32 4
  %122 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %add.ptr1.i, align 2
  %123 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %vf_count, align 16
  %vf_init_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %125 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %vf_init_count, align 4
  call void @rtnl_unlock() #13
  call fastcc void @efx_siena_sriov_usrev(ptr noundef %efx, i1 noundef zeroext true)
  %126 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pci_dev1.i, align 4
  %128 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %vf_count, align 16
  %call41 = call i32 @pci_enable_sriov(ptr noundef %127, i32 noundef %129) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body45, label %fail_pci

efx_siena_sriov_vfs_init.exit.thread149:          ; preds = %fail.i.efx_siena_sriov_vfs_init.exit.thread149_crit_edge, %do.body24.efx_siena_sriov_vfs_init.exit.thread149_crit_edge
  %retval.0.i124.ph = phi i32 [ %call19.i, %fail.i.efx_siena_sriov_vfs_init.exit.thread149_crit_edge ], [ -2, %do.body24.efx_siena_sriov_vfs_init.exit.thread149_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stride.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset.i) #13
  br label %fail_vfs

efx_siena_sriov_vfs_init.exit:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stride.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset.i) #13
  br label %fail_vfs

do.body45:                                        ; preds = %efx_siena_sriov_vfs_init.exit.thread
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %130 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %msg_enable, align 4
  %and = and i32 %131, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %do.body45.cleanup_crit_edge, label %if.then47

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then47:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  %132 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %vf_count, align 16
  %134 = ptrtoint ptr %vi_scale to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %vi_scale, align 8
  %shl.i = shl nuw i32 1, %135
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %133, i32 noundef %shl.i) #16
  br label %cleanup

fail_pci:                                         ; preds = %efx_siena_sriov_vfs_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @efx_siena_sriov_usrev(ptr noundef %efx, i1 noundef zeroext false)
  call void @rtnl_lock() #13
  %136 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %vf_init_count, align 4
  call void @rtnl_unlock() #13
  call fastcc void @efx_siena_sriov_vfs_fini(ptr noundef %efx)
  br label %fail_vfs

fail_vfs:                                         ; preds = %fail_pci, %efx_siena_sriov_vfs_init.exit, %efx_siena_sriov_vfs_init.exit.thread149
  %rc.0 = phi i32 [ %call19.i, %efx_siena_sriov_vfs_init.exit ], [ %call41, %fail_pci ], [ %retval.0.i124.ph, %efx_siena_sriov_vfs_init.exit.thread149 ]
  %call55 = call zeroext i1 @cancel_work_sync(ptr noundef %peer_work) #13
  call fastcc void @efx_siena_sriov_free_local(ptr noundef %efx)
  %vf = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 3
  %137 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %vf, align 8
  call void @kfree(ptr noundef %138) #13
  br label %fail_alloc

fail_alloc:                                       ; preds = %fail_vfs, %if.end7.i.i.i.fail_alloc_crit_edge, %kcalloc.exit.thread.i
  %rc.1 = phi i32 [ %rc.0, %fail_vfs ], [ -12, %if.end7.i.i.i.fail_alloc_crit_edge ], [ -12, %kcalloc.exit.thread.i ]
  call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %vfdi_status8) #13
  br label %fail_status

fail_status:                                      ; preds = %fail_alloc, %if.end7.fail_status_crit_edge
  %rc.2 = phi i32 [ %call9, %if.end7.fail_status_crit_edge ], [ %rc.1, %fail_alloc ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i126) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i127) #13
  %139 = ptrtoint ptr %outbuf.i127 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 0, ptr %outbuf.i127, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i128) #13
  %140 = ptrtoint ptr %outlen.i128 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %outlen.i128, align 4, !annotation !120
  %141 = ptrtoint ptr %inbuf.i126 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %inbuf.i126, align 4
  %add.ptr4.i129 = getelementptr inbounds %union.efx_dword, ptr %inbuf.i126, i32 1
  %142 = ptrtoint ptr %add.ptr4.i129 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -2147483648, ptr %add.ptr4.i129, align 4
  %143 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %vf_count, align 16
  %145 = call i32 @llvm.bswap.i32(i32 %144) #13
  %add.ptr14.i131 = getelementptr inbounds %union.efx_dword, ptr %inbuf.i126, i32 2
  %146 = ptrtoint ptr %add.ptr14.i131 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %add.ptr14.i131, align 4
  %call.i132 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 48, ptr noundef nonnull %inbuf.i126, i32 noundef 12, ptr noundef nonnull %outbuf.i127, i32 noundef 8, ptr noundef nonnull %outlen.i128) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i128) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i127) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i126) #13
  br label %cleanup

cleanup:                                          ; preds = %fail_status, %if.then47, %do.body45.cleanup_crit_edge, %efx_siena_sriov_cmd.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %do.body45.cleanup_crit_edge ], [ %rc.2, %fail_status ], [ %retval.0.i.ph, %efx_siena_sriov_cmd.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_siena_sriov_peer_work(ptr noundef %data) #0 align 64 {
entry:
  %pages = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -612
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %vfdi_status2 = getelementptr i8, ptr %data, i32 -120
  %2 = ptrtoint ptr %vfdi_status2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfdi_status2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pages) #13
  %4 = getelementptr inbounds %struct.list_head, ptr %pages, i32 0, i32 1
  %local_lock = getelementptr i8, ptr %data, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %local_lock, i32 noundef 0) #13
  %5 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %pages, ptr %pages, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pages, ptr %4, align 4
  %local_page_list = getelementptr i8, ptr %data, i32 -100
  %7 = ptrtoint ptr %local_page_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %local_page_list, align 4
  %cmp.i.not.i = icmp eq ptr %8, %local_page_list
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev2.i.i = getelementptr i8, ptr %data, i32 -96
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pages, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %pages, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pages, ptr %10, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %4, align 4
  %15 = ptrtoint ptr %local_page_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %local_page_list, ptr %local_page_list, align 4
  store ptr %local_page_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  %add.ptr3 = getelementptr %struct.vfdi_status, ptr %3, i32 0, i32 11, i32 1
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 120
  %16 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp167.not = icmp eq i32 %17, 0
  br i1 %cmp167.not, label %list_splice_tail_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_tail_init.exit.for.end_crit_edge:     ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_tail_init.exit
  %vf4 = getelementptr i8, ptr %data, i32 -132
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %peer.0172 = phi ptr [ %add.ptr3, %for.body.lr.ph ], [ %peer.1, %if.end19.for.body_crit_edge ]
  %peer_space.0171 = phi i32 [ 255, %for.body.lr.ph ], [ %peer_space.1, %if.end19.for.body_crit_edge ]
  %pos.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %if.end19.for.body_crit_edge ]
  %peer_count.0168 = phi i32 [ 1, %for.body.lr.ph ], [ %peer_count.1, %if.end19.for.body_crit_edge ]
  %18 = ptrtoint ptr %vf4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vf4, align 8
  %status_lock = getelementptr %struct.siena_vf, ptr %19, i32 %pos.0169, i32 20
  call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #13
  %rx_filtering = getelementptr %struct.siena_vf, ptr %19, i32 %pos.0169, i32 12
  %20 = ptrtoint ptr %rx_filtering to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_filtering, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %for.body.if.end19_crit_edge, label %land.lhs.true

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %for.body
  %addr6 = getelementptr %struct.siena_vf, ptr %19, i32 %pos.0169, i32 18
  %22 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr6, align 4
  %add.ptr.i = getelementptr i8, ptr %addr6, i32 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %25 to i32
  %or.i = or i32 %23, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end19_crit_edge, label %if.then

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %incdec.ptr = getelementptr %struct.vfdi_endpoint, ptr %peer.0172, i32 1
  %26 = ptrtoint ptr %addr6 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %addr6, align 8
  %28 = ptrtoint ptr %peer.0172 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %peer.0172, align 2
  %inc = add i32 %peer_count.0168, 1
  %dec = add i32 %peer_space.0171, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp9 = icmp eq i32 %dec, 0
  br i1 %cmp9, label %do.body13, label %if.then.if.end19_crit_edge, !prof !121

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.body13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/siena_sriov.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1112, 0\0A.popsection", ""() #13, !srcloc !123
  unreachable

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %peer_count.1 = phi i32 [ %peer_count.0168, %land.lhs.true.if.end19_crit_edge ], [ %inc, %if.then.if.end19_crit_edge ], [ %peer_count.0168, %for.body.if.end19_crit_edge ]
  %peer_space.1 = phi i32 [ %peer_space.0171, %land.lhs.true.if.end19_crit_edge ], [ %dec, %if.then.if.end19_crit_edge ], [ %peer_space.0171, %for.body.if.end19_crit_edge ]
  %peer.1 = phi ptr [ %peer.0172, %land.lhs.true.if.end19_crit_edge ], [ %incdec.ptr, %if.then.if.end19_crit_edge ], [ %peer.0172, %for.body.if.end19_crit_edge ]
  call void @mutex_unlock(ptr noundef %status_lock) #13
  %inc21 = add nuw i32 %pos.0169, 1
  %29 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vf_count, align 16
  %cmp = icmp ult i32 %inc21, %30
  br i1 %cmp, label %if.end19.for.body_crit_edge, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %list_splice_tail_init.exit.for.end_crit_edge
  %peer_count.0.lcssa = phi i32 [ 1, %list_splice_tail_init.exit.for.end_crit_edge ], [ %peer_count.1, %if.end19.for.end_crit_edge ]
  %peer_space.0.lcssa = phi i32 [ 255, %list_splice_tail_init.exit.for.end_crit_edge ], [ %peer_space.1, %if.end19.for.end_crit_edge ]
  %peer.0.lcssa = phi ptr [ %add.ptr3, %list_splice_tail_init.exit.for.end_crit_edge ], [ %peer.1, %if.end19.for.end_crit_edge ]
  %local_addr_list = getelementptr i8, ptr %data, i32 -108
  %31 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %local_addr.0175 = load ptr, ptr %local_addr_list, align 4
  %cmp27.not176 = icmp eq ptr %local_addr.0175, %local_addr_list
  br i1 %cmp27.not176, label %for.end.for.end69_crit_edge, label %for.body30.lr.ph

for.end.for.end69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end69

for.body30.lr.ph:                                 ; preds = %for.end
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %prev.i151 = getelementptr i8, ptr %data, i32 -96
  br label %for.body30

for.body30:                                       ; preds = %for.inc63.for.body30_crit_edge, %for.body30.lr.ph
  %local_addr.0180 = phi ptr [ %local_addr.0175, %for.body30.lr.ph ], [ %local_addr.0, %for.inc63.for.body30_crit_edge ]
  %peer.2179 = phi ptr [ %peer.0.lcssa, %for.body30.lr.ph ], [ %peer.3, %for.inc63.for.body30_crit_edge ]
  %peer_space.2178 = phi i32 [ %peer_space.0.lcssa, %for.body30.lr.ph ], [ %peer_space.3, %for.inc63.for.body30_crit_edge ]
  %peer_count.2177 = phi i32 [ %peer_count.0.lcssa, %for.body30.lr.ph ], [ %inc36, %for.inc63.for.body30_crit_edge ]
  %addr33 = getelementptr inbounds %struct.efx_local_addr, ptr %local_addr.0180, i32 0, i32 1
  %32 = ptrtoint ptr %addr33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr33, align 4
  %34 = ptrtoint ptr %peer.2179 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %peer.2179, align 4
  %add.ptr.i147 = getelementptr %struct.efx_local_addr, ptr %local_addr.0180, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %add.ptr.i147 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i147, align 2
  %add.ptr1.i = getelementptr i8, ptr %peer.2179, i32 4
  %37 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %add.ptr1.i, align 2
  %tci = getelementptr inbounds %struct.vfdi_endpoint, ptr %peer.2179, i32 0, i32 1
  %38 = ptrtoint ptr %tci to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %tci, align 2
  %incdec.ptr35 = getelementptr %struct.vfdi_endpoint, ptr %peer.2179, i32 1
  %inc36 = add i32 %peer_count.2177, 1
  %dec37 = add i32 %peer_space.2178, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec37)
  %cmp38 = icmp eq i32 %dec37, 0
  br i1 %cmp38, label %if.then39, label %for.body30.for.inc63_crit_edge

for.body30.for.inc63_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc63

if.then39:                                        ; preds = %for.body30
  %39 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %pages, align 4
  %cmp.i148.not = icmp eq ptr %40, %pages
  br i1 %cmp.i148.not, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 16) #18
  %tobool44.not = icmp eq ptr %call7.i, null
  br i1 %tobool44.not, label %if.then42.for.end69_crit_edge, label %if.end46

if.then42.for.end69_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end69

if.end46:                                         ; preds = %if.then42
  %42 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %addr47 = getelementptr inbounds %struct.efx_endpoint_page, ptr %call7.i, i32 0, i32 2
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %addr47, i32 noundef 3264, i32 noundef 0) #13
  %ptr = getelementptr inbounds %struct.efx_endpoint_page, ptr %call7.i, i32 0, i32 1
  %44 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %ptr, align 8
  %tobool50.not = icmp eq ptr %call.i, null
  br i1 %tobool50.not, label %if.then51, label %if.end46.if.end58_crit_edge

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %for.end69

if.else:                                          ; preds = %if.then39
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %40) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %40, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %51 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %40, align 4
  %prev.i150 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i150 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i150, align 4
  br label %if.end58

if.end58:                                         ; preds = %list_del.exit, %if.end46.if.end58_crit_edge
  %epp.0 = phi ptr [ %call7.i, %if.end46.if.end58_crit_edge ], [ %40, %list_del.exit ]
  %53 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i151, align 4
  %call.i.i152 = call zeroext i1 @__list_add_valid(ptr noundef %epp.0, ptr noundef %54, ptr noundef %local_page_list) #13
  br i1 %call.i.i152, label %if.end.i.i154, label %if.end58.list_add_tail.exit_crit_edge

if.end58.list_add_tail.exit_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i154:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %epp.0, ptr %prev.i151, align 4
  %56 = ptrtoint ptr %epp.0 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %local_page_list, ptr %epp.0, align 4
  %prev3.i.i153 = getelementptr inbounds %struct.list_head, ptr %epp.0, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i153 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i153, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %epp.0, ptr %54, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i154, %if.end58.list_add_tail.exit_crit_edge
  %ptr61 = getelementptr inbounds %struct.efx_endpoint_page, ptr %epp.0, i32 0, i32 1
  %59 = ptrtoint ptr %ptr61 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ptr61, align 4
  br label %for.inc63

for.inc63:                                        ; preds = %list_add_tail.exit, %for.body30.for.inc63_crit_edge
  %peer_space.3 = phi i32 [ 512, %list_add_tail.exit ], [ %dec37, %for.body30.for.inc63_crit_edge ]
  %peer.3 = phi ptr [ %60, %list_add_tail.exit ], [ %incdec.ptr35, %for.body30.for.inc63_crit_edge ]
  %61 = ptrtoint ptr %local_addr.0180 to i32
  call void @__asan_load4_noabort(i32 %61)
  %local_addr.0 = load ptr, ptr %local_addr.0180, align 4
  %cmp27.not = icmp eq ptr %local_addr.0, %local_addr_list
  br i1 %cmp27.not, label %for.inc63.for.end69_crit_edge, label %for.inc63.for.body30_crit_edge

for.inc63.for.body30_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30

for.inc63.for.end69_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end69

for.end69:                                        ; preds = %for.inc63.for.end69_crit_edge, %if.then51, %if.then42.for.end69_crit_edge, %for.end.for.end69_crit_edge
  %peer_count.3 = phi i32 [ %inc36, %if.then51 ], [ %peer_count.0.lcssa, %for.end.for.end69_crit_edge ], [ %inc36, %if.then42.for.end69_crit_edge ], [ %inc36, %for.inc63.for.end69_crit_edge ]
  %conv = trunc i32 %peer_count.3 to i16
  %peer_count70 = getelementptr inbounds %struct.vfdi_status, ptr %3, i32 0, i32 8
  %62 = ptrtoint ptr %peer_count70 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv, ptr %peer_count70, align 4
  call void @mutex_unlock(ptr noundef %local_lock) #13
  %63 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %pages, align 4
  %cmp.i155.not183 = icmp eq ptr %64, %pages
  br i1 %cmp.i155.not183, label %for.end69.for.cond85.preheader_crit_edge, label %while.body.lr.ph

for.end69.for.cond85.preheader_crit_edge:         ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond85.preheader

while.body.lr.ph:                                 ; preds = %for.end69
  %pci_dev81 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  br label %while.body

for.cond85.preheader:                             ; preds = %list_del.exit162.for.cond85.preheader_crit_edge, %for.end69.for.cond85.preheader_crit_edge
  %65 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp87184.not = icmp eq i32 %66, 0
  br i1 %cmp87184.not, label %for.cond85.preheader.for.end99_crit_edge, label %for.body89.lr.ph

for.cond85.preheader.for.end99_crit_edge:         ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end99

for.body89.lr.ph:                                 ; preds = %for.cond85.preheader
  %vf90 = getelementptr i8, ptr %data, i32 -132
  br label %for.body89

while.body:                                       ; preds = %list_del.exit162.while.body_crit_edge, %while.body.lr.ph
  %67 = phi ptr [ %64, %while.body.lr.ph ], [ %83, %list_del.exit162.while.body_crit_edge ]
  %call.i.i157 = call zeroext i1 @__list_del_entry_valid(ptr noundef %67) #13
  br i1 %call.i.i157, label %if.end.i.i160, label %while.body.list_del.exit162_crit_edge

while.body.list_del.exit162_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit162

if.end.i.i160:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i158 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i158 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i158, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %67, align 4
  %prev1.i.i.i159 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i159, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del.exit162

list_del.exit162:                                 ; preds = %if.end.i.i160, %while.body.list_del.exit162_crit_edge
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %67, align 4
  %prev.i161 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i161 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i161, align 4
  %76 = ptrtoint ptr %pci_dev81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pci_dev81, align 4
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %ptr83 = getelementptr inbounds %struct.efx_endpoint_page, ptr %67, i32 0, i32 1
  %78 = ptrtoint ptr %ptr83 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ptr83, align 4
  %addr84 = getelementptr inbounds %struct.efx_endpoint_page, ptr %67, i32 0, i32 2
  %80 = ptrtoint ptr %addr84 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %addr84, align 4
  call void @dma_free_attrs(ptr noundef %dev82, i32 noundef 4096, ptr noundef %79, i32 noundef %81, i32 noundef 0) #13
  call void @kfree(ptr noundef %67) #13
  %82 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %pages, align 4
  %cmp.i155.not = icmp eq ptr %83, %pages
  br i1 %cmp.i155.not, label %list_del.exit162.for.cond85.preheader_crit_edge, label %list_del.exit162.while.body_crit_edge

list_del.exit162.while.body_crit_edge:            ; preds = %list_del.exit162
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del.exit162.for.cond85.preheader_crit_edge:  ; preds = %list_del.exit162
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond85.preheader

for.body89:                                       ; preds = %if.end95.for.body89_crit_edge, %for.body89.lr.ph
  %pos.1185 = phi i32 [ 0, %for.body89.lr.ph ], [ %inc98, %if.end95.for.body89_crit_edge ]
  %84 = ptrtoint ptr %vf90 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vf90, align 8
  %status_lock92 = getelementptr %struct.siena_vf, ptr %85, i32 %pos.1185, i32 20
  call void @mutex_lock_nested(ptr noundef %status_lock92, i32 noundef 0) #13
  %status_addr = getelementptr %struct.siena_vf, ptr %85, i32 %pos.1185, i32 19
  %86 = ptrtoint ptr %status_addr to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %status_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %87)
  %tobool93.not = icmp eq i64 %87, 0
  br i1 %tobool93.not, label %for.body89.if.end95_crit_edge, label %if.then94

for.body89.if.end95_crit_edge:                    ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then94:                                        ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr91 = getelementptr %struct.siena_vf, ptr %85, i32 %pos.1185
  call fastcc void @__efx_siena_sriov_push_vf_status(ptr noundef %add.ptr91)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %for.body89.if.end95_crit_edge
  call void @mutex_unlock(ptr noundef %status_lock92) #13
  %inc98 = add nuw i32 %pos.1185, 1
  %88 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vf_count, align 16
  %cmp87 = icmp ult i32 %inc98, %89
  br i1 %cmp87, label %if.end95.for.body89_crit_edge, label %if.end95.for.end99_crit_edge

if.end95.for.end99_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end99

if.end95.for.body89_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body89

for.end99:                                        ; preds = %if.end95.for.end99_crit_edge, %for.cond85.preheader.for.end99_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pages) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_siena_sriov_usrev(ptr noundef %efx, i1 noundef zeroext %enabled) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %conv = select i1 %enabled, i32 0, i32 65536
  %vfdi_channel = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vfdi_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfdi_channel, align 4
  %channel = getelementptr inbounds %struct.efx_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %or3 = or i32 %5, %conv
  %6 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #13
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #13, !srcloc !124
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %10, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #13, !srcloc !124
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %12, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #13, !srcloc !124
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %14, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_siena_sriov_vfs_fini(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %0 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %vf2 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pos.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf2, align 8
  %buf = getelementptr %struct.siena_vf, ptr %5, i32 %pos.013, i32 10
  tail call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %buf) #13
  %peer_page_addrs = getelementptr %struct.siena_vf, ptr %5, i32 %pos.013, i32 21
  %6 = ptrtoint ptr %peer_page_addrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer_page_addrs, align 4
  tail call void @kfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %peer_page_addrs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %peer_page_addrs, align 4
  %peer_page_count = getelementptr %struct.siena_vf, ptr %5, i32 %pos.013, i32 22
  %9 = ptrtoint ptr %peer_page_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %peer_page_count, align 8
  %evq0_count = getelementptr %struct.siena_vf, ptr %5, i32 %pos.013, i32 24
  %10 = ptrtoint ptr %evq0_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %evq0_count, align 8
  %inc = add nuw i32 %pos.013, 1
  %11 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vf_count, align 16
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_siena_sriov_free_local(ptr nocapture noundef readonly %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %local_addr_list = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %local_addr_list, align 4
  %cmp.i.not31 = icmp eq ptr %3, %local_addr_list
  br i1 %cmp.i.not31, label %entry.while.cond3.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %list_del.exit.while.cond3.preheader_crit_edge, %entry.while.cond3.preheader_crit_edge
  %local_page_list = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %local_page_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %local_page_list, align 4
  %cmp.i23.not32 = icmp eq ptr %5, %local_page_list
  br i1 %cmp.i23.not32, label %while.cond3.preheader.while.end14_crit_edge, label %while.body7.lr.ph

while.cond3.preheader.while.end14_crit_edge:      ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end14

while.body7.lr.ph:                                ; preds = %while.cond3.preheader
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  br label %while.body7

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = phi ptr [ %16, %list_del.exit.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %6) #13
  %15 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %local_addr_list, align 4
  %cmp.i.not = icmp eq ptr %16, %local_addr_list
  br i1 %cmp.i.not, label %list_del.exit.while.cond3.preheader_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del.exit.while.cond3.preheader_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond3.preheader

while.body7:                                      ; preds = %list_del.exit30.while.body7_crit_edge, %while.body7.lr.ph
  %17 = phi ptr [ %5, %while.body7.lr.ph ], [ %33, %list_del.exit30.while.body7_crit_edge ]
  %call.i.i25 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #13
  br i1 %call.i.i25, label %if.end.i.i28, label %while.body7.list_del.exit30_crit_edge

while.body7.list_del.exit30_crit_edge:            ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit30

if.end.i.i28:                                     ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i26 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i26, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i27 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i27, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit30

list_del.exit30:                                  ; preds = %if.end.i.i28, %while.body7.list_del.exit30_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i29 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i29, align 4
  %26 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %ptr = getelementptr inbounds %struct.efx_endpoint_page, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptr, align 4
  %addr = getelementptr inbounds %struct.efx_endpoint_page, ptr %17, i32 0, i32 2
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %29, i32 noundef %31, i32 noundef 0) #13
  tail call void @kfree(ptr noundef %17) #13
  %32 = ptrtoint ptr %local_page_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %local_page_list, align 4
  %cmp.i23.not = icmp eq ptr %33, %local_page_list
  br i1 %cmp.i23.not, label %list_del.exit30.while.end14_crit_edge, label %list_del.exit30.while.body7_crit_edge

list_del.exit30.while.body7_crit_edge:            ; preds = %list_del.exit30
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body7

list_del.exit30.while.end14_crit_edge:            ; preds = %list_del.exit30
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end14

while.end14:                                      ; preds = %list_del.exit30.while.end14_crit_edge, %while.cond3.preheader.while.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_siena_sriov_fini(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [3 x %union.efx_dword], align 4
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %vf_init_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %2 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vf_init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %vfdi_channel = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vfdi_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfdi_channel, align 4
  %enabled = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end11, label %do.body5, !prof !125

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/siena_sriov.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1378, 0\0A.popsection", ""() #13, !srcloc !126
  unreachable

do.end11:                                         ; preds = %do.body
  %channel.i = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 4
  %or3.i = or i32 %9, 65536
  %10 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #13
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #13
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %11 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %10) #13, !srcloc !124
  %13 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %14, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #13, !srcloc !124
  %15 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %16, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #13, !srcloc !124
  %17 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %18, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #13
  tail call void @rtnl_lock() #13
  %19 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %vf_init_count, align 4
  tail call void @rtnl_unlock() #13
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %20 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1340.not = icmp eq i32 %21, 0
  br i1 %cmp1340.not, label %do.end11.for.end_crit_edge, label %for.body.lr.ph

do.end11.for.end_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end11
  %vf14 = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pos.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %vf14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vf14, align 8
  %req = getelementptr %struct.siena_vf, ptr %23, i32 %pos.041, i32 4
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %req) #13
  %reset_work = getelementptr %struct.siena_vf, ptr %23, i32 %pos.041, i32 33
  %call15 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_work) #13
  %inc = add nuw i32 %pos.041, 1
  %24 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vf_count, align 16
  %cmp13 = icmp ult i32 %inc, %25
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end11.for.end_crit_edge
  %peer_work = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 10
  %call16 = tail call zeroext i1 @cancel_work_sync(ptr noundef %peer_work) #13
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %26 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_disable_sriov(ptr noundef %27) #13
  %28 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp12.not.i = icmp eq i32 %29, 0
  br i1 %cmp12.not.i, label %for.end.efx_siena_sriov_vfs_fini.exit_crit_edge, label %for.body.lr.ph.i

for.end.efx_siena_sriov_vfs_fini.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_vfs_fini.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %30 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nic_data1, align 8
  %vf2.i = getelementptr inbounds %struct.siena_nic_data, ptr %31, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %vf2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vf2.i, align 8
  %buf.i = getelementptr %struct.siena_vf, ptr %33, i32 %pos.013.i, i32 10
  tail call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %buf.i) #13
  %peer_page_addrs.i = getelementptr %struct.siena_vf, ptr %33, i32 %pos.013.i, i32 21
  %34 = ptrtoint ptr %peer_page_addrs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %peer_page_addrs.i, align 4
  tail call void @kfree(ptr noundef %35) #13
  %36 = ptrtoint ptr %peer_page_addrs.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %peer_page_addrs.i, align 4
  %peer_page_count.i = getelementptr %struct.siena_vf, ptr %33, i32 %pos.013.i, i32 22
  %37 = ptrtoint ptr %peer_page_count.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %peer_page_count.i, align 8
  %evq0_count.i = getelementptr %struct.siena_vf, ptr %33, i32 %pos.013.i, i32 24
  %38 = ptrtoint ptr %evq0_count.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %evq0_count.i, align 8
  %inc.i = add nuw i32 %pos.013.i, 1
  %39 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vf_count, align 16
  %cmp.i = icmp ult i32 %inc.i, %40
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.efx_siena_sriov_vfs_fini.exit_crit_edge

for.body.i.efx_siena_sriov_vfs_fini.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_vfs_fini.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

efx_siena_sriov_vfs_fini.exit:                    ; preds = %for.body.i.efx_siena_sriov_vfs_fini.exit_crit_edge, %for.end.efx_siena_sriov_vfs_fini.exit_crit_edge
  tail call fastcc void @efx_siena_sriov_free_local(ptr noundef %efx)
  %vf17 = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %vf17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vf17, align 8
  tail call void @kfree(ptr noundef %42) #13
  %vfdi_status = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 6
  tail call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %vfdi_status) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #13
  %43 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %outbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #13
  %44 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %outlen.i, align 4, !annotation !120
  %45 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %inbuf.i, align 4
  %add.ptr4.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %46 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -2147483648, ptr %add.ptr4.i, align 4
  %47 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vf_count, align 16
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #13
  %add.ptr14.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %50 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %add.ptr14.i, align 4
  %call.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 48, ptr noundef nonnull %inbuf.i, i32 noundef 12, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef nonnull %outlen.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i) #13
  br label %cleanup

cleanup:                                          ; preds = %efx_siena_sriov_vfs_fini.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_siena_sriov_event(ptr nocapture noundef readonly %channel, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %arrayidx = getelementptr [2 x i32], ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = and i32 %3, -16580608
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shr = lshr i32 %8, 24
  %shr6 = lshr i32 %8, 16
  %and8 = and i32 %shr6, 255
  %and12 = and i32 %8, 65535
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %9 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nic_data1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp.i = icmp ult i32 %5, 128
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %5, -128
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 122
  %11 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vi_scale.i.i, align 8
  %div22.i = lshr i32 %sub.i, %12
  %vf_init_count.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 121
  %13 = ptrtoint ptr %vf_init_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vf_init_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div22.i, i32 %14)
  %cmp2.not.i = icmp ult i32 %div22.i, %14
  br i1 %cmp2.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %vf.i = getelementptr inbounds %struct.siena_nic_data, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vf.i, align 8
  %busy = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 9
  %17 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %busy, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end14, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp = icmp eq i32 %and8, 0
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %req_type = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 6
  %19 = ptrtoint ptr %req_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %req_type, align 8
  %add = add nuw nsw i32 %shr, 1
  %req_seqno = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 7
  %20 = ptrtoint ptr %req_seqno to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %req_seqno, align 4
  %req_addr = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 5
  %21 = ptrtoint ptr %req_addr to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %req_addr, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end14
  %req_seqno16 = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 7
  %22 = ptrtoint ptr %req_seqno16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req_seqno16, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %req_seqno16, align 4
  %and17 = and i32 %23, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %and17)
  %cmp18.not = icmp eq i32 %shr, %and17
  br i1 %cmp18.not, label %lor.lhs.false, label %if.else.error_crit_edge

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

lor.lhs.false:                                    ; preds = %if.else
  %req_type19 = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 6
  %24 = ptrtoint ptr %req_type19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_type19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and8, i32 %25)
  %cmp20.not = icmp eq i32 %and8, %25
  br i1 %cmp20.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end23:                                         ; preds = %lor.lhs.false.if.end23_crit_edge, %if.then15
  %req_type24 = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 6
  %26 = ptrtoint ptr %req_type24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %req_type24, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.end23.error_crit_edge [
    i32 0, label %if.end23.sw.bb_crit_edge
    i32 1, label %if.end23.sw.bb_crit_edge80
    i32 2, label %if.end23.sw.bb_crit_edge81
    i32 3, label %sw.bb32
  ]

if.end23.sw.bb_crit_edge81:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end23.sw.bb_crit_edge80:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end23.sw.bb_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end23.error_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

sw.bb:                                            ; preds = %if.end23.sw.bb_crit_edge, %if.end23.sw.bb_crit_edge80, %if.end23.sw.bb_crit_edge81
  %conv = zext i32 %and12 to i64
  %shl26 = shl nuw nsw i32 %27, 4
  %sh_prom = zext i32 %shl26 to i64
  %shl27 = shl nuw nsw i64 %conv, %sh_prom
  %req_addr28 = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 5
  %29 = ptrtoint ptr %req_addr28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %req_addr28, align 8
  %or29 = or i64 %30, %shl27
  store i64 %or29, ptr %req_addr28, align 8
  %inc31 = add nuw nsw i32 %27, 1
  %31 = ptrtoint ptr %req_type24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc31, ptr %req_type24, align 8
  br label %cleanup

sw.bb32:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %conv33 = zext i32 %8 to i64
  %shl34 = shl i64 %conv33, 48
  %req_addr35 = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 5
  %32 = ptrtoint ptr %req_addr35 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %req_addr35, align 8
  %or36 = or i64 %33, %shl34
  store i64 %or36, ptr %req_addr35, align 8
  %34 = ptrtoint ptr %req_type24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %req_type24, align 8
  %35 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %busy, align 4
  %36 = load ptr, ptr @vfdi_workqueue, align 4
  %req = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %req) #13
  br label %cleanup

error:                                            ; preds = %if.end23.error_crit_edge, %lor.lhs.false.error_crit_edge, %if.else.error_crit_edge, %if.end.error_crit_edge
  %call40 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %error.if.end50_crit_edge, label %do.body43

error.if.end50_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

do.body43:                                        ; preds = %error
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %37 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable, align 4
  %and44 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.if.end50_crit_edge, label %if.then46

do.body43.if.end50_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then46:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %39 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 2
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.9, ptr noundef %pci_name) #16
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %do.body43.if.end50_crit_edge, %error.if.end50_crit_edge
  %req_type51 = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 6
  %41 = ptrtoint ptr %req_type51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %req_type51, align 8
  %add52 = add nuw nsw i32 %shr, 1
  %req_seqno53 = getelementptr %struct.siena_vf, ptr %16, i32 %div22.i, i32 7
  %42 = ptrtoint ptr %req_seqno53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add52, ptr %req_seqno53, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %sw.bb32, %sw.bb, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_siena_sriov_flr(ptr nocapture noundef readonly %efx, i32 noundef %vf_i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_init_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %0 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_init_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf_i)
  %cmp = icmp ult i32 %1, %vf_i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %vf2 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf2, align 8
  %add.ptr = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.then3

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %pci_name) #16
  br label %do.end

do.end:                                           ; preds = %if.then3, %if.end.do.end_crit_edge
  %status_addr = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 19
  %10 = ptrtoint ptr %status_addr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %status_addr, align 8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %nic_data2.i = getelementptr inbounds %struct.efx_nic, ptr %12, i32 0, i32 76
  %13 = ptrtoint ptr %nic_data2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nic_data2.i, align 8
  %rx_filtering.i = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 12
  %15 = ptrtoint ptr %rx_filtering.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rx_filtering.i, align 8
  tail call fastcc void @efx_siena_sriov_reset_rx_filter(ptr noundef %add.ptr) #13
  %16 = load ptr, ptr @vfdi_workqueue, align 4
  %peer_work.i = getelementptr inbounds %struct.siena_nic_data, ptr %14, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %peer_work.i) #13
  %txq_mask.i = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 27
  %rxq_retry_count.i = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 32
  %17 = call ptr @memset(ptr %txq_mask.i, i32 0, i32 32)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_retry_count.i, i32 noundef 4) #13
  %18 = ptrtoint ptr %rxq_retry_count.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %rxq_retry_count.i, align 4
  %evq0_count = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 24
  %19 = ptrtoint ptr %evq0_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %evq0_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_vfdi_remove_all_filters(ptr noundef %vf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %nic_data2 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data2, align 8
  %rx_filtering = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 12
  %4 = ptrtoint ptr %rx_filtering to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %rx_filtering, align 8
  tail call fastcc void @efx_siena_sriov_reset_rx_filter(ptr noundef %vf)
  %5 = load ptr, ptr @vfdi_workqueue, align 4
  %peer_work = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %peer_work) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_siena_sriov_mac_address_changed(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_init_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %0 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %vfdi_status2 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %vfdi_status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfdi_status2, align 4
  %peers = getelementptr inbounds %struct.vfdi_status, ptr %5, i32 0, i32 11
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %peers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %peers, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.vfdi_status, ptr %5, i32 0, i32 11, i32 0, i32 0, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 2
  %16 = load ptr, ptr @vfdi_workqueue, align 4
  %peer_work = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %peer_work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_siena_sriov_tx_flush_done(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 8
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %4 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_data1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %cmp.i = icmp ult i32 %3, 128
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %3, -128
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 122
  %6 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vi_scale.i.i, align 8
  %div22.i = lshr i32 %sub.i, %7
  %vf_init_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %8 = ptrtoint ptr %vf_init_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vf_init_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div22.i, i32 %9)
  %cmp2.not.i = icmp ult i32 %div22.i, %9
  br i1 %cmp2.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %vf.i = getelementptr inbounds %struct.siena_nic_data, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vf.i, align 8
  %notmask.i = shl nsw i32 -1, %7
  %12 = xor i32 %notmask.i, -1
  %rem.i13 = and i32 %3, %12
  %txq_mask = getelementptr %struct.siena_vf, ptr %11, i32 %div22.i, i32 27
  %div3.i = lshr i32 %rem.i13, 5
  %arrayidx.i = getelementptr i32, ptr %txq_mask, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %rem.i13, 31
  %15 = shl nuw i32 1, %and.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %neg.i = xor i32 %15, -1
  %and.i11 = and i32 %14, %neg.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i11, ptr %arrayidx.i, align 4
  %txq_count = getelementptr %struct.siena_vf, ptr %11, i32 %div22.i, i32 28
  %18 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txq_count, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %txq_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  %20 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end3.efx_vfdi_flush_wake.exit_crit_edge

if.end3.efx_vfdi_flush_wake.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_vfdi_flush_wake.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %rxq_count.i = getelementptr %struct.siena_vf, ptr %11, i32 %div22.i, i32 30
  %22 = ptrtoint ptr %rxq_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rxq_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.then7_crit_edge, label %land.lhs.true.i.efx_vfdi_flush_wake.exit_crit_edge

land.lhs.true.i.efx_vfdi_flush_wake.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_vfdi_flush_wake.exit

land.lhs.true.i.if.then7_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

efx_vfdi_flush_wake.exit:                         ; preds = %land.lhs.true.i.efx_vfdi_flush_wake.exit_crit_edge, %if.end3.efx_vfdi_flush_wake.exit_crit_edge
  %rxq_retry_count.i = getelementptr %struct.siena_vf, ptr %11, i32 %div22.i, i32 32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxq_retry_count.i, i32 noundef 4) #13
  %24 = ptrtoint ptr %rxq_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %rxq_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.i.not = icmp eq i32 %25, 0
  br i1 %tobool4.i.not, label %efx_vfdi_flush_wake.exit.cleanup_crit_edge, label %efx_vfdi_flush_wake.exit.if.then7_crit_edge

efx_vfdi_flush_wake.exit.if.then7_crit_edge:      ; preds = %efx_vfdi_flush_wake.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

efx_vfdi_flush_wake.exit.cleanup_crit_edge:       ; preds = %efx_vfdi_flush_wake.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %efx_vfdi_flush_wake.exit.if.then7_crit_edge, %land.lhs.true.i.if.then7_crit_edge
  %flush_waitq = getelementptr %struct.siena_vf, ptr %11, i32 %div22.i, i32 25
  tail call void @__wake_up(ptr noundef %flush_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %efx_vfdi_flush_wake.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_siena_sriov_rx_flush_done(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %2, 4095
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %3 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nic_data1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and)
  %cmp.i = icmp ult i32 %and, 128
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %and, -128
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 122
  %5 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vi_scale.i.i, align 8
  %div22.i = lshr i32 %sub.i, %6
  %vf_init_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %7 = ptrtoint ptr %vf_init_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vf_init_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div22.i, i32 %8)
  %cmp2.not.i = icmp ult i32 %div22.i, %8
  br i1 %cmp2.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %vf.i = getelementptr inbounds %struct.siena_nic_data, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf.i, align 8
  %notmask.i = shl nsw i32 -1, %6
  %11 = xor i32 %notmask.i, -1
  %rem.i22 = and i32 %and, %11
  %rxq_mask = getelementptr %struct.siena_vf, ptr %10, i32 %div22.i, i32 29
  %div3.i = lshr i32 %rem.i22, 5
  %arrayidx.i = getelementptr i32, ptr %rxq_mask, i32 %div3.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %rem.i22, 31
  %14 = shl nuw i32 1, %and.i
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %16 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not = icmp eq i32 %16, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %rxq_retry_mask = getelementptr %struct.siena_vf, ptr %10, i32 %div22.i, i32 31
  tail call void @_set_bit(i32 noundef %rem.i22, ptr noundef %rxq_retry_mask) #13
  %rxq_retry_count = getelementptr %struct.siena_vf, ptr %10, i32 %div22.i, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_retry_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rxq_retry_count, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_retry_count, ptr %rxq_retry_count, i32 1, ptr elementtype(i32) %rxq_retry_count) #13, !srcloc !128
  br label %if.end12

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %neg.i = xor i32 %14, -1
  %and.i20 = and i32 %13, %neg.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i20, ptr %arrayidx.i, align 4
  %rxq_count = getelementptr %struct.siena_vf, ptr %10, i32 %div22.i, i32 30
  %19 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rxq_count, align 8
  %dec = add i32 %20, -1
  store i32 %dec, ptr %rxq_count, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  %txq_count.i = getelementptr %struct.siena_vf, ptr %10, i32 %div22.i, i32 28
  %21 = ptrtoint ptr %txq_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %txq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end12.efx_vfdi_flush_wake.exit_crit_edge

if.end12.efx_vfdi_flush_wake.exit_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_vfdi_flush_wake.exit

land.lhs.true.i:                                  ; preds = %if.end12
  %rxq_count.i = getelementptr %struct.siena_vf, ptr %10, i32 %div22.i, i32 30
  %23 = ptrtoint ptr %rxq_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rxq_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool3.not.i = icmp eq i32 %24, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.then14_crit_edge, label %land.lhs.true.i.efx_vfdi_flush_wake.exit_crit_edge

land.lhs.true.i.efx_vfdi_flush_wake.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_vfdi_flush_wake.exit

land.lhs.true.i.if.then14_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

efx_vfdi_flush_wake.exit:                         ; preds = %land.lhs.true.i.efx_vfdi_flush_wake.exit_crit_edge, %if.end12.efx_vfdi_flush_wake.exit_crit_edge
  %rxq_retry_count.i = getelementptr %struct.siena_vf, ptr %10, i32 %div22.i, i32 32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxq_retry_count.i, i32 noundef 4) #13
  %25 = ptrtoint ptr %rxq_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %rxq_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool4.i.not = icmp eq i32 %26, 0
  br i1 %tobool4.i.not, label %efx_vfdi_flush_wake.exit.cleanup_crit_edge, label %efx_vfdi_flush_wake.exit.if.then14_crit_edge

efx_vfdi_flush_wake.exit.if.then14_crit_edge:     ; preds = %efx_vfdi_flush_wake.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

efx_vfdi_flush_wake.exit.cleanup_crit_edge:       ; preds = %efx_vfdi_flush_wake.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14:                                        ; preds = %efx_vfdi_flush_wake.exit.if.then14_crit_edge, %land.lhs.true.i.if.then14_crit_edge
  %flush_waitq = getelementptr %struct.siena_vf, ptr %10, i32 %div22.i, i32 25
  tail call void @__wake_up(ptr noundef %flush_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %efx_vfdi_flush_wake.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_siena_sriov_desc_fetch_err(ptr nocapture noundef readonly %efx, i32 noundef %dmaq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %dmaq)
  %cmp.i = icmp ult i32 %dmaq, 128
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %sub.i = add i32 %dmaq, -128
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 122
  %2 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vi_scale.i.i, align 8
  %div22.i = lshr i32 %sub.i, %3
  %vf_init_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %4 = ptrtoint ptr %vf_init_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_init_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div22.i, i32 %5)
  %cmp2.not.i = icmp ult i32 %div22.i, %5
  br i1 %cmp2.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %vf.i = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf.i, align 8
  %notmask.i = shl nsw i32 -1, %3
  %8 = xor i32 %notmask.i, -1
  %rem.i = and i32 %8, %dmaq
  %call1 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %do.body

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.if.end6_crit_edge, label %if.then4

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 4
  %index = getelementptr %struct.siena_vf, ptr %7, i32 %div22.i, i32 3
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.11, i32 noundef %14, i32 noundef %rem.i) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.body.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %15 = load ptr, ptr @vfdi_workqueue, align 4
  %reset_work = getelementptr %struct.siena_vf, ptr %7, i32 %div22.i, i32 33
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %reset_work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_siena_sriov_reset(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [3 x %union.efx_dword], align 4
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %outlen.i = alloca i32, align 4
  %buf = alloca %struct.efx_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #13
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !120
  %3 = getelementptr inbounds %struct.efx_buffer, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !120
  %5 = getelementptr inbounds %struct.efx_buffer, ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !120
  %call = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b61 = load i1, ptr @efx_siena_sriov_reset.__already_done, align 1
  br i1 %.b61, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !125

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @efx_siena_sriov_reset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1558, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 1558) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %vf_init_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %7 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vf_init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end30.cleanup_crit_edge, label %if.end39

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %9 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nic_data1, align 8
  %vfdi_channel.i = getelementptr inbounds %struct.siena_nic_data, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %vfdi_channel.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vfdi_channel.i, align 4
  %channel.i = getelementptr inbounds %struct.efx_channel, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #13
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %16 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %15) #13, !srcloc !124
  %18 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %19, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #13, !srcloc !124
  %20 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %21, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #13, !srcloc !124
  %22 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %23, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #13
  %24 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %outbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #13
  %25 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %outlen.i, align 4, !annotation !120
  %26 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16777216, ptr %inbuf.i, align 4
  %add.ptr4.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %27 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -2147483648, ptr %add.ptr4.i, align 4
  %vf_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %28 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vf_count.i, align 16
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  %add.ptr14.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %31 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %add.ptr14.i, align 4
  %call.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 48, ptr noundef nonnull %inbuf.i, i32 noundef 12, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef nonnull %outlen.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i) #13
  %call41 = call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef nonnull %buf, i32 noundef 4096, i32 noundef 3072) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.cond.preheader, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end39
  %32 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vf_init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp4662.not = icmp eq i32 %33, 0
  br i1 %cmp4662.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vf47 = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %vf_i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %34 = ptrtoint ptr %vf47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vf47, align 8
  %add.ptr = getelementptr %struct.siena_vf, ptr %35, i32 %vf_i.063
  call fastcc void @efx_siena_sriov_reset_vf(ptr noundef %add.ptr, ptr noundef nonnull %buf)
  %inc = add nuw i32 %vf_i.063, 1
  %36 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vf_init_count, align 4
  %cmp46 = icmp ult i32 %inc, %37
  br i1 %cmp46, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef nonnull %buf) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end39.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_siena_sriov_reset_vf(ptr noundef %vf, ptr nocapture noundef readonly %buffer) unnamed_addr #0 align 64 {
entry:
  %copy_req = alloca [4 x %struct.efx_memcpy_req], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %copy_req) #13
  %2 = call ptr @memset(ptr %copy_req, i32 255, i32 160)
  %len = getelementptr inbounds %struct.efx_buffer, ptr %buffer, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %4)
  %cmp.not = icmp eq i32 %4, 4096
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !125

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/siena_sriov.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 951, 0\0A.popsection", ""() #13, !srcloc !129
  unreachable

do.end8:                                          ; preds = %entry
  %evq0_count = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 24
  %5 = ptrtoint ptr %evq0_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %evq0_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %do.end8.cleanup_crit_edge, label %do.body12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body12:                                        ; preds = %do.end8
  %7 = tail call i32 @llvm.ctpop.i32(i32 %6), !range !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %tobool15.not = icmp ult i32 %7, 2
  br i1 %tobool15.not, label %do.end31, label %do.body23, !prof !125

do.body23:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/siena_sriov.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 955, 0\0A.popsection", ""() #13, !srcloc !131
  unreachable

do.end31:                                         ; preds = %do.body12
  %status_lock = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #13
  %msg_seqno = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 8
  %8 = ptrtoint ptr %msg_seqno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_seqno, align 8
  %shl = shl i32 %9, 24
  %10 = or i32 %shl, 327680
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %inc = add i32 %9, 1
  %12 = ptrtoint ptr %msg_seqno to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %msg_seqno, align 8
  br label %for.body

for.cond41.preheader:                             ; preds = %for.body
  %13 = ptrtoint ptr %evq0_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %evq0_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp43216.not = icmp eq i32 %14, 0
  br i1 %cmp43216.not, label %for.cond41.preheader.for.end84_crit_edge, label %for.body45.lr.ph

for.cond41.preheader.for.end84_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end84

for.body45.lr.ph:                                 ; preds = %for.cond41.preheader
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %dma_addr = getelementptr inbounds %struct.efx_buffer, ptr %buffer, i32 0, i32 1
  %pci_rid = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 1
  %from_buf = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 0, i32 1
  %from_addr = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 0, i32 2
  %to_rid = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 0, i32 3
  %to_addr = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 0, i32 4
  %length = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 0, i32 5
  %arrayidx54.1 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 1
  %from_buf.1 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 1, i32 1
  %from_addr.1 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 1, i32 2
  %to_rid.1 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 1, i32 3
  %to_addr.1 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 1, i32 4
  %length.1 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 1, i32 5
  %arrayidx54.2 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 2
  %from_buf.2 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 2, i32 1
  %from_addr.2 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 2, i32 2
  %to_rid.2 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 2, i32 3
  %to_addr.2 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 2, i32 4
  %length.2 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 2, i32 5
  %arrayidx54.3 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 3
  %from_buf.3 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 3, i32 1
  %from_addr.3 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 3, i32 2
  %to_rid.3 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 3, i32 3
  %to_addr.3 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 3, i32 4
  %length.3 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy_req, i32 0, i32 3, i32 5
  br label %for.body45

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end31
  %pos.0213 = phi i32 [ 0, %do.end31 ], [ %add, %for.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %pos.0213
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %11, ptr %add.ptr, align 1
  %event.sroa.5.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 4
  %18 = ptrtoint ptr %event.sroa.5.0.add.ptr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 128, ptr %event.sroa.5.0.add.ptr.sroa_idx, align 1
  %add = add nuw nsw i32 %pos.0213, 8
  %cmp39 = icmp ult i32 %pos.0213, 4088
  br i1 %cmp39, label %for.body.for.body_crit_edge, label %for.cond41.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond41:                                       ; preds = %for.end65
  %add83 = add i32 %22, %pos.1217
  %19 = ptrtoint ptr %evq0_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %evq0_count, align 8
  %cmp43 = icmp ugt i32 %20, %add83
  br i1 %cmp43, label %for.cond41.for.body45_crit_edge, label %for.cond41.for.end84_crit_edge

for.cond41.for.end84_crit_edge:                   ; preds = %for.cond41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end84

for.cond41.for.body45_crit_edge:                  ; preds = %for.cond41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body45

for.body45:                                       ; preds = %for.cond41.for.body45_crit_edge, %for.body45.lr.ph
  %21 = phi i32 [ %14, %for.body45.lr.ph ], [ %20, %for.cond41.for.body45_crit_edge ]
  %pos.1217 = phi i32 [ 0, %for.body45.lr.ph ], [ %add83, %for.cond41.for.body45_crit_edge ]
  %sub47 = sub i32 %21, %pos.1217
  %22 = tail call i32 @llvm.umin.i32(i32 %sub47, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp51214.not = icmp eq i32 %22, 0
  br i1 %cmp51214.not, label %for.body45.for.end65_crit_edge, label %for.body53.lr.ph

for.body45.for.end65_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end65

for.body53.lr.ph:                                 ; preds = %for.body45
  %23 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %devfn, align 4
  %27 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_addr, align 4
  %conv56 = zext i32 %28 to i64
  %29 = ptrtoint ptr %pci_rid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pci_rid, align 4
  %31 = ptrtoint ptr %from_buf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %from_buf, align 4
  %32 = ptrtoint ptr %copy_req to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %copy_req, align 8
  %33 = ptrtoint ptr %from_addr to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv56, ptr %from_addr, align 8
  %34 = ptrtoint ptr %to_rid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %30, ptr %to_rid, align 8
  %arrayidx60 = getelementptr %struct.siena_vf, ptr %vf, i32 0, i32 23, i32 %pos.1217
  %35 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx60, align 8
  %37 = ptrtoint ptr %to_addr to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %to_addr, align 8
  %38 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4096, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %exitcond.not = icmp eq i32 %22, 1
  br i1 %exitcond.not, label %for.body53.lr.ph.for.end65_crit_edge, label %for.body53.1

for.body53.lr.ph.for.end65_crit_edge:             ; preds = %for.body53.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end65

for.body53.1:                                     ; preds = %for.body53.lr.ph
  %39 = ptrtoint ptr %from_buf.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %from_buf.1, align 4
  %40 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %26, ptr %arrayidx54.1, align 8
  %41 = ptrtoint ptr %from_addr.1 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv56, ptr %from_addr.1, align 8
  %42 = ptrtoint ptr %to_rid.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %30, ptr %to_rid.1, align 8
  %add59.1 = add i32 %pos.1217, 1
  %arrayidx60.1 = getelementptr %struct.siena_vf, ptr %vf, i32 0, i32 23, i32 %add59.1
  %43 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx60.1, align 8
  %45 = ptrtoint ptr %to_addr.1 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %to_addr.1, align 8
  %46 = ptrtoint ptr %length.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4096, ptr %length.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %exitcond.not.1 = icmp eq i32 %22, 2
  br i1 %exitcond.not.1, label %for.body53.1.for.end65_crit_edge, label %for.body53.2

for.body53.1.for.end65_crit_edge:                 ; preds = %for.body53.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end65

for.body53.2:                                     ; preds = %for.body53.1
  %47 = ptrtoint ptr %from_buf.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %from_buf.2, align 4
  %48 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %26, ptr %arrayidx54.2, align 8
  %49 = ptrtoint ptr %from_addr.2 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv56, ptr %from_addr.2, align 8
  %50 = ptrtoint ptr %to_rid.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %30, ptr %to_rid.2, align 8
  %add59.2 = add i32 %pos.1217, 2
  %arrayidx60.2 = getelementptr %struct.siena_vf, ptr %vf, i32 0, i32 23, i32 %add59.2
  %51 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx60.2, align 8
  %53 = ptrtoint ptr %to_addr.2 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %to_addr.2, align 8
  %54 = ptrtoint ptr %length.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4096, ptr %length.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %exitcond.not.2 = icmp eq i32 %22, 3
  br i1 %exitcond.not.2, label %for.body53.2.for.end65_crit_edge, label %for.body53.3

for.body53.2.for.end65_crit_edge:                 ; preds = %for.body53.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end65

for.body53.3:                                     ; preds = %for.body53.2
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %from_buf.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %from_buf.3, align 4
  %56 = ptrtoint ptr %arrayidx54.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %26, ptr %arrayidx54.3, align 8
  %57 = ptrtoint ptr %from_addr.3 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv56, ptr %from_addr.3, align 8
  %58 = ptrtoint ptr %to_rid.3 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %30, ptr %to_rid.3, align 8
  %add59.3 = add i32 %pos.1217, 3
  %arrayidx60.3 = getelementptr %struct.siena_vf, ptr %vf, i32 0, i32 23, i32 %add59.3
  %59 = ptrtoint ptr %arrayidx60.3 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx60.3, align 8
  %61 = ptrtoint ptr %to_addr.3 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %to_addr.3, align 8
  %62 = ptrtoint ptr %length.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4096, ptr %length.3, align 8
  br label %for.end65

for.end65:                                        ; preds = %for.body53.3, %for.body53.2.for.end65_crit_edge, %for.body53.1.for.end65_crit_edge, %for.body53.lr.ph.for.end65_crit_edge, %for.body45.for.end65_crit_edge
  %call = call fastcc i32 @efx_siena_sriov_memcpy(ptr noundef %1, ptr noundef nonnull %copy_req, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool66.not = icmp eq i32 %call, 0
  br i1 %tobool66.not, label %for.cond41, label %if.then67

if.then67:                                        ; preds = %for.end65
  %call68 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then67.for.end84_crit_edge, label %do.body71

if.then67.for.end84_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end84

do.body71:                                        ; preds = %if.then67
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %63 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_enable, align 4
  %and72 = and i32 %64, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.body71.for.end84_crit_edge, label %if.then74

do.body71.for.end84_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end84

if.then74:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %65 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  %sub76 = sub i32 0, %call
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %66, ptr noundef nonnull @.str.41, ptr noundef %pci_name, i32 noundef %sub76) #16
  br label %for.end84

for.end84:                                        ; preds = %if.then74, %do.body71.for.end84_crit_edge, %if.then67.for.end84_crit_edge, %for.cond41.for.end84_crit_edge, %for.cond41.preheader.for.end84_crit_edge
  %index1.i = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 3
  %67 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index1.i, align 8
  %69 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vf, align 8
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %70, i32 0, i32 122
  %71 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vi_scale.i.i, align 8
  %mul.i = shl i32 %68, %72
  %buftbl_base = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 11
  %73 = ptrtoint ptr %buftbl_base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buftbl_base, align 4
  %add87 = add i32 %74, 16
  %evq0_addrs88 = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 23
  %75 = ptrtoint ptr %evq0_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %evq0_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp24.not.i = icmp eq i32 %76, 0
  br i1 %cmp24.not.i, label %for.end84.efx_siena_sriov_bufs.exit_crit_edge, label %do.body.lr.ph.i

for.end84.efx_siena_sriov_bufs.exit_crit_edge:    ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_bufs.exit

do.body.lr.ph.i:                                  ; preds = %for.end84
  %tobool.not.i = icmp eq ptr %evq0_addrs88, null
  %membase.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  br label %do.body.i

do.body.i:                                        ; preds = %cond.end8.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %pos.025.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %cond.end8.i.do.body.i_crit_edge ]
  br i1 %tobool.not.i, label %do.body.i.cond.end8.i_crit_edge, label %cond.true.i

do.body.i.cond.end8.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end8.i

cond.true.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i64, ptr %evq0_addrs88, i32 %pos.025.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx.i, align 8
  %79 = trunc i64 %78 to i32
  %80 = shl i32 %79, 2
  %conv.c.i = and i32 %80, -16384
  %81 = tail call i32 @llvm.bswap.i32(i32 %conv.c.i) #13
  %shr6.i = lshr i64 %78, 30
  %extract.t23.i = trunc i64 %shr6.i to i32
  br label %cond.end8.i

cond.end8.i:                                      ; preds = %cond.true.i, %do.body.i.cond.end8.i_crit_edge
  %buf.sroa.0.0.i = phi i32 [ %81, %cond.true.i ], [ 0, %do.body.i.cond.end8.i_crit_edge ]
  %cond9.off18.i = phi i32 [ %extract.t23.i, %cond.true.i ], [ 0, %do.body.i.cond.end8.i_crit_edge ]
  %82 = tail call i32 @llvm.bswap.i32(i32 %cond9.off18.i) #13
  %83 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %84, i32 8388608
  %add.i = add i32 %pos.025.i, %add87
  %mul.i.i = shl i32 %add.i, 3
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %buf.sroa.0.0.i) #13, !srcloc !124
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %82) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #13
  %inc.i = add nuw i32 %pos.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %76
  br i1 %exitcond.not.i, label %cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge, label %cond.end8.i.do.body.i_crit_edge

cond.end8.i.do.body.i_crit_edge:                  ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge:  ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_bufs.exit

efx_siena_sriov_bufs.exit:                        ; preds = %cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge, %for.end84.efx_siena_sriov_bufs.exit_crit_edge
  %add2.i = shl i32 %mul.i, 4
  %add.i180 = add i32 %add2.i, 16189440
  %biu_lock.i.i181 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  %call3.i.i182 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i181) #13
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %85 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %86, i32 %add.i180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #13, !srcloc !124
  %add7.i.i = add i32 %add2.i, 16189444
  %87 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %88, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 33554432) #13, !srcloc !124
  %add9.i.i = add i32 %add2.i, 16189448
  %89 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %90, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #13, !srcloc !124
  %add11.i.i = add i32 %add2.i, 16189452
  %91 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %92, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i181, i32 noundef %call3.i.i182) #13
  %93 = ptrtoint ptr %evq0_count to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %evq0_count, align 8
  %95 = tail call i32 @llvm.cttz.i32(i32 %94, i1 false) #13, !range !130
  %shl101 = shl nuw nsw i32 %95, 20
  %96 = or i32 %add87, %shl101
  %or105178 = or i32 %96, 8388608
  %97 = tail call i32 @llvm.bswap.i32(i32 %or105178)
  %add.i184 = add i32 %add2.i, 16123904
  %call3.i.i186 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i181) #13
  %98 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i188 = getelementptr i8, ptr %99, i32 %add.i184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i188, i32 %97) #13, !srcloc !124
  %add7.i.i190 = add i32 %add2.i, 16123908
  %100 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i191 = getelementptr i8, ptr %101, i32 %add7.i.i190
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i191, i32 0) #13, !srcloc !124
  %add9.i.i193 = add i32 %add2.i, 16123912
  %102 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i194 = getelementptr i8, ptr %103, i32 %add9.i.i193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i194, i32 0) #13, !srcloc !124
  %add11.i.i196 = add i32 %add2.i, 16123916
  %104 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i197 = getelementptr i8, ptr %105, i32 %add11.i.i196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i197, i32 0) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i181, i32 noundef %call3.i.i186) #13
  %add117 = add i32 %add2.i, 16386048
  %106 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i198 = getelementptr i8, ptr %107, i32 %add117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i198, i32 0) #13, !srcloc !124
  tail call void @mutex_unlock(ptr noundef %status_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %efx_siena_sriov_bufs.exit, %do.end8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %copy_req) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_init_sriov() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.13, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.14) #13
  store ptr %call, ptr @vfdi_workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fini_sriov() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vfdi_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_siena_sriov_set_vf_mac(ptr nocapture noundef readonly %efx, i32 noundef %vf_i, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_init_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %0 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_init_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf_i)
  %cmp.not = icmp ugt i32 %1, %vf_i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %vf2 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf2, align 8
  %add.ptr = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i
  %status_lock = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 20
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #13
  %addr = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 18
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %addr, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i, align 2
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %nic_data2.i = getelementptr inbounds %struct.efx_nic, ptr %13, i32 0, i32 76
  %14 = ptrtoint ptr %nic_data2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nic_data2.i, align 8
  tail call fastcc void @efx_siena_sriov_reset_tx_filter(ptr noundef %add.ptr) #13
  tail call fastcc void @efx_siena_sriov_reset_rx_filter(ptr noundef %add.ptr) #13
  %16 = load ptr, ptr @vfdi_workqueue, align 4
  %peer_work.i = getelementptr inbounds %struct.siena_nic_data, ptr %15, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %peer_work.i) #13
  tail call void @mutex_unlock(ptr noundef %status_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_siena_sriov_set_vf_vlan(ptr nocapture noundef readonly %efx, i32 noundef %vf_i, i16 noundef zeroext %vlan, i8 noundef zeroext %qos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_init_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %0 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_init_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf_i)
  %cmp.not = icmp ugt i32 %1, %vf_i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %vf2 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf2, align 8
  %add.ptr = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i
  %status_lock = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 20
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #13
  %6 = and i16 %vlan, 4095
  %and4 = zext i8 %qos to i16
  %shl = shl i16 %and4, 13
  %or = or i16 %shl, %6
  %tci6 = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 18, i32 1
  %7 = ptrtoint ptr %tci6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %or, ptr %tci6, align 2
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %nic_data2.i = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 76
  %10 = ptrtoint ptr %nic_data2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nic_data2.i, align 8
  tail call fastcc void @efx_siena_sriov_reset_tx_filter(ptr noundef %add.ptr) #13
  tail call fastcc void @efx_siena_sriov_reset_rx_filter(ptr noundef %add.ptr) #13
  %12 = load ptr, ptr @vfdi_workqueue, align 4
  %peer_work.i = getelementptr inbounds %struct.siena_nic_data, ptr %11, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %peer_work.i) #13
  tail call void @mutex_unlock(ptr noundef %status_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_siena_sriov_set_vf_spoofchk(ptr nocapture noundef readonly %efx, i32 noundef %vf_i, i1 noundef zeroext %spoofchk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_init_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %0 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_init_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf_i)
  %cmp.not = icmp ugt i32 %1, %vf_i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %vf2 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf2, align 8
  %txq_lock = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 26
  tail call void @mutex_lock_nested(ptr noundef %txq_lock, i32 noundef 0) #13
  %txq_count = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 28
  %6 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cond = select i1 %spoofchk, i32 2, i32 0
  %tx_filter_mode = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 16
  %8 = ptrtoint ptr %tx_filter_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %tx_filter_mode, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %rc.0 = phi i32 [ 0, %if.then4 ], [ -16, %if.end.if.end5_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %txq_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_siena_sriov_get_vf_config(ptr nocapture noundef readonly %efx, i32 noundef %vf_i, ptr nocapture noundef writeonly %ivi) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_init_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %0 = ptrtoint ptr %vf_init_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_init_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf_i)
  %cmp.not = icmp ugt i32 %1, %vf_i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %vf2 = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf2, align 8
  %6 = ptrtoint ptr %ivi to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %vf_i, ptr %ivi, align 4
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  %addr = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 18
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %9 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mac, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i, align 2
  %max_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 7
  %13 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %max_tx_rate, align 4
  %min_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 6
  %14 = ptrtoint ptr %min_tx_rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %min_tx_rate, align 4
  %tci6 = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 18, i32 1
  %15 = ptrtoint ptr %tci6 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tci6, align 2
  %conv = zext i16 %16 to i32
  %and = and i32 %conv, 4095
  %vlan = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 2
  %17 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %vlan, align 4
  %18 = lshr i32 %conv, 13
  %qos = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 3
  %19 = ptrtoint ptr %qos to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %qos, align 4
  %tx_filter_mode = getelementptr %struct.siena_vf, ptr %5, i32 %vf_i, i32 16
  %20 = ptrtoint ptr %tx_filter_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_filter_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp9 = icmp eq i32 %21, 2
  %conv10 = zext i1 %cmp9 to i32
  %spoofchk = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 4
  %22 = ptrtoint ptr %spoofchk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv10, ptr %spoofchk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @efx_siena_sriov_wanted(ptr nocapture noundef readonly %efx) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %0 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_siena_sriov_configure(ptr nocapture noundef readnone %efx, i32 noundef %num_vfs) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_quiet(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_siena_sriov_handle_no_channel(ptr nocapture noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.15) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %4 = ptrtoint ptr %vf_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vf_count, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_siena_sriov_probe_channel(ptr noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %vfdi_channel = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %vfdi_channel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %channel, ptr %vfdi_channel, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_channel_dummy_op_void(ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_siena_sriov_get_channel_name(ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %buf, i32 noundef %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.16, ptr noundef %1)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_siena_sriov_vfdi(ptr noundef %work) #0 align 64 {
entry:
  %copy = alloca [2 x %struct.efx_memcpy_req], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %buf = getelementptr i8, ptr %work, i32 68
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %copy) #13
  %4 = call ptr @memset(ptr %copy, i32 0, i32 80)
  %pci_rid = getelementptr i8, ptr %work, i32 -24
  %5 = ptrtoint ptr %pci_rid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pci_rid, align 4
  %7 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %copy, align 8
  %req_addr = getelementptr i8, ptr %work, i32 44
  %8 = ptrtoint ptr %req_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %req_addr, align 8
  %from_addr = getelementptr inbounds %struct.efx_memcpy_req, ptr %copy, i32 0, i32 2
  %10 = ptrtoint ptr %from_addr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %from_addr, align 8
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devfn, align 4
  %to_rid = getelementptr inbounds %struct.efx_memcpy_req, ptr %copy, i32 0, i32 3
  %15 = ptrtoint ptr %to_rid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %to_rid, align 8
  %dma_addr = getelementptr i8, ptr %work, i32 72
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %17 to i64
  %to_addr = getelementptr inbounds %struct.efx_memcpy_req, ptr %copy, i32 0, i32 4
  %18 = ptrtoint ptr %to_addr to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %to_addr, align 8
  %length = getelementptr inbounds %struct.efx_memcpy_req, ptr %copy, i32 0, i32 5
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %length, align 8
  %call = call fastcc i32 @efx_siena_sriov_memcpy(ptr noundef %1, ptr noundef nonnull %copy, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %call8 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.if.end14_crit_edge, label %do.body

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.if.end14_crit_edge, label %if.then12

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr i8, ptr %work, i32 -20
  %sub = sub i32 0, %call
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.26, ptr noundef %pci_name, i32 noundef %sub) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.body.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %busy = getelementptr i8, ptr %work, i32 64
  %24 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %busy, align 4
  br label %cleanup

if.end15:                                         ; preds = %entry
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %cmp = icmp ugt i32 %26, 8
  %27 = and i32 %26, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp19.not = icmp eq i32 %27, 0
  %or.cond = or i1 %cmp, %cmp19.not
  br i1 %or.cond, label %do.body51, label %if.then21

if.then21:                                        ; preds = %if.end15
  %arrayidx18 = getelementptr [9 x ptr], ptr @vfdi_ops, i32 0, i32 %26
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx18, align 4
  %call24 = tail call i32 %29(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %do.body28, label %if.then21.if.end80_crit_edge

if.then21.if.end80_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

do.body28:                                        ; preds = %if.then21
  %msg_enable29 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %30 = ptrtoint ptr %msg_enable29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable29, align 4
  %and30 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body28.if.end80_crit_edge, label %do.body33

do.body28.if.end80_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

do.body33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_siena_sriov_vfdi.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_siena_sriov_vfdi, %if.then39)) #13
          to label %if.end80 [label %if.then39], !srcloc !132

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev40 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %32 = ptrtoint ptr %net_dev40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev40, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %3, align 8
  %pci_name42 = getelementptr i8, ptr %work, i32 -20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_siena_sriov_vfdi.__UNIQUE_ID_ddebug535, ptr noundef %33, ptr noundef nonnull @.str.29, i32 noundef %35, ptr noundef %pci_name42) #13
  br label %if.end80

do.body51:                                        ; preds = %if.end15
  %msg_enable52 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %36 = ptrtoint ptr %msg_enable52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable52, align 4
  %and53 = and i32 %37, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.if.end80_crit_edge, label %do.body56

do.body51.if.end80_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

do.body56:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_siena_sriov_vfdi.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_siena_sriov_vfdi, %if.then68)) #13
          to label %if.end80 [label %if.then68], !srcloc !132

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev69 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %38 = ptrtoint ptr %net_dev69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev69, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 8
  %pci_name71 = getelementptr i8, ptr %work, i32 -20
  %42 = ptrtoint ptr %req_addr to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %req_addr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_siena_sriov_vfdi.__UNIQUE_ID_ddebug536, ptr noundef %39, ptr noundef nonnull @.str.30, i32 noundef %41, ptr noundef %pci_name71, i64 noundef %43) #13
  br label %if.end80

if.end80:                                         ; preds = %if.then68, %do.body56, %do.body51.if.end80_crit_edge, %if.then39, %do.body33, %do.body28.if.end80_crit_edge, %if.then21.if.end80_crit_edge
  %rc.0 = phi i32 [ 0, %if.then39 ], [ 0, %do.body28.if.end80_crit_edge ], [ %call24, %if.then21.if.end80_crit_edge ], [ -95, %if.then68 ], [ -95, %do.body51.if.end80_crit_edge ], [ 0, %do.body33 ], [ -95, %do.body56 ]
  %busy81 = getelementptr i8, ptr %work, i32 64
  %44 = ptrtoint ptr %busy81 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %busy81, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !133
  %rc88 = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %rc88 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %rc.0, ptr %rc88, align 8
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %3, align 8
  %47 = call ptr @memset(ptr %copy, i32 0, i32 80)
  %from_buf = getelementptr inbounds %struct.efx_memcpy_req, ptr %copy, i32 0, i32 1
  %48 = ptrtoint ptr %from_buf to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %rc88, ptr %from_buf, align 4
  %49 = ptrtoint ptr %pci_rid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pci_rid, align 4
  %51 = ptrtoint ptr %to_rid to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %to_rid, align 8
  %52 = ptrtoint ptr %req_addr to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %req_addr, align 8
  %add = add i64 %53, 8
  %54 = ptrtoint ptr %to_addr to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add, ptr %to_addr, align 8
  %55 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %length, align 8
  %from_buf103 = getelementptr inbounds [2 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %from_buf103 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %3, ptr %from_buf103, align 4
  %to_rid106 = getelementptr inbounds [2 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %to_rid106 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %50, ptr %to_rid106, align 8
  %to_addr110 = getelementptr inbounds [2 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %to_addr110 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %53, ptr %to_addr110, align 8
  %length112 = getelementptr inbounds [2 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 1, i32 5
  %59 = ptrtoint ptr %length112 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %length112, align 8
  %call114 = call fastcc i32 @efx_siena_sriov_memcpy(ptr noundef %1, ptr noundef nonnull %copy, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %copy) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_siena_sriov_reset_vf_work(ptr noundef %work) #0 align 64 {
entry:
  %buf = alloca %struct.efx_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #13
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !120
  %3 = getelementptr inbounds %struct.efx_buffer, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !120
  %5 = getelementptr inbounds %struct.efx_buffer, ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !120
  %call = call i32 @efx_nic_alloc_buffer(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 4096, i32 noundef 3072) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @efx_siena_sriov_reset_vf(ptr noundef %add.ptr, ptr noundef nonnull %buf)
  call void @efx_nic_free_buffer(ptr noundef %1, ptr noundef nonnull %buf) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_siena_sriov_memcpy(ptr noundef %efx, ptr nocapture noundef readonly %req, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [63 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %inbuf) #13
  %0 = call ptr @memset(ptr %inbuf, i32 0, i32 252)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  tail call void @arm_heavy_mb() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp25208.not = icmp eq i32 %count, 0
  br i1 %cmp25208.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %count, 5
  %1 = tail call i32 @llvm.bswap.i32(i32 %count)
  br label %for.body

for.body:                                         ; preds = %do.body118.for.body_crit_edge, %for.body.lr.ph
  %req.addr.0211 = phi ptr [ %req, %for.body.lr.ph ], [ %incdec.ptr, %do.body118.for.body_crit_edge ]
  %used.0210 = phi i32 [ %mul, %for.body.lr.ph ], [ %used.1, %do.body118.for.body_crit_edge ]
  %index.0209 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body118.for.body_crit_edge ]
  %mul26 = shl i32 %index.0209, 5
  %add.ptr27 = getelementptr i8, ptr %inbuf, i32 %mul26
  %2 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %add.ptr27, align 4
  %to_rid = getelementptr inbounds %struct.efx_memcpy_req, ptr %req.addr.0211, i32 0, i32 3
  %3 = ptrtoint ptr %to_rid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %to_rid, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr38 = getelementptr %union.efx_dword, ptr %add.ptr27, i32 1
  %6 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr38, align 4
  %to_addr = getelementptr inbounds %struct.efx_memcpy_req, ptr %req.addr.0211, i32 0, i32 4
  %7 = ptrtoint ptr %to_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %to_addr, align 8
  %conv44 = trunc i64 %8 to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv44)
  %add.ptr49 = getelementptr %union.efx_dword, ptr %add.ptr27, i32 2
  %10 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr49, align 4
  %shr56 = lshr i64 %8, 32
  %conv57 = trunc i64 %shr56 to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv57)
  %arrayidx63 = getelementptr %union.efx_dword, ptr %add.ptr49, i32 1
  %12 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx63, align 4
  %from_buf = getelementptr inbounds %struct.efx_memcpy_req, ptr %req.addr.0211, i32 0, i32 1
  %13 = ptrtoint ptr %from_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %from_buf, align 4
  %cmp69 = icmp eq ptr %14, null
  br i1 %cmp69, label %if.then71, label %if.else

if.then71:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %req.addr.0211 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req.addr.0211, align 8
  %from_addr73 = getelementptr inbounds %struct.efx_memcpy_req, ptr %req.addr.0211, i32 0, i32 2
  %17 = ptrtoint ptr %from_addr73 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %from_addr73, align 8
  %extract.t = trunc i64 %18 to i32
  %extract = lshr i64 %18, 32
  %extract.t204 = trunc i64 %extract to i32
  br label %do.body118

if.else:                                          ; preds = %for.body
  %length = getelementptr inbounds %struct.efx_memcpy_req, ptr %req.addr.0211, i32 0, i32 5
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 8
  %add75 = add i32 %20, %used.0210
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %add75)
  %cmp76 = icmp ugt i32 %add75, 252
  br i1 %cmp76, label %do.end93, label %if.end109, !prof !121

do.end93:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 270, i32 noundef 9, ptr noundef null) #13
  br label %do.body164

if.end109:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr112 = getelementptr i8, ptr %inbuf, i32 %used.0210
  %21 = call ptr @memcpy(ptr %add.ptr112, ptr %14, i32 %20)
  br label %do.body118

do.body118:                                       ; preds = %if.end109, %if.then71
  %used.1 = phi i32 [ %used.0210, %if.then71 ], [ %add75, %if.end109 ]
  %from_addr.0.off0 = phi i32 [ %extract.t, %if.then71 ], [ %used.0210, %if.end109 ]
  %from_addr.0.off32 = phi i32 [ %extract.t204, %if.then71 ], [ 0, %if.end109 ]
  %from_rid.0 = phi i32 [ %16, %if.then71 ], [ 256, %if.end109 ]
  %22 = tail call i32 @llvm.bswap.i32(i32 %from_rid.0)
  %add.ptr123 = getelementptr %union.efx_dword, ptr %add.ptr27, i32 4
  %23 = ptrtoint ptr %add.ptr123 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %add.ptr123, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %from_addr.0.off0)
  %add.ptr134 = getelementptr %union.efx_dword, ptr %add.ptr27, i32 5
  %25 = ptrtoint ptr %add.ptr134 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %add.ptr134, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %from_addr.0.off32)
  %arrayidx147 = getelementptr %union.efx_dword, ptr %add.ptr134, i32 1
  %27 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx147, align 4
  %length154 = getelementptr inbounds %struct.efx_memcpy_req, ptr %req.addr.0211, i32 0, i32 5
  %28 = ptrtoint ptr %length154 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length154, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %add.ptr159 = getelementptr %union.efx_dword, ptr %add.ptr27, i32 7
  %31 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %add.ptr159, align 4
  %incdec.ptr = getelementptr %struct.efx_memcpy_req, ptr %req.addr.0211, i32 1
  %inc = add nuw i32 %index.0209, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %do.body118.for.end_crit_edge, label %do.body118.for.body_crit_edge

do.body118.for.body_crit_edge:                    ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body118.for.end_crit_edge:                     ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.body118.for.end_crit_edge, %entry.for.end_crit_edge
  %used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %used.1, %do.body118.for.end_crit_edge ]
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 49, ptr noundef nonnull %inbuf, i32 noundef %used.0.lcssa, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  br label %do.body164

do.body164:                                       ; preds = %for.end, %do.end93
  %rc.0 = phi i32 [ -105, %do.end93 ], [ %call, %for.end ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  call void @arm_heavy_mb() #13
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %inbuf) #13
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_vfdi_init_evq(ptr noundef %vf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %buf = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 8
  %u = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 8
  %buf_count3 = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %buf_count3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_count3, align 4
  %index1.i = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 3
  %8 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index1.i, align 8
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 122
  %10 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vi_scale.i.i, align 8
  %mul.i = shl i32 %9, %11
  %add.i = add i32 %5, 128
  %add2.i = add i32 %add.i, %mul.i
  %buftbl_base = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 11
  %12 = ptrtoint ptr %buftbl_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buftbl_base, align 4
  %mul = shl i32 %5, 5
  %add = or i32 %mul, 16
  %add4 = add i32 %add, %13
  %index.highbits.i = lshr i32 %5, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.highbits.i)
  %cmp.i.not = icmp eq i32 %index.highbits.i, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %7) #13, !range !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %tobool.not.i = icmp ugt i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.i74 = icmp ugt i32 %7, 16
  %15 = or i1 %cmp.i74, %tobool.not.i
  br i1 %15, label %lor.lhs.false.if.then_crit_edge, label %if.end12

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call7 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.cleanup_crit_edge, label %if.then10

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.31, ptr noundef %pci_name, i32 noundef %5, i32 noundef %7) #16
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %addr14 = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp24.not.i = icmp eq i32 %7, 0
  br i1 %cmp24.not.i, label %if.end12.efx_siena_sriov_bufs.exit_crit_edge, label %do.body.lr.ph.i

if.end12.efx_siena_sriov_bufs.exit_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_bufs.exit

do.body.lr.ph.i:                                  ; preds = %if.end12
  %tobool.not.i75 = icmp eq ptr %addr14, null
  %membase.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  br label %do.body.i

do.body.i:                                        ; preds = %cond.end8.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %pos.025.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %cond.end8.i.do.body.i_crit_edge ]
  br i1 %tobool.not.i75, label %do.body.i.cond.end8.i_crit_edge, label %cond.true.i

do.body.i.cond.end8.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end8.i

cond.true.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i64, ptr %addr14, i32 %pos.025.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 2
  %conv.c.i = and i32 %23, -16384
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv.c.i) #13
  %shr6.i = lshr i64 %21, 30
  %extract.t23.i = trunc i64 %shr6.i to i32
  br label %cond.end8.i

cond.end8.i:                                      ; preds = %cond.true.i, %do.body.i.cond.end8.i_crit_edge
  %buf.sroa.0.0.i = phi i32 [ %24, %cond.true.i ], [ 0, %do.body.i.cond.end8.i_crit_edge ]
  %cond9.off18.i = phi i32 [ %extract.t23.i, %cond.true.i ], [ 0, %do.body.i.cond.end8.i_crit_edge ]
  %25 = tail call i32 @llvm.bswap.i32(i32 %cond9.off18.i) #13
  %26 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 8388608
  %add.i76 = add i32 %pos.025.i, %add4
  %mul.i.i = shl i32 %add.i76, 3
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %buf.sroa.0.0.i) #13, !srcloc !124
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %25) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #13
  %inc.i = add nuw nsw i32 %pos.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge, label %cond.end8.i.do.body.i_crit_edge

cond.end8.i.do.body.i_crit_edge:                  ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge:  ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_bufs.exit

efx_siena_sriov_bufs.exit:                        ; preds = %cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge, %if.end12.efx_siena_sriov_bufs.exit_crit_edge
  %mul.i77 = shl i32 %add2.i, 4
  %add.i78 = add i32 %mul.i77, 16187392
  %biu_lock.i.i79 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  %call3.i.i80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i79) #13
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %add.i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #13, !srcloc !124
  %add7.i.i = add i32 %mul.i77, 16187396
  %30 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %31, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 33554432) #13, !srcloc !124
  %add9.i.i = add i32 %mul.i77, 16187400
  %32 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %33, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #13, !srcloc !124
  %add11.i.i = add i32 %mul.i77, 16187404
  %34 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %35, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i79, i32 noundef %call3.i.i80) #13
  %36 = tail call i32 @llvm.cttz.i32(i32 %7, i1 false) #13, !range !130
  %shl = shl nuw nsw i32 %36, 20
  %37 = or i32 %shl, %add4
  %or2572 = or i32 %37, 8388608
  %38 = tail call i32 @llvm.bswap.i32(i32 %or2572)
  %add.i82 = add i32 %mul.i77, 16121856
  %call3.i.i84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i79) #13
  %39 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i86 = getelementptr i8, ptr %40, i32 %add.i82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i86, i32 %38) #13, !srcloc !124
  %add7.i.i88 = add i32 %mul.i77, 16121860
  %41 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i89 = getelementptr i8, ptr %42, i32 %add7.i.i88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i89, i32 0) #13, !srcloc !124
  %add9.i.i91 = add i32 %mul.i77, 16121864
  %43 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i92 = getelementptr i8, ptr %44, i32 %add9.i.i91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i92, i32 0) #13, !srcloc !124
  %add11.i.i94 = add i32 %mul.i77, 16121868
  %45 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i95 = getelementptr i8, ptr %46, i32 %add11.i.i94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i95, i32 0) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i79, i32 noundef %call3.i.i84) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then34, label %efx_siena_sriov_bufs.exit.cleanup_crit_edge

efx_siena_sriov_bufs.exit.cleanup_crit_edge:      ; preds = %efx_siena_sriov_bufs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34:                                        ; preds = %efx_siena_sriov_bufs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %evq0_addrs = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 23
  %mul39 = shl i32 %7, 3
  %47 = call ptr @memcpy(ptr %evq0_addrs, ptr %addr14, i32 %mul39)
  %evq0_count = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 24
  %48 = ptrtoint ptr %evq0_count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %7, ptr %evq0_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %efx_siena_sriov_bufs.exit.cleanup_crit_edge, %if.then10, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then10 ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %efx_siena_sriov_bufs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_vfdi_init_rxq(ptr noundef %vf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %buf = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 8
  %u = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 8
  %evq = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 2
  %6 = ptrtoint ptr %evq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evq, align 8
  %buf_count4 = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %buf_count4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_count4, align 4
  %buftbl_base = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 11
  %10 = ptrtoint ptr %buftbl_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buftbl_base, align 4
  %mul = shl i32 %5, 5
  %add = or i32 %mul, 8
  %add5 = add i32 %add, %11
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 122
  %12 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vi_scale.i.i, align 8
  %index.highbits.i = lshr i32 %7, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.highbits.i)
  %cmp.i.not = icmp eq i32 %index.highbits.i, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %index.highbits.i106 = lshr i32 %5, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.highbits.i106)
  %cmp.i107 = icmp ne i32 %index.highbits.i106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %5)
  %cmp = icmp ugt i32 %5, 62
  %or.cond = or i1 %cmp, %cmp.i107
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false8

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %14 = tail call i32 @llvm.ctpop.i32(i32 %9) #13, !range !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %tobool.not.i = icmp ugt i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp.i108 = icmp ugt i32 %9, 8
  %15 = or i1 %cmp.i108, %tobool.not.i
  br i1 %15, label %lor.lhs.false8.if.then_crit_edge, label %if.end15

lor.lhs.false8.if.then_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false8.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call10 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body.cleanup_crit_edge, label %if.then13

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.32, ptr noundef %pci_name, i32 noundef %5, i32 noundef %7, i32 noundef %9) #16
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false8
  %rxq_mask = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 29
  %rem.i = and i32 %5, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div5.i = lshr i32 %5, 5
  %add.ptr.i = getelementptr i32, ptr %rxq_mask, i32 %div5.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %21, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %22 = and i32 %21, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool20.not = icmp eq i32 %22, 0
  br i1 %tobool20.not, label %if.end15.if.end22_crit_edge, label %if.then21

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %rxq_count = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 30
  %23 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rxq_count, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %rxq_count, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end15.if.end22_crit_edge
  %addr24 = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp24.not.i = icmp eq i32 %9, 0
  br i1 %cmp24.not.i, label %if.end22.efx_siena_sriov_bufs.exit_crit_edge, label %do.body.lr.ph.i

if.end22.efx_siena_sriov_bufs.exit_crit_edge:     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_bufs.exit

do.body.lr.ph.i:                                  ; preds = %if.end22
  %tobool.not.i109 = icmp eq ptr %addr24, null
  %membase.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  br label %do.body.i

do.body.i:                                        ; preds = %cond.end8.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %pos.025.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %cond.end8.i.do.body.i_crit_edge ]
  br i1 %tobool.not.i109, label %do.body.i.cond.end8.i_crit_edge, label %cond.true.i

do.body.i.cond.end8.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end8.i

cond.true.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i64, ptr %addr24, i32 %pos.025.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 2
  %conv.c.i = and i32 %28, -16384
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv.c.i) #13
  %shr6.i = lshr i64 %26, 30
  %extract.t23.i = trunc i64 %shr6.i to i32
  br label %cond.end8.i

cond.end8.i:                                      ; preds = %cond.true.i, %do.body.i.cond.end8.i_crit_edge
  %buf.sroa.0.0.i = phi i32 [ %29, %cond.true.i ], [ 0, %do.body.i.cond.end8.i_crit_edge ]
  %cond9.off18.i = phi i32 [ %extract.t23.i, %cond.true.i ], [ 0, %do.body.i.cond.end8.i_crit_edge ]
  %30 = tail call i32 @llvm.bswap.i32(i32 %cond9.off18.i) #13
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %32, i32 8388608
  %add.i = add i32 %pos.025.i, %add5
  %mul.i.i = shl i32 %add.i, 3
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i110, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %buf.sroa.0.0.i) #13, !srcloc !124
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %30) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #13
  %inc.i = add nuw i32 %pos.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge, label %cond.end8.i.do.body.i_crit_edge

cond.end8.i.do.body.i_crit_edge:                  ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge:  ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_bufs.exit

efx_siena_sriov_bufs.exit:                        ; preds = %cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge, %if.end22.efx_siena_sriov_bufs.exit_crit_edge
  %label27 = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 3
  %33 = ptrtoint ptr %label27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %label27, align 4
  %index1.i = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 3
  %35 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index1.i, align 8
  %37 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vf, align 8
  %vi_scale.i.i111 = getelementptr inbounds %struct.efx_nic, ptr %38, i32 0, i32 122
  %39 = ptrtoint ptr %vi_scale.i.i111 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vi_scale.i.i111, align 8
  %mul.i = shl i32 %36, %40
  %add.i112 = add i32 %mul.i, 128
  %add2.i = add i32 %add.i112, %7
  %shl = shl i32 %add2.i, 24
  %and28 = shl i32 %34, 5
  %shl31 = and i32 %and28, 992
  %or33101 = or i32 %shl31, %shl
  %41 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #13, !range !130
  %shl35 = shl nuw nsw i32 %41, 3
  %flags = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 4
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 8
  %and39 = shl i32 %43, 1
  %shl42 = and i32 %and39, 2
  %or37102 = or i32 %shl35, %or33101
  %or44103 = or i32 %or37102, %shl42
  %44 = or i32 %or44103, 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %shl47 = shl i32 %add5, 4
  %shr = lshr i32 %add2.i, 8
  %or52104 = or i32 %shl47, %shr
  %46 = tail call i32 @llvm.bswap.i32(i32 %or52104)
  %add2.i122 = add i32 %add.i112, %5
  %mul.i123 = shl i32 %add2.i122, 4
  %add.i124 = add i32 %mul.i123, 15990784
  %biu_lock.i.i125 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  %call3.i.i126 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i125) #13
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %47 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 %add.i124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %45) #13, !srcloc !124
  %add7.i.i = add i32 %mul.i123, 15990788
  %49 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %50, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %46) #13, !srcloc !124
  %add9.i.i = add i32 %mul.i123, 15990792
  %51 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %52, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #13, !srcloc !124
  %add11.i.i = add i32 %mul.i123, 15990796
  %53 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %54, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i125, i32 noundef %call3.i.i126) #13
  br label %cleanup

cleanup:                                          ; preds = %efx_siena_sriov_bufs.exit, %if.then13, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %efx_siena_sriov_bufs.exit ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_vfdi_init_txq(ptr noundef %vf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %buf = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 8
  %u = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 8
  %evq = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 2
  %6 = ptrtoint ptr %evq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evq, align 8
  %buf_count4 = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %buf_count4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_count4, align 4
  %buftbl_base = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 11
  %10 = ptrtoint ptr %buftbl_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buftbl_base, align 4
  %mul = shl i32 %5, 5
  %add = add i32 %11, %mul
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 122
  %12 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vi_scale.i.i, align 8
  %index.highbits.i = lshr i32 %7, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.highbits.i)
  %cmp.i = icmp ne i32 %index.highbits.i, 0
  %index.highbits.i122 = lshr i32 %5, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.highbits.i122)
  %cmp.i123 = icmp ne i32 %index.highbits.i122, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.i123
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false6

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false6:                                   ; preds = %entry
  %14 = load i32, ptr @vf_max_tx_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %14)
  %cmp.not = icmp ult i32 %5, %14
  br i1 %cmp.not, label %lor.lhs.false7, label %lor.lhs.false6.if.then_crit_edge

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false6
  %15 = tail call i32 @llvm.ctpop.i32(i32 %9) #13, !range !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %tobool.not.i = icmp ugt i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp.i124 = icmp ugt i32 %9, 8
  %16 = or i1 %cmp.i124, %tobool.not.i
  br i1 %16, label %lor.lhs.false7.if.then_crit_edge, label %if.end14

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false6.if.then_crit_edge, %entry.if.then_crit_edge
  %call9 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 4
  %and = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %19 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.33, ptr noundef %pci_name, i32 noundef %5, i32 noundef %7, i32 noundef %9) #16
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false7
  %txq_lock = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %txq_lock, i32 noundef 0) #13
  %21 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %u, align 8
  %txq_mask = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 27
  %rem.i = and i32 %22, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div5.i = lshr i32 %22, 5
  %add.ptr.i = getelementptr i32, ptr %txq_mask, i32 %div5.i
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %24
  store i32 %or.i, ptr %add.ptr.i, align 4
  %25 = and i32 %shl.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool19.not = icmp eq i32 %25, 0
  br i1 %tobool19.not, label %if.end14.if.end21_crit_edge, label %if.then20

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %txq_count = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 28
  %26 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %txq_count, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %txq_count, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end14.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %txq_lock) #13
  %addr24 = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp24.not.i = icmp eq i32 %9, 0
  br i1 %cmp24.not.i, label %if.end21.efx_siena_sriov_bufs.exit_crit_edge, label %do.body.lr.ph.i

if.end21.efx_siena_sriov_bufs.exit_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_bufs.exit

do.body.lr.ph.i:                                  ; preds = %if.end21
  %tobool.not.i125 = icmp eq ptr %addr24, null
  %membase.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  br label %do.body.i

do.body.i:                                        ; preds = %cond.end8.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %pos.025.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %cond.end8.i.do.body.i_crit_edge ]
  br i1 %tobool.not.i125, label %do.body.i.cond.end8.i_crit_edge, label %cond.true.i

do.body.i.cond.end8.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end8.i

cond.true.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i64, ptr %addr24, i32 %pos.025.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 2
  %conv.c.i = and i32 %31, -16384
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv.c.i) #13
  %shr6.i = lshr i64 %29, 30
  %extract.t23.i = trunc i64 %shr6.i to i32
  br label %cond.end8.i

cond.end8.i:                                      ; preds = %cond.true.i, %do.body.i.cond.end8.i_crit_edge
  %buf.sroa.0.0.i = phi i32 [ %32, %cond.true.i ], [ 0, %do.body.i.cond.end8.i_crit_edge ]
  %cond9.off18.i = phi i32 [ %extract.t23.i, %cond.true.i ], [ 0, %do.body.i.cond.end8.i_crit_edge ]
  %33 = tail call i32 @llvm.bswap.i32(i32 %cond9.off18.i) #13
  %34 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %35, i32 8388608
  %add.i = add i32 %pos.025.i, %add
  %mul.i.i = shl i32 %add.i, 3
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i126, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %buf.sroa.0.0.i) #13, !srcloc !124
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %33) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #13
  %inc.i = add nuw i32 %pos.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge, label %cond.end8.i.do.body.i_crit_edge

cond.end8.i.do.body.i_crit_edge:                  ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge:  ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_bufs.exit

efx_siena_sriov_bufs.exit:                        ; preds = %cond.end8.i.efx_siena_sriov_bufs.exit_crit_edge, %if.end21.efx_siena_sriov_bufs.exit_crit_edge
  %tx_filter_mode = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 16
  %36 = ptrtoint ptr %tx_filter_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_filter_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp26 = icmp eq i32 %37, 2
  %label28 = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 3
  %38 = ptrtoint ptr %label28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %label28, align 4
  %index1.i = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 3
  %40 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index1.i, align 8
  %42 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vf, align 8
  %vi_scale.i.i127 = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 122
  %44 = ptrtoint ptr %vi_scale.i.i127 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vi_scale.i.i127, align 8
  %mul.i = shl i32 %41, %45
  %add.i128 = add i32 %mul.i, 128
  %add2.i = add i32 %add.i128, %7
  %shl = shl i32 %add2.i, 24
  %and29 = shl i32 %39, 5
  %shl33 = and i32 %and29, 992
  %or35117 = or i32 %shl33, %shl
  %46 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #13, !range !130
  %shl37 = shl nuw nsw i32 %46, 3
  %or39118 = or i32 %or35117, %shl37
  %47 = tail call i32 @llvm.bswap.i32(i32 %or39118)
  %shl42 = shl i32 %add, 4
  %shr = lshr i32 %add2.i, 8
  %or47119 = or i32 %shl42, %shr
  %48 = tail call i32 @llvm.bswap.i32(i32 %or47119)
  %49 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vi_scale.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp53 = icmp eq i32 %50, 0
  %. = select i1 %cmp53, i32 0, i32 64
  %or60120 = select i1 %cmp26, i32 41, i32 9
  %51 = or i32 %or60120, %.
  %add2.i138 = add i32 %add.i128, %5
  %mul.i139 = shl i32 %add2.i138, 4
  %add.i140 = add i32 %mul.i139, 16056320
  %biu_lock.i.i141 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  %call3.i.i142 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i141) #13
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %52 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 %add.i140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %47) #13, !srcloc !124
  %add7.i.i = add i32 %mul.i139, 16056324
  %54 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %55, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %48) #13, !srcloc !124
  %add9.i.i = add i32 %mul.i139, 16056328
  %56 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %57, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %51) #13, !srcloc !124
  %add11.i.i = add i32 %mul.i139, 16056332
  %58 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %59, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i141, i32 noundef %call3.i.i142) #13
  br label %cleanup

cleanup:                                          ; preds = %efx_siena_sriov_bufs.exit, %if.then12, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %efx_siena_sriov_bufs.exit ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then12 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_vfdi_fini_all_queues(ptr noundef %vf) #0 align 64 {
entry:
  %inbuf = alloca [63 x %union.efx_dword], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %vi_scale.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 122
  %2 = ptrtoint ptr %vi_scale.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vi_scale.i, align 8
  %shl.i = shl nuw i32 1, %3
  %index = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 8
  %mul = shl i32 %5, %3
  %add = add i32 %mul, 128
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %inbuf) #13
  %6 = call ptr @memset(ptr %inbuf, i32 0, i32 252)
  tail call void @rtnl_lock() #13
  tail call void @siena_prepare_flush(ptr noundef %1) #13
  tail call void @rtnl_unlock() #13
  %txq_mask = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 27
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %rxq_mask = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %index3.0372 = phi i32 [ 0, %entry ], [ %inc37, %for.inc.for.body_crit_edge ]
  %rxqs_count.0371 = phi i32 [ 0, %entry ], [ %rxqs_count.1, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %index3.0372, 5
  %arrayidx.i = getelementptr i32, ptr %txq_mask, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %index3.0372, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.body5

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %add6 = add i32 %index3.0372, %add
  %11 = or i32 %add6, 4096
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #13
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #13, !srcloc !124
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %16, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #13, !srcloc !124
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %18, i32 2568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #13, !srcloc !124
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %20, i32 2572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #13, !srcloc !124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #13
  br label %if.end

if.end:                                           ; preds = %do.body5, %for.body.if.end_crit_edge
  %arrayidx.i256 = getelementptr i32, ptr %rxq_mask, i32 %div3.i
  %21 = ptrtoint ptr %arrayidx.i256 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i256, align 4
  %23 = and i32 %22, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool15.not = icmp eq i32 %23, 0
  br i1 %tobool15.not, label %if.end.for.inc_crit_edge, label %do.body17

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mul19 = shl i32 %rxqs_count.0371, 2
  %add.ptr20 = getelementptr i8, ptr %inbuf, i32 %mul19
  %add23 = add i32 %index3.0372, %add
  %24 = tail call i32 @llvm.bswap.i32(i32 %add23)
  %25 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %add.ptr20, align 4
  %inc = add i32 %rxqs_count.0371, 1
  br label %for.inc

for.inc:                                          ; preds = %do.body17, %if.end.for.inc_crit_edge
  %rxqs_count.1 = phi i32 [ %inc, %do.body17 ], [ %rxqs_count.0371, %if.end.for.inc_crit_edge ]
  %inc37 = add nuw i32 %index3.0372, 1
  %exitcond.not = icmp eq i32 %inc37, %shl.i
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %rxq_retry_count = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_retry_count, i32 noundef 4) #13
  %26 = ptrtoint ptr %rxq_retry_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %rxq_retry_count, align 4
  %txq_count = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 28
  %rxq_count = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 30
  %flush_waitq = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 25
  %rxq_retry_mask = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 31
  br label %land.rhs

while.cond.loopexit:                              ; preds = %for.inc155
  %tobool38.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool38.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.land.rhs_crit_edge

while.cond.loopexit.land.rhs_crit_edge:           ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs:                                         ; preds = %while.cond.loopexit.land.rhs_crit_edge, %for.end
  %timeout.0384 = phi i32 [ 100, %for.end ], [ %__ret.1, %while.cond.loopexit.land.rhs_crit_edge ]
  %rxqs_count.2383 = phi i32 [ %rxqs_count.1, %for.end ], [ %rxqs_count.4, %while.cond.loopexit.land.rhs_crit_edge ]
  %27 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not = icmp eq i32 %28, 0
  br i1 %tobool39.not, label %lor.rhs, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %29 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %txq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool40.not = icmp eq i32 %30, 0
  br i1 %tobool40.not, label %lor.rhs.while.end_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  %mul42 = shl i32 %rxqs_count.2383, 2
  %call44 = call i32 @efx_mcdi_rpc(ptr noundef %1, i32 noundef 39, ptr noundef nonnull %inbuf, i32 noundef %mul42, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end58, label %while.body.if.end64_crit_edge, !prof !121

while.body.if.end64_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

do.end58:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 718, i32 noundef 9, ptr noundef null) #13
  br label %if.end64

if.end64:                                         ; preds = %do.end58, %while.body.if.end64_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 722) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  %31 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end64.efx_vfdi_flush_wake.exit_crit_edge

if.end64.efx_vfdi_flush_wake.exit_crit_edge:      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_vfdi_flush_wake.exit

land.lhs.true.i:                                  ; preds = %if.end64
  %33 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rxq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool3.not.i = icmp eq i32 %34, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end121_crit_edge, label %land.lhs.true.i.efx_vfdi_flush_wake.exit_crit_edge

land.lhs.true.i.efx_vfdi_flush_wake.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_vfdi_flush_wake.exit

land.lhs.true.i.if.end121_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

efx_vfdi_flush_wake.exit:                         ; preds = %land.lhs.true.i.efx_vfdi_flush_wake.exit_crit_edge, %if.end64.efx_vfdi_flush_wake.exit_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_retry_count, i32 noundef 4) #13
  %35 = ptrtoint ptr %rxq_retry_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %rxq_retry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool4.i.not = icmp eq i32 %36, 0
  br i1 %tobool4.i.not, label %if.then92, label %efx_vfdi_flush_wake.exit.if.end121_crit_edge

efx_vfdi_flush_wake.exit.if.end121_crit_edge:     ; preds = %efx_vfdi_flush_wake.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then92:                                        ; preds = %efx_vfdi_flush_wake.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %37 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  br label %for.cond94

for.cond94:                                       ; preds = %cleanup, %if.then92
  %__ret93.0 = phi i32 [ %timeout.0384, %if.then92 ], [ %call117, %cleanup ]
  %call95 = call i32 @prepare_to_wait_event(ptr noundef %flush_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  %38 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %txq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i264 = icmp eq i32 %39, 0
  br i1 %tobool.not.i264, label %land.lhs.true.i267, label %for.cond94.efx_vfdi_flush_wake.exit272_crit_edge

for.cond94.efx_vfdi_flush_wake.exit272_crit_edge: ; preds = %for.cond94
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_vfdi_flush_wake.exit272

land.lhs.true.i267:                               ; preds = %for.cond94
  %40 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rxq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool3.not.i266 = icmp eq i32 %41, 0
  br i1 %tobool3.not.i266, label %efx_vfdi_flush_wake.exit272.thread, label %land.lhs.true.i267.efx_vfdi_flush_wake.exit272_crit_edge

land.lhs.true.i267.efx_vfdi_flush_wake.exit272_crit_edge: ; preds = %land.lhs.true.i267
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_vfdi_flush_wake.exit272

efx_vfdi_flush_wake.exit272.thread:               ; preds = %land.lhs.true.i267
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret93.0)
  %tobool102.not360 = icmp eq i32 %__ret93.0, 0
  %spec.store.select188361 = select i1 %tobool102.not360, i32 1, i32 %__ret93.0
  br label %for.end118

efx_vfdi_flush_wake.exit272:                      ; preds = %land.lhs.true.i267.efx_vfdi_flush_wake.exit272_crit_edge, %for.cond94.efx_vfdi_flush_wake.exit272_crit_edge
  %call.i.i.i269 = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_retry_count, i32 noundef 4) #13
  %42 = ptrtoint ptr %rxq_retry_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %rxq_retry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool4.i270.not = icmp eq i32 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret93.0)
  %tobool109.not = icmp eq i32 %__ret93.0, 0
  br i1 %tobool4.i270.not, label %44, label %for.end118.loopexit.split.loop.exit375

44:                                               ; preds = %efx_vfdi_flush_wake.exit272
  br i1 %tobool109.not, label %.for.end118_crit_edge, label %cleanup

.for.end118_crit_edge:                            ; preds = %44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end118

cleanup:                                          ; preds = %44
  call void @__sanitizer_cov_trace_pc() #15
  %call117 = call i32 @schedule_timeout(i32 noundef %__ret93.0) #13
  br label %for.cond94

for.end118.loopexit.split.loop.exit375:           ; preds = %efx_vfdi_flush_wake.exit272
  call void @__sanitizer_cov_trace_pc() #15
  %spec.store.select188.le = select i1 %tobool109.not, i32 1, i32 %__ret93.0
  br label %for.end118

for.end118:                                       ; preds = %for.end118.loopexit.split.loop.exit375, %.for.end118_crit_edge, %efx_vfdi_flush_wake.exit272.thread
  %__ret93.2.ph = phi i32 [ %spec.store.select188361, %efx_vfdi_flush_wake.exit272.thread ], [ %spec.store.select188.le, %for.end118.loopexit.split.loop.exit375 ], [ 0, %.for.end118_crit_edge ]
  call void @finish_wait(ptr noundef %flush_waitq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end121

if.end121:                                        ; preds = %for.end118, %efx_vfdi_flush_wake.exit.if.end121_crit_edge, %land.lhs.true.i.if.end121_crit_edge
  %__ret.1 = phi i32 [ %timeout.0384, %efx_vfdi_flush_wake.exit.if.end121_crit_edge ], [ %__ret93.2.ph, %for.end118 ], [ %timeout.0384, %land.lhs.true.i.if.end121_crit_edge ]
  br label %for.body126

for.body126:                                      ; preds = %for.inc155.for.body126_crit_edge, %if.end121
  %index3.1381 = phi i32 [ 0, %if.end121 ], [ %inc156, %for.inc155.for.body126_crit_edge ]
  %rxqs_count.3380 = phi i32 [ 0, %if.end121 ], [ %rxqs_count.4, %for.inc155.for.body126_crit_edge ]
  %call128 = call i32 @_test_and_clear_bit(i32 noundef %index3.1381, ptr noundef %rxq_retry_mask) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %for.body126.for.inc155_crit_edge, label %if.then130

for.body126.for.inc155_crit_edge:                 ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc155

if.then130:                                       ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i260 = call zeroext i1 @__kasan_check_write(ptr noundef %rxq_retry_count, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %rxq_retry_count, i32 1, i32 3, i32 1) #13
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_retry_count, ptr %rxq_retry_count, i32 1, ptr elementtype(i32) %rxq_retry_count) #13, !srcloc !136
  %mul135 = shl i32 %rxqs_count.3380, 2
  %add.ptr136 = getelementptr i8, ptr %inbuf, i32 %mul135
  %add140 = add i32 %index3.1381, %add
  %46 = call i32 @llvm.bswap.i32(i32 %add140)
  %47 = ptrtoint ptr %add.ptr136 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %add.ptr136, align 4
  %inc153 = add i32 %rxqs_count.3380, 1
  br label %for.inc155

for.inc155:                                       ; preds = %if.then130, %for.body126.for.inc155_crit_edge
  %rxqs_count.4 = phi i32 [ %inc153, %if.then130 ], [ %rxqs_count.3380, %for.body126.for.inc155_crit_edge ]
  %inc156 = add nuw i32 %index3.1381, 1
  %exitcond390.not = icmp eq i32 %inc156, %shl.i
  br i1 %exitcond390.not, label %while.cond.loopexit, label %for.inc155.for.body126_crit_edge

for.inc155.for.body126_crit_edge:                 ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body126

while.end:                                        ; preds = %lor.rhs.while.end_crit_edge, %while.cond.loopexit.while.end_crit_edge
  %tobool38.not.lcssa = phi i32 [ -110, %while.cond.loopexit.while.end_crit_edge ], [ 0, %lor.rhs.while.end_crit_edge ]
  call void @rtnl_lock() #13
  call void @siena_finish_flush(ptr noundef %1) #13
  call void @rtnl_unlock() #13
  br label %for.body168

for.body168:                                      ; preds = %for.body168.for.body168_crit_edge, %while.end
  %index3.2387 = phi i32 [ 0, %while.end ], [ %inc174, %for.body168.for.body168_crit_edge ]
  %add169 = add i32 %index3.2387, %add
  %mul.i = shl i32 %add169, 4
  %add.i = add i32 %mul.i, 15990784
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #13
  %48 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #13, !srcloc !124
  %add7.i.i = add i32 %mul.i, 15990788
  %50 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %51, i32 %add7.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #13, !srcloc !124
  %add9.i.i = add i32 %mul.i, 15990792
  %52 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %53, i32 %add9.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #13, !srcloc !124
  %add11.i.i = add i32 %mul.i, 15990796
  %54 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %55, i32 %add11.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #13, !srcloc !124
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i.i) #13
  %add.i274 = add i32 %mul.i, 16056320
  %call3.i.i276 = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #13
  %56 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i278 = getelementptr i8, ptr %57, i32 %add.i274
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i278, i32 0) #13, !srcloc !124
  %add7.i.i280 = add i32 %mul.i, 16056324
  %58 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i.i281 = getelementptr i8, ptr %59, i32 %add7.i.i280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i281, i32 0) #13, !srcloc !124
  %add9.i.i283 = add i32 %mul.i, 16056328
  %60 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i.i284 = getelementptr i8, ptr %61, i32 %add9.i.i283
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i284, i32 0) #13, !srcloc !124
  %add11.i.i286 = add i32 %mul.i, 16056332
  %62 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i287 = getelementptr i8, ptr %63, i32 %add11.i.i286
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i287, i32 0) #13, !srcloc !124
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i.i276) #13
  %add.i289 = add i32 %mul.i, 16121856
  %call3.i.i291 = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #13
  %64 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i293 = getelementptr i8, ptr %65, i32 %add.i289
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i293, i32 0) #13, !srcloc !124
  %add7.i.i295 = add i32 %mul.i, 16121860
  %66 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i.i296 = getelementptr i8, ptr %67, i32 %add7.i.i295
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i296, i32 0) #13, !srcloc !124
  %add9.i.i298 = add i32 %mul.i, 16121864
  %68 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i.i299 = getelementptr i8, ptr %69, i32 %add9.i.i298
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i299, i32 0) #13, !srcloc !124
  %add11.i.i301 = add i32 %mul.i, 16121868
  %70 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i302 = getelementptr i8, ptr %71, i32 %add11.i.i301
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i302, i32 0) #13, !srcloc !124
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i.i291) #13
  %add.i304 = add i32 %mul.i, 16187392
  %call3.i.i306 = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #13
  %72 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i308 = getelementptr i8, ptr %73, i32 %add.i304
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i308, i32 0) #13, !srcloc !124
  %add7.i.i310 = add i32 %mul.i, 16187396
  %74 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i.i311 = getelementptr i8, ptr %75, i32 %add7.i.i310
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i311, i32 0) #13, !srcloc !124
  %add9.i.i313 = add i32 %mul.i, 16187400
  %76 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i.i314 = getelementptr i8, ptr %77, i32 %add9.i.i313
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i314, i32 0) #13, !srcloc !124
  %add11.i.i316 = add i32 %mul.i, 16187404
  %78 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i317 = getelementptr i8, ptr %79, i32 %add11.i.i316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i317, i32 0) #13, !srcloc !124
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i.i306) #13
  %inc174 = add nuw i32 %index3.2387, 1
  %exitcond391.not = icmp eq i32 %inc174, %shl.i
  br i1 %exitcond391.not, label %for.end175, label %for.body168.for.body168_crit_edge

for.body168.for.body168_crit_edge:                ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body168

for.end175:                                       ; preds = %for.body168
  %buftbl_base = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 11
  %80 = ptrtoint ptr %buftbl_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %buftbl_base, align 4
  %82 = ptrtoint ptr %vi_scale.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vi_scale.i, align 8
  %mul177 = shl i32 32, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %83)
  %cmp24.not.i = icmp ugt i32 %83, 26
  br i1 %cmp24.not.i, label %for.end175.efx_siena_sriov_bufs.exit_crit_edge, label %for.end175.do.body.i_crit_edge

for.end175.do.body.i_crit_edge:                   ; preds = %for.end175
  br label %do.body.i

for.end175.efx_siena_sriov_bufs.exit_crit_edge:   ; preds = %for.end175
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_bufs.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.end175.do.body.i_crit_edge
  %pos.025.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %for.end175.do.body.i_crit_edge ]
  %84 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %85, i32 8388608
  %add.i321 = add i32 %pos.025.i, %81
  %mul.i.i = shl i32 %add.i321, 3
  %call3.i.i322 = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #13
  %add.ptr.i.i323 = getelementptr i8, ptr %add.ptr.i, i32 %mul.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i323, i32 0) #13, !srcloc !124
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i323, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 0) #13, !srcloc !124
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i.i322) #13
  %inc.i = add nuw i32 %pos.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul177
  br i1 %exitcond.not.i, label %do.body.i.efx_siena_sriov_bufs.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i.efx_siena_sriov_bufs.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_siena_sriov_bufs.exit

efx_siena_sriov_bufs.exit:                        ; preds = %do.body.i.efx_siena_sriov_bufs.exit_crit_edge, %for.end175.efx_siena_sriov_bufs.exit_crit_edge
  %86 = call ptr @memset(ptr %txq_mask, i32 0, i32 32)
  %call.i.i.i325 = call zeroext i1 @__kasan_check_write(ptr noundef %rxq_retry_count, i32 noundef 4) #13
  %87 = ptrtoint ptr %rxq_retry_count to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 0, ptr %rxq_retry_count, align 4
  %evq0_count = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 24
  %88 = ptrtoint ptr %evq0_count to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %evq0_count, align 8
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %inbuf) #13
  ret i32 %tobool38.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_vfdi_insert_filter(ptr noundef %vf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %nic_data2 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data2, align 8
  %buf = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 10
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 8
  %u = getelementptr inbounds %struct.vfdi_req, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u, align 8
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 122
  %8 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vi_scale.i.i, align 8
  %index.highbits.i = lshr i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.highbits.i)
  %cmp.i.not = icmp eq i32 %index.highbits.i, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rx_filtering = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 12
  %10 = ptrtoint ptr %rx_filtering to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rx_filtering, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end11, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  %flags9 = getelementptr inbounds %struct.vfdi_req, ptr %5, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags9, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.34, ptr noundef %pci_name, i32 noundef %7, i32 noundef %17) #16
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %flags13 = getelementptr inbounds %struct.vfdi_req, ptr %5, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags13, align 4
  %20 = and i32 %19, 3
  %rx_filter_flags = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 13
  %21 = ptrtoint ptr %rx_filter_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rx_filter_flags, align 4
  %rx_filter_qid = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 14
  %22 = ptrtoint ptr %rx_filter_qid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %7, ptr %rx_filter_qid, align 8
  %23 = ptrtoint ptr %rx_filtering to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %rx_filtering, align 8
  tail call fastcc void @efx_siena_sriov_reset_rx_filter(ptr noundef %vf)
  %24 = load ptr, ptr @vfdi_workqueue, align 4
  %peer_work = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %peer_work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then7, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then7 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_vfdi_set_status_page(ptr noundef %vf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %buf = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 8
  %u = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4
  %peer_page_count = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 2
  %4 = ptrtoint ptr %peer_page_count to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %peer_page_count, align 8
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %u, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 508, i64 %5)
  %cmp = icmp ugt i64 %5, 508
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.39, ptr noundef %pci_name) #16
  br label %cleanup

if.end9:                                          ; preds = %entry
  %nic_data2 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %12 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nic_data2, align 8
  %local_lock = getelementptr inbounds %struct.siena_nic_data, ptr %13, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %local_lock, i32 noundef 0) #13
  %status_lock = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #13
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %u, align 8
  %status_addr = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 19
  %16 = ptrtoint ptr %status_addr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %status_addr, align 8
  %peer_page_addrs = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 21
  %17 = ptrtoint ptr %peer_page_addrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peer_page_addrs, align 4
  tail call void @kfree(ptr noundef %18) #13
  %19 = ptrtoint ptr %peer_page_addrs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %peer_page_addrs, align 4
  %peer_page_count13 = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 22
  %20 = ptrtoint ptr %peer_page_count13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %peer_page_count13, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool14.not = icmp eq i64 %5, 0
  br i1 %tobool14.not, label %if.end9.if.end28_crit_edge, label %if.then15

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then15:                                        ; preds = %if.end9
  %conv = trunc i64 %5 to i32
  %21 = shl nuw nsw i32 %conv, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #17
  %22 = ptrtoint ptr %peer_page_addrs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i.i, ptr %peer_page_addrs, align 4
  %tobool19.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool19.not, label %if.then15.if.end28_crit_edge, label %if.then20

if.then15.if.end28_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %peer_page_addr = getelementptr inbounds %struct.vfdi_req, ptr %3, i32 0, i32 4, i32 0, i32 4
  %23 = call ptr @memcpy(ptr %call8.i.i, ptr %peer_page_addr, i32 %21)
  %24 = ptrtoint ptr %peer_page_count13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %peer_page_count13, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.then15.if.end28_crit_edge, %if.end9.if.end28_crit_edge
  tail call fastcc void @__efx_siena_sriov_push_vf_status(ptr noundef %vf)
  tail call void @mutex_unlock(ptr noundef %status_lock) #13
  tail call void @mutex_unlock(ptr noundef %local_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then7, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then7 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_vfdi_clear_status_page(ptr noundef %vf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %status_lock = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #13
  %status_addr = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 19
  %0 = ptrtoint ptr %status_addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %status_addr, align 8
  tail call void @mutex_unlock(ptr noundef %status_lock) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @siena_prepare_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @siena_finish_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_siena_sriov_reset_rx_filter(ptr noundef %vf) unnamed_addr #0 align 64 {
entry:
  %filter = alloca %struct.efx_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %filter) #13
  %rx_filter_id = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 15
  %2 = ptrtoint ptr %rx_filter_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_filter_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then:                                          ; preds = %entry
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 4
  %filter_remove_safe.i = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 78
  %6 = ptrtoint ptr %filter_remove_safe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %filter_remove_safe.i, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 3, i32 noundef %3) #13
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.do.end13_crit_edge, label %do.body4

if.then.do.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

do.body4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_siena_sriov_reset_rx_filter.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_siena_sriov_reset_rx_filter, %if.then9)) #13
          to label %do.end13 [label %if.then9], !srcloc !132

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  %12 = ptrtoint ptr %rx_filter_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_filter_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_siena_sriov_reset_rx_filter.__UNIQUE_ID_ddebug530, ptr noundef %11, ptr noundef nonnull @.str.36, ptr noundef %pci_name, i32 noundef %13) #13
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body4, %if.then.do.end13_crit_edge
  %14 = ptrtoint ptr %rx_filter_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %rx_filter_id, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %entry.if.end15_crit_edge
  %rx_filtering = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 12
  %15 = ptrtoint ptr %rx_filtering to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rx_filtering, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %lor.lhs.false

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end15
  %addr = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 18
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 4
  %add.ptr.i = getelementptr %struct.siena_vf, ptr %vf, i32 0, i32 18, i32 0, i32 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %20 to i32
  %or.i = or i32 %18, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end20

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  %tci = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tci, align 2
  %23 = and i16 %22, 4095
  %rx_filter_flags = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 13
  %24 = ptrtoint ptr %rx_filter_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_filter_flags, align 4
  %rx_filter_qid = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 14
  %26 = ptrtoint ptr %rx_filter_qid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_filter_qid, align 8
  %index1.i = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 3
  %28 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index1.i, align 8
  %30 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vf, align 8
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %31, i32 0, i32 122
  %32 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vi_scale.i.i, align 8
  %mul.i = shl i32 %29, %33
  %add.i = add i32 %27, 128
  %add2.i = add i32 %add.i, %mul.i
  %34 = getelementptr inbounds i8, ptr %filter, i32 8
  %or.i127 = shl i32 %25, 12
  %bf.value2.i = and i32 %or.i127, 225280
  %rss_context.i = getelementptr inbounds %struct.efx_filter_spec, ptr %filter, i32 0, i32 1
  %bf.value7.i = and i32 %add2.i, 4095
  %bf.set5.i = or i32 %bf.value7.i, %bf.value2.i
  %bf.set9.i = or i32 %bf.set5.i, 819200
  %35 = call ptr @memset(ptr %rss_context.i, i32 0, i32 64)
  %36 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bf.set9.i, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool26.not = icmp eq i16 %23, 0
  %spec.select = select i1 %tobool26.not, i16 -1, i16 %23
  %cmp2.i = icmp eq ptr %addr, null
  %or.cond.i = and i1 %cmp2.i, %tobool26.not
  br i1 %or.cond.i, label %do.body42, label %if.end.i

if.end.i:                                         ; preds = %if.end20
  br i1 %tobool26.not, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i = or i32 %bf.set5.i, 269254656
  %37 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %bf.set.i, ptr %filter, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %spec.select, ptr %34, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  br i1 %cmp2.i, label %if.end9.i.do.end50_crit_edge, label %if.then12.i

if.end9.i.do.end50_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load13.i = load i32, ptr %filter, align 4
  %bf.set20.i = or i32 %bf.load13.i, 16777216
  store i32 %bf.set20.i, ptr %filter, align 4
  %loc_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %filter, i32 0, i32 4
  %40 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %18, ptr %loc_mac.i, align 4
  %add.ptr1.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %filter, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %20, ptr %add.ptr1.i.i, align 4
  br label %do.end50

do.body42:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/siena_sriov.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #13, !srcloc !137
  unreachable

do.end50:                                         ; preds = %if.then12.i, %if.end9.i.do.end50_crit_edge
  %type.i129 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %type.i129 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %type.i129, align 4
  %filter_insert.i = getelementptr inbounds %struct.efx_nic_type, ptr %43, i32 0, i32 77
  %44 = ptrtoint ptr %filter_insert.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %filter_insert.i, align 4
  %call.i130 = call i32 %45(ptr noundef %1, ptr noundef nonnull %filter, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp52 = icmp slt i32 %call.i130, 0
  %msg_enable56 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %46 = ptrtoint ptr %msg_enable56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable56, align 4
  %and57 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %cmp52, label %do.body55, label %do.body66

do.body55:                                        ; preds = %do.end50
  br i1 %tobool58.not, label %do.body55.cleanup_crit_edge, label %if.then59

do.body55.cleanup_crit_edge:                      ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then59:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev60 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %48 = ptrtoint ptr %net_dev60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev60, align 4
  %pci_name61 = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.37, ptr noundef %pci_name61) #16
  br label %cleanup

do.body66:                                        ; preds = %do.end50
  br i1 %tobool58.not, label %do.body66.do.end92_crit_edge, label %do.body71

do.body66.do.end92_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end92

do.body71:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_siena_sriov_reset_rx_filter.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_siena_sriov_reset_rx_filter, %if.then83)) #13
          to label %do.end92 [label %if.then83], !srcloc !132

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev84 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %50 = ptrtoint ptr %net_dev84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev84, align 4
  %pci_name85 = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_siena_sriov_reset_rx_filter.__UNIQUE_ID_ddebug531, ptr noundef %51, ptr noundef nonnull @.str.38, ptr noundef %pci_name85, i32 noundef %call.i130) #13
  br label %do.end92

do.end92:                                         ; preds = %if.then83, %do.body71, %do.body66.do.end92_crit_edge
  %52 = ptrtoint ptr %rx_filter_id to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i130, ptr %rx_filter_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %if.then59, %do.body55.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %filter) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__efx_siena_sriov_push_vf_status(ptr noundef %vf) unnamed_addr #0 align 64 {
entry:
  %copy = alloca [4 x %struct.efx_memcpy_req], align 8
  %event = alloca %union.efx_qword, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %nic_data2 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data2, align 8
  %vfdi_status = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %vfdi_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfdi_status, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %copy) #13
  %6 = call ptr @memset(ptr %copy, i32 255, i32 160)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #13
  %7 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %event, align 8, !annotation !120
  %status_lock = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 20
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %status_lock) #13
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !125

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 410, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %status_addr = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 19
  %8 = ptrtoint ptr %status_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %status_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool23.not = icmp eq i64 %9, 0
  br i1 %tobool23.not, label %do.end41, label %if.end.if.end47_crit_edge, !prof !121

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 411, i32 noundef 9, ptr noundef null) #13
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  %local = getelementptr inbounds %struct.vfdi_status, ptr %5, i32 0, i32 10
  %addr55 = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 18
  %10 = ptrtoint ptr %addr55 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %addr55, align 8
  %12 = ptrtoint ptr %local to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %local, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %5, align 4
  %generation_end = getelementptr inbounds %struct.vfdi_status, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %generation_end to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %generation_end, align 4
  %16 = call ptr @memset(ptr %copy, i32 0, i32 160)
  %from_buf = getelementptr inbounds %struct.efx_memcpy_req, ptr %copy, i32 0, i32 1
  %17 = ptrtoint ptr %from_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %from_buf, align 4
  %pci_rid = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 1
  %18 = ptrtoint ptr %pci_rid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pci_rid, align 4
  %to_rid = getelementptr inbounds %struct.efx_memcpy_req, ptr %copy, i32 0, i32 3
  %20 = ptrtoint ptr %to_rid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %to_rid, align 8
  %21 = ptrtoint ptr %status_addr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %status_addr, align 8
  %to_addr = getelementptr inbounds %struct.efx_memcpy_req, ptr %copy, i32 0, i32 4
  %23 = ptrtoint ptr %to_addr to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %to_addr, align 8
  %length = getelementptr inbounds %struct.efx_memcpy_req, ptr %copy, i32 0, i32 5
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %length, align 8
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devfn, align 4
  %arrayidx61 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx61, align 8
  %dma_addr = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr, align 4
  %add63 = add i32 %31, 8
  %conv = zext i32 %add63 to i64
  %from_addr = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %from_addr to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %from_addr, align 8
  %to_rid67 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %to_rid67 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %19, ptr %to_rid67, align 8
  %add70 = add i64 %22, 8
  %to_addr72 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %to_addr72 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %add70, ptr %to_addr72, align 8
  %length73 = getelementptr inbounds %struct.vfdi_status, ptr %5, i32 0, i32 3
  %35 = ptrtoint ptr %length73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length73, align 4
  %sub = add i32 %36, -8
  %length75 = getelementptr inbounds [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 1, i32 5
  %37 = ptrtoint ptr %length75 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %length75, align 8
  %local_page_list = getelementptr inbounds %struct.siena_nic_data, ptr %3, i32 0, i32 8
  %peer_page_count = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 22
  %38 = ptrtoint ptr %local_page_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %epp.0191 = load ptr, ptr %local_page_list, align 4
  %cmp.not192 = icmp eq ptr %epp.0191, %local_page_list
  br i1 %cmp.not192, label %if.end47.for.end_crit_edge, label %for.body.lr.ph

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end47
  %peer_page_addrs = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %if.end109.for.body_crit_edge, %for.body.lr.ph
  %epp.0195 = phi ptr [ %epp.0191, %for.body.lr.ph ], [ %epp.0, %if.end109.for.body_crit_edge ]
  %pos.0194 = phi i32 [ 2, %for.body.lr.ph ], [ %pos.1, %if.end109.for.body_crit_edge ]
  %count.0193 = phi i32 [ 0, %for.body.lr.ph ], [ %inc110, %if.end109.for.body_crit_edge ]
  %39 = ptrtoint ptr %peer_page_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %peer_page_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0193, i32 %40)
  %cmp81 = icmp eq i32 %count.0193, %40
  br i1 %cmp81, label %for.body.for.end_crit_edge, label %if.end84

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end84:                                         ; preds = %for.body
  %arrayidx85 = getelementptr [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 %pos.0194
  %from_buf86 = getelementptr [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 %pos.0194, i32 1
  %41 = ptrtoint ptr %from_buf86 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %from_buf86, align 4
  %42 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev, align 4
  %devfn88 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %devfn88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %devfn88, align 4
  %46 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx85, align 8
  %addr91 = getelementptr inbounds %struct.efx_endpoint_page, ptr %epp.0195, i32 0, i32 2
  %47 = ptrtoint ptr %addr91 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr91, align 4
  %conv92 = zext i32 %48 to i64
  %from_addr94 = getelementptr [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 %pos.0194, i32 2
  %49 = ptrtoint ptr %from_addr94 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv92, ptr %from_addr94, align 8
  %50 = ptrtoint ptr %pci_rid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pci_rid, align 4
  %to_rid97 = getelementptr [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 %pos.0194, i32 3
  %52 = ptrtoint ptr %to_rid97 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %to_rid97, align 8
  %53 = ptrtoint ptr %peer_page_addrs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %peer_page_addrs, align 4
  %arrayidx98 = getelementptr i64, ptr %54, i32 %count.0193
  %55 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx98, align 8
  %to_addr100 = getelementptr [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 %pos.0194, i32 4
  %57 = ptrtoint ptr %to_addr100 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %to_addr100, align 8
  %length102 = getelementptr [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 %pos.0194, i32 5
  %58 = ptrtoint ptr %length102 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4096, ptr %length102, align 8
  %inc103 = add i32 %pos.0194, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc103)
  %cmp104 = icmp eq i32 %inc103, 4
  br i1 %cmp104, label %if.then106, label %if.end84.if.end109_crit_edge

if.end84.if.end109_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then106:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %call108 = call fastcc i32 @efx_siena_sriov_memcpy(ptr noundef %1, ptr noundef nonnull %copy, i32 noundef 4)
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end84.if.end109_crit_edge
  %pos.1 = phi i32 [ 0, %if.then106 ], [ %inc103, %if.end84.if.end109_crit_edge ]
  %inc110 = add i32 %count.0193, 1
  %59 = ptrtoint ptr %epp.0195 to i32
  call void @__asan_load4_noabort(i32 %59)
  %epp.0 = load ptr, ptr %epp.0195, align 4
  %cmp.not = icmp eq ptr %epp.0, %local_page_list
  br i1 %cmp.not, label %if.end109.for.end_crit_edge, label %if.end109.for.body_crit_edge

if.end109.for.body_crit_edge:                     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end109.for.end_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end109.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end47.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 2, %if.end47.for.end_crit_edge ], [ %pos.0194, %for.body.for.end_crit_edge ], [ %pos.1, %if.end109.for.end_crit_edge ]
  %from_buf118 = getelementptr [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 %pos.0.lcssa, i32 1
  %60 = ptrtoint ptr %from_buf118 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %generation_end, ptr %from_buf118, align 4
  %61 = ptrtoint ptr %pci_rid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pci_rid, align 4
  %to_rid121 = getelementptr [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 %pos.0.lcssa, i32 3
  %63 = ptrtoint ptr %to_rid121 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %to_rid121, align 8
  %64 = ptrtoint ptr %status_addr to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %status_addr, align 8
  %add123 = add i64 %65, 4
  %to_addr125 = getelementptr [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 %pos.0.lcssa, i32 4
  %66 = ptrtoint ptr %to_addr125 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add123, ptr %to_addr125, align 8
  %length127 = getelementptr [4 x %struct.efx_memcpy_req], ptr %copy, i32 0, i32 %pos.0.lcssa, i32 5
  %67 = ptrtoint ptr %length127 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %length127, align 8
  %add129 = add i32 %pos.0.lcssa, 1
  %call130 = call fastcc i32 @efx_siena_sriov_memcpy(ptr noundef %1, ptr noundef nonnull %copy, i32 noundef %add129)
  %msg_seqno = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 8
  %68 = ptrtoint ptr %msg_seqno to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %msg_seqno, align 8
  %shl = shl i32 %69, 24
  %70 = or i32 %shl, 262144
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %72 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %event, align 8
  %arrayidx136 = getelementptr inbounds [2 x i32], ptr %event, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 128, ptr %arrayidx136, align 4
  %inc140 = add i32 %69, 1
  %74 = ptrtoint ptr %msg_seqno to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %inc140, ptr %msg_seqno, align 8
  %index = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 3
  %75 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index, align 8
  %vi_scale.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 122
  %77 = ptrtoint ptr %vi_scale.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vi_scale.i, align 8
  %mul = shl i32 %76, %78
  %add142 = add i32 %mul, 128
  call void @efx_farch_generate_event(ptr noundef %1, i32 noundef %add142, ptr noundef nonnull %event) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #13
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %copy) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_generate_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_siena_sriov_reset_tx_filter(ptr noundef %vf) unnamed_addr #0 align 64 {
entry:
  %filter = alloca %struct.efx_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %filter) #13
  %tx_filter_id = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 17
  %2 = ptrtoint ptr %tx_filter_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_filter_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then:                                          ; preds = %entry
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 4
  %filter_remove_safe.i = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 78
  %6 = ptrtoint ptr %filter_remove_safe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %filter_remove_safe.i, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 3, i32 noundef %3) #13
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.do.end13_crit_edge, label %do.body4

if.then.do.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

do.body4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_siena_sriov_reset_tx_filter.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_siena_sriov_reset_tx_filter, %if.then9)) #13
          to label %do.end13 [label %if.then9], !srcloc !132

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %pci_name = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  %12 = ptrtoint ptr %tx_filter_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_filter_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_siena_sriov_reset_tx_filter.__UNIQUE_ID_ddebug528, ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef %pci_name, i32 noundef %13) #13
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body4, %if.then.do.end13_crit_edge
  %14 = ptrtoint ptr %tx_filter_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tx_filter_id, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %entry.if.end15_crit_edge
  %addr = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 18
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  %add.ptr.i = getelementptr %struct.siena_vf, ptr %vf, i32 0, i32 18, i32 0, i32 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %18 to i32
  %or.i = or i32 %16, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %tx_filter_mode = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 16
  %19 = ptrtoint ptr %tx_filter_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_filter_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp20 = icmp eq i32 %20, 1
  br i1 %cmp20, label %land.lhs.true, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end19
  %21 = load i32, ptr @vf_max_tx_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp21 = icmp ult i32 %21, 3
  br i1 %cmp21, label %if.then22, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %tx_filter_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %tx_filter_mode, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true.if.end24_crit_edge, %if.end19.if.end24_crit_edge
  %tci = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tci, align 2
  %25 = and i16 %24, 4095
  %index1.i = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 3
  %26 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index1.i, align 8
  %28 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vf, align 8
  %vi_scale.i.i = getelementptr inbounds %struct.efx_nic, ptr %29, i32 0, i32 122
  %30 = ptrtoint ptr %vi_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vi_scale.i.i, align 8
  %mul.i = shl i32 %27, %31
  %add2.i = add i32 %mul.i, 128
  %32 = getelementptr inbounds i8, ptr %filter, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 64)
  %bf.value.i = and i32 %add2.i, 4095
  %bf.set6.i = or i32 %bf.value.i, 851968
  %34 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bf.set6.i, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool30.not = icmp eq i16 %25, 0
  %spec.select = select i1 %tobool30.not, i16 -1, i16 %25
  %cmp2.i = icmp eq ptr %addr, null
  %or.cond.i = and i1 %cmp2.i, %tobool30.not
  br i1 %or.cond.i, label %do.body46, label %if.end.i

if.end.i:                                         ; preds = %if.end24
  br i1 %tobool30.not, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i = or i32 %bf.value.i, 269287424
  %35 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %bf.set.i, ptr %filter, align 4
  %outer_vid.i = getelementptr inbounds %struct.efx_filter_spec, ptr %filter, i32 0, i32 2
  %36 = ptrtoint ptr %outer_vid.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %spec.select, ptr %outer_vid.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  br i1 %cmp2.i, label %if.end9.i.do.end54_crit_edge, label %if.then12.i

if.end9.i.do.end54_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load13.i = load i32, ptr %filter, align 4
  %bf.set20.i = or i32 %bf.load13.i, 16777216
  store i32 %bf.set20.i, ptr %filter, align 4
  %loc_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %filter, i32 0, i32 4
  %38 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %16, ptr %loc_mac.i, align 4
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %filter, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %add.ptr1.i.i, align 4
  br label %do.end54

do.body46:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/siena_sriov.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 330, 0\0A.popsection", ""() #13, !srcloc !138
  unreachable

do.end54:                                         ; preds = %if.then12.i, %if.end9.i.do.end54_crit_edge
  %type.i131 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %type.i131 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %type.i131, align 4
  %filter_insert.i = getelementptr inbounds %struct.efx_nic_type, ptr %43, i32 0, i32 77
  %44 = ptrtoint ptr %filter_insert.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %filter_insert.i, align 4
  %call.i132 = call i32 %45(ptr noundef %1, ptr noundef nonnull %filter, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp56 = icmp slt i32 %call.i132, 0
  %msg_enable60 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %46 = ptrtoint ptr %msg_enable60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable60, align 4
  %and61 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %cmp56, label %do.body59, label %do.body70

do.body59:                                        ; preds = %do.end54
  br i1 %tobool62.not, label %do.body59.cleanup_crit_edge, label %if.then63

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then63:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev64 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %48 = ptrtoint ptr %net_dev64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev64, align 4
  %pci_name65 = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.44, ptr noundef %pci_name65) #16
  br label %cleanup

do.body70:                                        ; preds = %do.end54
  br i1 %tobool62.not, label %do.body70.do.end96_crit_edge, label %do.body75

do.body70.do.end96_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end96

do.body75:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_siena_sriov_reset_tx_filter.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_siena_sriov_reset_tx_filter, %if.then87)) #13
          to label %do.end96 [label %if.then87], !srcloc !132

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev88 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %50 = ptrtoint ptr %net_dev88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev88, align 4
  %pci_name89 = getelementptr inbounds %struct.siena_vf, ptr %vf, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_siena_sriov_reset_tx_filter.__UNIQUE_ID_ddebug529, ptr noundef %51, ptr noundef nonnull @.str.45, ptr noundef %pci_name89, i32 noundef %call.i132) #13
  br label %do.end96

do.end96:                                         ; preds = %if.then87, %do.body75, %do.body70.do.end96_crit_edge
  %52 = ptrtoint ptr %tx_filter_id to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i132, ptr %tx_filter_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end96, %if.then63, %do.body59.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %filter) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !50, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !74, !76, !77, !79, !81, !83, !85, !87, !89, !90, !91, !93, !95, !96, !98, !100, !102, !104, !105, !106, !108, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__param_vf_max_tx_channels, !1, !"__param_vf_max_tx_channels", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 176, i32 1}
!2 = !{ptr @__UNIQUE_ID_vf_max_tx_channelstype524, !1, !"__UNIQUE_ID_vf_max_tx_channelstype524", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_vf_max_tx_channels525, !4, !"__UNIQUE_ID_vf_max_tx_channels525", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 177, i32 1}
!5 = !{ptr @__param_max_vfs, !6, !"__param_max_vfs", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 181, i32 1}
!7 = !{ptr @__UNIQUE_ID_max_vfstype526, !6, !"__UNIQUE_ID_max_vfstype526", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_max_vfs527, !9, !"__UNIQUE_ID_max_vfs527", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 182, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1060, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @efx_siena_sriov_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @efx_siena_sriov_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @efx_siena_sriov_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1323, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @efx_siena_sriov_init.__key.6, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1324, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1345, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1451, i32 3}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1467, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1544, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1558, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1583, i32 19}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @vfdi_workqueue, !39, !"vfdi_workqueue", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 189, i32 33}
!40 = !{ptr @__param_str_vf_max_tx_channels, !1, !"__param_str_vf_max_tx_channels", i1 false, i1 false}
!41 = !{ptr @vf_max_tx_channels, !42, !"vf_max_tx_channels", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 175, i32 21}
!43 = !{ptr @__param_str_max_vfs, !6, !"__param_str_max_vfs", i1 false, i1 false}
!44 = !{ptr @max_vfs, !45, !"max_vfs", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 180, i32 12}
!46 = !{ptr @efx_siena_sriov_channel_type, !47, !"efx_siena_sriov_channel_type", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1043, i32 38}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1022, i32 2}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1040, i32 21}
!52 = !{ptr @efx_siena_sriov_vf_alloc.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1212, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @efx_siena_sriov_vf_alloc.__key.18, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1213, i32 3}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @efx_siena_sriov_vf_alloc.__key.20, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1214, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @efx_siena_sriov_vf_alloc.__key.22, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1215, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @efx_siena_sriov_vf_alloc.__key.24, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1216, i32 3}
!66 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 890, i32 4}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 900, i32 4}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @efx_siena_sriov_vfdi.__UNIQUE_ID_ddebug535, !70, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 905, i32 3}
!76 = !{ptr @efx_siena_sriov_vfdi.__UNIQUE_ID_ddebug536, !75, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!77 = !{ptr @vfdi_ops, !78, !"vfdi_ops", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 860, i32 28}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 542, i32 4}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 585, i32 4}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 626, i32 4}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 770, i32 4}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 355, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @efx_siena_sriov_reset_rx_filter.__UNIQUE_ID_ddebug530, !88, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 374, i32 3}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 378, i32 3}
!95 = !{ptr @efx_siena_sriov_reset_rx_filter.__UNIQUE_ID_ddebug531, !94, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 817, i32 4}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 1267, i32 5}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 980, i32 5}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 311, i32 3}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @efx_siena_sriov_reset_tx_filter.__UNIQUE_ID_ddebug528, !103, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 334, i32 3}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/sfc/siena_sriov.c", i32 338, i32 3}
!110 = !{ptr @efx_siena_sriov_reset_tx_filter.__UNIQUE_ID_ddebug529, !109, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i8 0, i8 2}
!123 = !{i64 2162354119, i64 2162354623, i64 2162354156, i64 2162354212, i64 2162354246, i64 2162354270, i64 2162354311, i64 2162354332, i64 2162354360, i64 2162354394}
!124 = !{i64 5025653}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2162377107, i64 2162377611, i64 2162377144, i64 2162377200, i64 2162377234, i64 2162377258, i64 2162377299, i64 2162377320, i64 2162377348, i64 2162377382}
!127 = !{i64 2161446464}
!128 = !{i64 2148707241, i64 2148707267, i64 2148707296, i64 2148707330, i64 2148707361, i64 2148707384}
!129 = !{i64 2161839003, i64 2161839506, i64 2161839040, i64 2161839096, i64 2161839130, i64 2161839154, i64 2161839195, i64 2161839216, i64 2161839244, i64 2161839278}
!130 = !{i32 0, i32 33}
!131 = !{i64 2161840690, i64 2161841193, i64 2161840727, i64 2161840783, i64 2161840817, i64 2161840841, i64 2161840882, i64 2161840903, i64 2161840931, i64 2161840965}
!132 = !{i64 2148531056, i64 2148531061, i64 2148531074, i64 2148531118, i64 2148531152, i64 2148531173}
!133 = !{i64 2161838102}
!134 = !{i64 2160041361}
!135 = !{i64 2160443106}
!136 = !{i64 2148709706, i64 2148709732, i64 2148709761, i64 2148709795, i64 2148709826, i64 2148709849}
!137 = !{i64 2160457696, i64 2160458199, i64 2160457733, i64 2160457789, i64 2160457823, i64 2160457847, i64 2160457888, i64 2160457909, i64 2160457937, i64 2160457971}
!138 = !{i64 2160446203, i64 2160446706, i64 2160446240, i64 2160446296, i64 2160446330, i64 2160446354, i64 2160446395, i64 2160446416, i64 2160446444, i64 2160446478}
