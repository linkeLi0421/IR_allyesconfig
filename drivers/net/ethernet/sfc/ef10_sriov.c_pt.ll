; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ef10_sriov.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ef10_sriov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.efx_ef10_nic_data = type { %struct.efx_buffer, i16, i32, i32, i32, ptr, ptr, i32, [16 x i32], i16, i8, ptr, [95 x i64], i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, [6 x i8], i32, ptr, [6 x i8], %struct.list_head, %struct.mutex, [16 x %struct.efx_udp_tunnel], i8, %struct.mutex, i64 }
%struct.efx_udp_tunnel = type { i16, i16 }
%struct.ef10_vf = type { ptr, ptr, i32, i32, [6 x i8], i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }

@efx_ef10_sriov_fini.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efx_ef10_sriov_fini\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/sfc/ef10_sriov.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Disabling SRIOV was not successful rc=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@efx_ef10_sriov_fini.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SRIOV disabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to change vlan on VF %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"This is likely because the VF is bound to a driver in a VM.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Please unload the driver in the VM.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to restore VF - scheduling reset.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Failed to restore the VF and cannot reset the VF - VF is not functional.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Please reload the driver attached to the VF.\0A\00", [50 x i8] zeroinitializer }, align 32
@efx_ef10_sriov_assign_vf_vport.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VFs are assigned to guests; please detach them before disabling SR-IOV\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable SRIOV VFs\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967225]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 460, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 463, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 590, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 592, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 594, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 671, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 675, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 678, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 415, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [41 x i8] c"../drivers/net/ethernet/sfc/ef10_sriov.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 397, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_vswitching_probe_pf(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i82 = alloca [1 x %union.efx_dword], align 4
  %inbuf.i80 = alloca [1 x %union.efx_dword], align 4
  %port_flags.i61 = alloca i32, align 4
  %inbuf.i56 = alloca [5 x %union.efx_dword], align 4
  %outbuf.i = alloca [1 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  %inbuf.i = alloca [4 x %union.efx_dword], align 4
  %port_flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %net_dev2 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev2, align 4
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %call = tail call i32 @pci_sriov_get_totalvfs(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_flags.i) #8
  %6 = ptrtoint ptr %port_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %port_flags.i, align 4, !annotation !36
  %vport_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %7 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vport_id.i, align 8
  %call.i = tail call i32 @efx_ef10_vadaptor_alloc(ptr noundef %efx, i32 noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.efx_ef10_vadaptor_alloc_set_features.exit_crit_edge

if.then.efx_ef10_vadaptor_alloc_set_features.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_vadaptor_alloc_set_features.exit

if.end.i:                                         ; preds = %if.then
  %9 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vport_id.i, align 8
  %call2.i = call i32 @efx_ef10_vadaptor_query(ptr noundef %efx, i32 noundef %10, ptr noundef nonnull %port_flags.i, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %fail_vadaptor_query.i

if.end5.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %port_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_flags.i, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  %fixed_features8.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 84
  %13 = ptrtoint ptr %fixed_features8.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fixed_features8.i, align 128
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i64 %14, 512
  %15 = ptrtoint ptr %fixed_features8.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or.i, ptr %fixed_features8.i, align 128
  br label %efx_ef10_vadaptor_alloc_set_features.exit

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %and9.i = and i64 %14, -513
  %16 = ptrtoint ptr %fixed_features8.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %and9.i, ptr %fixed_features8.i, align 128
  br label %efx_ef10_vadaptor_alloc_set_features.exit

fail_vadaptor_query.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 @efx_ef10_vadaptor_free(ptr noundef %efx, i32 noundef 16777216) #8
  br label %efx_ef10_vadaptor_alloc_set_features.exit

efx_ef10_vadaptor_alloc_set_features.exit:        ; preds = %fail_vadaptor_query.i, %if.else.i, %if.then7.i, %if.then.efx_ef10_vadaptor_alloc_set_features.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_flags.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf.i) #8
  %17 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %inbuf.i, align 4
  %add.ptr8.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %18 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 33554432, ptr %add.ptr8.i, align 4
  %add.ptr14.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 3
  %19 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 33554432, ptr %add.ptr14.i, align 4
  %add.ptr20.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %20 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %add.ptr20.i, align 4
  %call.i55 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 148, ptr noundef nonnull %inbuf.i, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  %21 = zext i32 %call.i55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i55, label %efx_ef10_vswitch_alloc.exit.thread86 [
    i32 -71, label %efx_ef10_vswitch_alloc.exit
    i32 0, label %efx_ef10_vswitch_alloc.exit.thread
  ]

efx_ef10_vswitch_alloc.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #8
  br label %if.end6

efx_ef10_vswitch_alloc.exit.thread86:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 148, i32 noundef 16, ptr noundef null, i32 noundef 0, i32 noundef %call.i55) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #8
  br label %cleanup

efx_ef10_vswitch_alloc.exit:                      ; preds = %if.end
  %22 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16777216, ptr %add.ptr14.i, align 4
  %call33.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 148, ptr noundef nonnull %inbuf.i, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool.not = icmp eq i32 %call33.i, 0
  br i1 %tobool.not, label %efx_ef10_vswitch_alloc.exit.if.end6_crit_edge, label %efx_ef10_vswitch_alloc.exit.cleanup_crit_edge

efx_ef10_vswitch_alloc.exit.cleanup_crit_edge:    ; preds = %efx_ef10_vswitch_alloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

efx_ef10_vswitch_alloc.exit.if.end6_crit_edge:    ; preds = %efx_ef10_vswitch_alloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %efx_ef10_vswitch_alloc.exit.if.end6_crit_edge, %efx_ef10_vswitch_alloc.exit.thread
  %vport_id = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %inbuf.i56) #8
  %23 = getelementptr inbounds i8, ptr %inbuf.i56, i32 16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf.i) #8
  %25 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %outbuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #8
  %26 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %outlen.i, align 4, !annotation !36
  %27 = ptrtoint ptr %inbuf.i56 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %inbuf.i56, align 4
  %add.ptr11.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i56, i32 1
  %28 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 67108864, ptr %add.ptr11.i, align 4
  %add.ptr23.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i56, i32 3
  %29 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %add.ptr23.i, align 4
  %add.ptr29.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i56, i32 2
  %30 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %add.ptr29.i, align 4
  %call.i57 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 150, ptr noundef nonnull %inbuf.i56, i32 noundef 20, ptr noundef nonnull %outbuf.i, i32 noundef 4, ptr noundef nonnull %outlen.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end50.i, label %if.end6.efx_ef10_vport_alloc.exit.thread_crit_edge

if.end6.efx_ef10_vport_alloc.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_vport_alloc.exit.thread

if.end50.i:                                       ; preds = %if.end6
  %31 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp51.i = icmp ult i32 %32, 4
  br i1 %cmp51.i, label %if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge, label %if.end10

if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_vport_alloc.exit.thread

efx_ef10_vport_alloc.exit.thread:                 ; preds = %if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge, %if.end6.efx_ef10_vport_alloc.exit.thread_crit_edge
  %retval.0.i60.ph = phi i32 [ -5, %if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge ], [ %call.i57, %if.end6.efx_ef10_vport_alloc.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf.i56) #8
  br label %fail2

if.end10:                                         ; preds = %if.end50.i
  %33 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %outbuf.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #8
  %36 = ptrtoint ptr %vport_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %vport_id, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf.i56) #8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %37 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_addr, align 64
  %call12 = call i32 @efx_ef10_vport_add_mac(ptr noundef %efx, i32 noundef %35, ptr noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.fail3_crit_edge

if.end10.fail3_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail3

if.end15:                                         ; preds = %if.end10
  %vport_mac = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 26
  %39 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_addr, align 64
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = ptrtoint ptr %vport_mac to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %vport_mac, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 4
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 26, i32 4
  %46 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %add.ptr1.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_flags.i61) #8
  %47 = ptrtoint ptr %port_flags.i61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %port_flags.i61, align 4, !annotation !36
  %48 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vport_id, align 8
  %call.i63 = call i32 @efx_ef10_vadaptor_alloc(ptr noundef %efx, i32 noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end.i67, label %if.end15.fail4_crit_edge

if.end15.fail4_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail4

if.end.i67:                                       ; preds = %if.end15
  %50 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vport_id, align 8
  %call2.i65 = call i32 @efx_ef10_vadaptor_query(ptr noundef %efx, i32 noundef %51, ptr noundef nonnull %port_flags.i61, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i65)
  %tobool3.not.i66 = icmp eq i32 %call2.i65, 0
  br i1 %tobool3.not.i66, label %if.end5.i71, label %fail_vadaptor_query.i77

if.end5.i71:                                      ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %port_flags.i61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port_flags.i61, align 4
  %fixed_features8.i70 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 84
  %54 = ptrtoint ptr %fixed_features8.i70 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %fixed_features8.i70, align 128
  %and9.i74 = and i64 %55, -513
  %and.i68 = shl i32 %53, 8
  %56 = and i32 %and.i68, 512
  %57 = zext i32 %56 to i64
  %storemerge = or i64 %and9.i74, %57
  store i64 %storemerge, ptr %fixed_features8.i70, align 128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_flags.i61) #8
  br label %cleanup

fail_vadaptor_query.i77:                          ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i76 = call i32 @efx_ef10_vadaptor_free(ptr noundef %efx, i32 noundef 16777216) #8
  br label %fail4

fail4:                                            ; preds = %fail_vadaptor_query.i77, %if.end15.fail4_crit_edge
  %retval.0.i78 = phi i32 [ %call.i63, %if.end15.fail4_crit_edge ], [ %call2.i65, %fail_vadaptor_query.i77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_flags.i61) #8
  %58 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vport_id, align 8
  %call24 = call i32 @efx_ef10_vport_del_mac(ptr noundef %efx, i32 noundef %59, ptr noundef %vport_mac) #8
  %60 = call ptr @memset(ptr %vport_mac, i32 0, i32 6)
  br label %fail3

fail3:                                            ; preds = %fail4, %if.end10.fail3_crit_edge
  %rc.0 = phi i32 [ %call12, %if.end10.fail3_crit_edge ], [ %retval.0.i78, %fail4 ]
  %61 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vport_id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i80) #8
  %63 = call i32 @llvm.bswap.i32(i32 %62) #8
  %64 = ptrtoint ptr %inbuf.i80 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %inbuf.i80, align 4
  %call.i81 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 151, ptr noundef nonnull %inbuf.i80, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i80) #8
  %65 = ptrtoint ptr %vport_id to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 16777216, ptr %vport_id, align 8
  br label %fail2

fail2:                                            ; preds = %fail3, %efx_ef10_vport_alloc.exit.thread
  %rc.1 = phi i32 [ %rc.0, %fail3 ], [ %retval.0.i60.ph, %efx_ef10_vport_alloc.exit.thread ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i82) #8
  %66 = ptrtoint ptr %inbuf.i82 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %inbuf.i82, align 4
  %call.i83 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 149, ptr noundef nonnull %inbuf.i82, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i82) #8
  br label %cleanup

cleanup:                                          ; preds = %fail2, %if.end5.i71, %efx_ef10_vswitch_alloc.exit.cleanup_crit_edge, %efx_ef10_vswitch_alloc.exit.thread86, %efx_ef10_vadaptor_alloc_set_features.exit
  %retval.0 = phi i32 [ 0, %efx_ef10_vadaptor_alloc_set_features.exit ], [ %call33.i, %efx_ef10_vswitch_alloc.exit.cleanup_crit_edge ], [ %rc.1, %fail2 ], [ %call.i55, %efx_ef10_vswitch_alloc.exit.thread86 ], [ 0, %if.end5.i71 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_sriov_get_totalvfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_vport_add_mac(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_vport_del_mac(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_vswitching_probe_vf(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %port_flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_flags.i) #8
  %0 = ptrtoint ptr %port_flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %port_flags.i, align 4, !annotation !36
  %vport_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %1 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vport_id.i, align 8
  %call.i = tail call i32 @efx_ef10_vadaptor_alloc(ptr noundef %efx, i32 noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.efx_ef10_vadaptor_alloc_set_features.exit_crit_edge

entry.efx_ef10_vadaptor_alloc_set_features.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_vadaptor_alloc_set_features.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vport_id.i, align 8
  %call2.i = call i32 @efx_ef10_vadaptor_query(ptr noundef %efx, i32 noundef %4, ptr noundef nonnull %port_flags.i, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %fail_vadaptor_query.i

if.end5.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %port_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  %fixed_features8.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 84
  %7 = ptrtoint ptr %fixed_features8.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fixed_features8.i, align 128
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i64 %8, 512
  %9 = ptrtoint ptr %fixed_features8.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %or.i, ptr %fixed_features8.i, align 128
  br label %efx_ef10_vadaptor_alloc_set_features.exit

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %and9.i = and i64 %8, -513
  %10 = ptrtoint ptr %fixed_features8.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %and9.i, ptr %fixed_features8.i, align 128
  br label %efx_ef10_vadaptor_alloc_set_features.exit

fail_vadaptor_query.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 @efx_ef10_vadaptor_free(ptr noundef %efx, i32 noundef 16777216) #8
  br label %efx_ef10_vadaptor_alloc_set_features.exit

efx_ef10_vadaptor_alloc_set_features.exit:        ; preds = %fail_vadaptor_query.i, %if.else.i, %if.then7.i, %entry.efx_ef10_vadaptor_alloc_set_features.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.else.i ], [ 0, %if.then7.i ], [ %call.i, %entry.efx_ef10_vadaptor_alloc_set_features.exit_crit_edge ], [ %call2.i, %fail_vadaptor_query.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_flags.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_vswitching_restore_pf(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %must_probe_vswitching = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %must_probe_vswitching to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %must_probe_vswitching, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @efx_ef10_vswitching_probe_pf(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %vf_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %4 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not.i = icmp eq i32 %5, 0
  br i1 %cmp7.not.i, label %if.end4.if.end8_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.08.i, 1
  %6 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vf_count.i, align 16
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end8_crit_edge

for.cond.i.if.end8_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end4.for.body.i_crit_edge ]
  %call.i = tail call fastcc i32 @efx_ef10_sriov_assign_vf_vport(ptr noundef %efx, i32 noundef %i.08.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %efx_ef10_sriov_restore_vf_vswitching.exit

efx_ef10_sriov_restore_vf_vswitching.exit:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @efx_ef10_sriov_free_vf_vswitching(ptr noundef %efx) #8
  br label %cleanup

if.end8:                                          ; preds = %for.cond.i.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %8 = ptrtoint ptr %must_probe_vswitching to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %must_probe_vswitching, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %efx_ef10_sriov_restore_vf_vswitching.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call.i, %efx_ef10_sriov_restore_vf_vswitching.exit ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_vswitching_restore_vf(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %must_probe_vswitching = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %must_probe_vswitching to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %must_probe_vswitching, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @efx_ef10_vadaptor_free(ptr noundef %efx, i32 noundef 16777216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %must_probe_vswitching to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %must_probe_vswitching, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_vadaptor_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ef10_vswitching_remove_pf(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i32 = alloca [1 x %union.efx_dword], align 4
  %inbuf.i = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  tail call fastcc void @efx_ef10_sriov_free_vf_vswitching(ptr noundef %efx)
  %vport_id = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %2 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vport_id, align 8
  %call = tail call i32 @efx_ef10_vadaptor_free(ptr noundef %efx, i32 noundef %3) #8
  %4 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vport_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %cmp = icmp eq i32 %5, 16777216
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vport_mac = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %vport_mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vport_mac, align 4
  %add.ptr.i = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 26, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %9 to i32
  %or.i = or i32 %7, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %call6 = tail call i32 @efx_ef10_vport_del_mac(ptr noundef %efx, i32 noundef %5, ptr noundef %13) #8
  %14 = call ptr @memset(ptr %vport_mac, i32 0, i32 6)
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %15 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vport_id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i) #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %inbuf.i, align 4
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 151, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #8
  %19 = ptrtoint ptr %vport_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16777216, ptr %vport_id, align 8
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %20 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev, align 4
  %call13 = call i32 @pci_vfs_assigned(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vport_id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i32) #8
  %24 = call i32 @llvm.bswap.i32(i32 %23) #8
  %25 = ptrtoint ptr %inbuf.i32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %inbuf.i32, align 4
  %call.i33 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 149, ptr noundef nonnull %inbuf.i32, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i32) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_ef10_sriov_free_vf_vswitching(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %inbuf.i54.i = alloca [1 x %union.efx_dword], align 4
  %inbuf.i.i = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %vf.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.efx_ef10_sriov_free_vf_vports.exit_crit_edge, label %for.cond.preheader.i

entry.efx_ef10_sriov_free_vf_vports.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_sriov_free_vf_vports.exit

for.cond.preheader.i:                             ; preds = %entry
  %vf_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %4 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp56.not.i = icmp eq i32 %5, 0
  br i1 %cmp56.not.i, label %for.cond.preheader.i.efx_ef10_sriov_free_vf_vports.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.efx_ef10_sriov_free_vf_vports.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_sriov_free_vf_vports.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %add.ptr11.i.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i.i, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf.i, align 8
  %add.ptr.i = getelementptr %struct.ef10_vf, ptr %7, i32 %i.057.i
  %pci_dev.i = getelementptr %struct.ef10_vf, ptr %7, i32 %i.057.i, i32 1
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %for.body.i.if.end7.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dev_flags.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 50
  %10 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dev_flags.i.i, align 2
  %12 = and i16 %11, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i.not.i = icmp eq i16 %12, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %for.body.i.if.end7.i_crit_edge
  %vport_assigned.i = getelementptr %struct.ef10_vf, ptr %7, i32 %i.057.i, i32 3
  %13 = ptrtoint ptr %vport_assigned.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vport_assigned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not.i = icmp eq i32 %14, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end12.i_crit_edge, label %if.then9.i

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i.i) #8
  %15 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nic_data1, align 8
  %17 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %inbuf.i.i, align 8
  %pf_index.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %16, i32 0, i32 22
  %18 = ptrtoint ptr %pf_index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pf_index.i.i, align 8
  %shl.i.i = shl i32 %i.057.i, 16
  %or817.i.i = or i32 %19, %shl.i.i
  %20 = call i32 @llvm.bswap.i32(i32 %or817.i.i) #8
  %21 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %add.ptr11.i.i, align 4
  %call.i.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 154, ptr noundef nonnull %inbuf.i.i, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i.i) #8
  %22 = ptrtoint ptr %vport_assigned.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %vport_assigned.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end12.i_crit_edge
  %mac.i = getelementptr %struct.ef10_vf, ptr %7, i32 %i.057.i, i32 4
  %23 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %mac.i, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %26 to i32
  %or.i.i = or i32 %24, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i53.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i53.i, label %if.end12.i.if.end20.i_crit_edge, label %if.then14.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %vport_id.i = getelementptr %struct.ef10_vf, ptr %7, i32 %i.057.i, i32 2
  %27 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vport_id.i, align 4
  %call17.i = call i32 @efx_ef10_vport_del_mac(ptr noundef %efx, i32 noundef %28, ptr noundef %mac.i) #8
  %29 = call ptr @memset(ptr %mac.i, i32 0, i32 6)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end20.i_crit_edge
  %vport_id21.i = getelementptr %struct.ef10_vf, ptr %7, i32 %i.057.i, i32 2
  %30 = ptrtoint ptr %vport_id21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vport_id21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool22.not.i = icmp eq i32 %31, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end27.i_crit_edge, label %if.then23.i

if.end20.i.if.end27.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i54.i) #8
  %32 = call i32 @llvm.bswap.i32(i32 %31) #8
  %33 = ptrtoint ptr %inbuf.i54.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %inbuf.i54.i, align 4
  %call.i55.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 151, ptr noundef nonnull %inbuf.i54.i, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i54.i) #8
  %34 = ptrtoint ptr %vport_id21.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %vport_id21.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end27.i_crit_edge
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %add.ptr.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end27.i, %land.lhs.true.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.057.i, 1
  %36 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vf_count.i, align 16
  %cmp.i = icmp ult i32 %inc.i, %37
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.efx_ef10_sriov_free_vf_vports.exit_crit_edge

cleanup.i.efx_ef10_sriov_free_vf_vports.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_sriov_free_vf_vports.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

efx_ef10_sriov_free_vf_vports.exit:               ; preds = %cleanup.i.efx_ef10_sriov_free_vf_vports.exit_crit_edge, %for.cond.preheader.i.efx_ef10_sriov_free_vf_vports.exit_crit_edge, %entry.efx_ef10_sriov_free_vf_vports.exit_crit_edge
  %38 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vf.i, align 8
  call void @kfree(ptr noundef %39) #8
  %40 = ptrtoint ptr %vf.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %vf.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ef10_vswitching_remove_vf(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @efx_ef10_vadaptor_free(ptr noundef %efx, i32 noundef 16777216) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_sriov_configure(ptr noundef %efx, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %cmp = icmp eq i32 %num_vfs, 0
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @pci_vfs_assigned(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.return_crit_edge, label %if.then3.i

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.11) #11
  br label %return

if.end7.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_disable_sriov(ptr noundef %1) #8
  tail call fastcc void @efx_ef10_sriov_free_vf_vswitching(ptr noundef %efx) #8
  %vf_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %6 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %vf_count.i, align 16
  br label %return

if.else:                                          ; preds = %entry
  %vf_count.i5 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %7 = ptrtoint ptr %vf_count.i5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num_vfs, ptr %vf_count.i5, align 16
  %nic_data1.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %8 = ptrtoint ptr %nic_data1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nic_data1.i.i, align 8
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_vfs, i32 24) #8
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !38

kcalloc.exit.thread.i.i:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %vf31.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %9, i32 0, i32 25
  %12 = ptrtoint ptr %vf31.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vf31.i.i, align 8
  br label %fail1.i

if.end7.i.i.i.i:                                  ; preds = %if.else
  %13 = extractvalue { i32, i1 } %10, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #12
  %vf.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %9, i32 0, i32 25
  %14 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i.i.i, ptr %vf.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.fail1.i_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i.i.fail1.i_crit_edge:                ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1.i

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i.i
  %15 = ptrtoint ptr %vf_count.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vf_count.i5, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp33.not.i.i = icmp eq i32 %16, 0
  br i1 %cmp33.not.i.i, label %for.cond.preheader.i.i.if.end.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end.i_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.034.i.i, 1
  %17 = ptrtoint ptr %vf_count.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vf_count.i5, align 16
  %cmp.i.i = icmp ult i32 %inc.i.i, %18
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end.i_crit_edge

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.034.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %19 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vf.i.i, align 8
  %mac.i.i = getelementptr %struct.ef10_vf, ptr %20, i32 %i.034.i.i, i32 4
  tail call void @get_random_bytes(ptr noundef %mac.i.i, i32 noundef 6) #8
  %21 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mac.i.i, align 1
  %23 = and i8 %22, -4
  %24 = or i8 %23, 2
  store i8 %24, ptr %mac.i.i, align 1
  %25 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vf.i.i, align 8
  %arrayidx6.i.i = getelementptr %struct.ef10_vf, ptr %26, i32 %i.034.i.i
  %27 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx6.i.i, align 4
  %28 = load ptr, ptr %vf.i.i, align 8
  %vlan.i.i = getelementptr %struct.ef10_vf, ptr %28, i32 %i.034.i.i, i32 5
  %29 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %vlan.i.i, align 2
  %call10.i.i = tail call fastcc i32 @efx_ef10_sriov_assign_vf_vport(ptr noundef %efx, i32 noundef %i.034.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %for.cond.i.i, label %fail.i.i

fail.i.i:                                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @efx_ef10_sriov_free_vf_vswitching(ptr noundef %efx) #8
  br label %fail1.i

if.end.i:                                         ; preds = %for.cond.i.i.if.end.i_crit_edge, %for.cond.preheader.i.i.if.end.i_crit_edge
  %call1.i = tail call i32 @pci_enable_sriov(ptr noundef %1, i32 noundef %num_vfs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i6 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i6, label %if.end.i.return_crit_edge, label %fail2.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

fail2.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @efx_ef10_sriov_free_vf_vswitching(ptr noundef %efx) #8
  br label %fail1.i

fail1.i:                                          ; preds = %fail2.i, %fail.i.i, %if.end7.i.i.i.i.fail1.i_crit_edge, %kcalloc.exit.thread.i.i
  %rc.0.i7 = phi i32 [ %call1.i, %fail2.i ], [ -12, %kcalloc.exit.thread.i.i ], [ -12, %if.end7.i.i.i.i.fail1.i_crit_edge ], [ %call10.i.i, %fail.i.i ]
  %30 = ptrtoint ptr %vf_count.i5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %vf_count.i5, align 16
  %msg_enable.i8 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %31 = ptrtoint ptr %msg_enable.i8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable.i8, align 4
  %and.i9 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool6.not.i = icmp eq i32 %and.i9, 0
  br i1 %tobool6.not.i, label %fail1.i.return_crit_edge, label %if.then7.i

fail1.i.return_crit_edge:                         ; preds = %fail1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then7.i:                                       ; preds = %fail1.i
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev.i10 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %33 = ptrtoint ptr %net_dev.i10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev.i10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.12) #11
  br label %return

return:                                           ; preds = %if.then7.i, %fail1.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end7.i, %if.then3.i, %do.body.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7.i ], [ -16, %if.then3.i ], [ -16, %do.body.i.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ %rc.0.i7, %if.then7.i ], [ %rc.0.i7, %fail1.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_ef10_sriov_init(ptr nocapture noundef readnone %efx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ef10_sriov_fini(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %vf = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf, align 8
  %tobool.not = icmp eq ptr %3, null
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call = tail call i32 @pci_num_vf(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  %call4 = tail call i32 @pci_vfs_assigned(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_disable_sriov(ptr noundef %9) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call.i = tail call i32 @pci_vfs_assigned(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body24, label %do.body

do.body:                                          ; preds = %if.end8
  tail call fastcc void @efx_ef10_sriov_free_vf_vswitching(ptr noundef %efx) #8
  %vf_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %10 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %vf_count.i, align 16
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body.cleanup_crit_edge, label %do.body14

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_sriov_fini.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_sriov_fini, %if.then19)) #8
          to label %cleanup [label %if.then19], !srcloc !39

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %13 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_sriov_fini.__UNIQUE_ID_ddebug524, ptr noundef %14, ptr noundef nonnull @.str.3, i32 noundef -16) #8
  br label %cleanup

do.body24:                                        ; preds = %if.end8
  tail call void @pci_disable_sriov(ptr noundef %5) #8
  tail call fastcc void @efx_ef10_sriov_free_vf_vswitching(ptr noundef %efx) #8
  %vf_count.i65 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %15 = ptrtoint ptr %vf_count.i65 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %vf_count.i65, align 16
  %msg_enable25 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable25, align 4
  %and26 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body24.cleanup_crit_edge, label %do.body29

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_sriov_fini.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_sriov_fini, %if.then41)) #8
          to label %cleanup [label %if.then41], !srcloc !39

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev42 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_sriov_fini.__UNIQUE_ID_ddebug525, ptr noundef %19, ptr noundef nonnull @.str.4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body29, %do.body24.cleanup_crit_edge, %if.then19, %do.body14, %do.body.cleanup_crit_edge, %if.then6, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_sriov_set_vf_mac(ptr noundef %efx, i32 noundef %vf_i, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i138 = alloca [2 x %union.efx_dword], align 8
  %inbuf.i131 = alloca [3 x %union.efx_dword], align 4
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %outlen.i = alloca i32, align 4
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %vf2 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %4 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %vf_i)
  %cmp.not = icmp ugt i32 %5, %vf_i
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr %struct.ef10_vf, ptr %3, i32 %vf_i
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end4.if.end21_crit_edge, label %if.then8

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then8:                                         ; preds = %if.end4
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #8
  tail call void @netif_tx_lock(ptr noundef %9) #8
  tail call void @netif_device_detach(ptr noundef %9) #8
  tail call void @netif_tx_unlock(ptr noundef %9) #8
  tail call fastcc void @local_bh_enable() #8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %11, i32 0, i32 83
  %12 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev, align 4
  %call = tail call i32 @efx_net_stop(ptr noundef %13) #8
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %type = getelementptr inbounds %struct.efx_nic, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type, align 4
  %filter_table_remove = getelementptr inbounds %struct.efx_nic_type, ptr %19, i32 0, i32 75
  %20 = ptrtoint ptr %filter_table_remove to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %filter_table_remove, align 4
  tail call void %21(ptr noundef %17) #8
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %call15 = tail call i32 @efx_ef10_vadaptor_free(ptr noundef %23, i32 noundef 16777216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then8.if.end21_crit_edge, label %if.then17

if.then8.if.end21_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %filter_sem19 = getelementptr inbounds %struct.efx_nic, ptr %25, i32 0, i32 108
  tail call void @up_write(ptr noundef %filter_sem19) #8
  br label %cleanup

if.end21:                                         ; preds = %if.then8.if.end21_crit_edge, %if.end4.if.end21_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #8
  %26 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nic_data1, align 8
  %28 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %inbuf.i, align 8
  %pf_index.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %27, i32 0, i32 22
  %29 = ptrtoint ptr %pf_index.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pf_index.i, align 8
  %shl.i = shl i32 %vf_i, 16
  %or817.i = or i32 %30, %shl.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %or817.i) #8
  %add.ptr11.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %32 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr11.i, align 4
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 154, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %mac26 = getelementptr %struct.ef10_vf, ptr %3, i32 %vf_i, i32 4
  %33 = ptrtoint ptr %mac26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mac26, align 4
  %add.ptr.i = getelementptr i8, ptr %mac26, i32 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %36 to i32
  %or.i = or i32 %34, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end25.if.end35_crit_edge, label %if.then28

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then28:                                        ; preds = %if.end25
  %vport_id = getelementptr %struct.ef10_vf, ptr %3, i32 %vf_i, i32 2
  %37 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vport_id, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i131) #8
  %39 = getelementptr inbounds i8, ptr %inbuf.i131, i32 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #8
  %41 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %outbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #8
  %42 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %outlen.i, align 4, !annotation !36
  %43 = call i32 @llvm.bswap.i32(i32 %38) #8
  %44 = ptrtoint ptr %inbuf.i131 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %inbuf.i131, align 4
  %add.ptr3.i = getelementptr inbounds i8, ptr %inbuf.i131, i32 4
  %45 = ptrtoint ptr %mac26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mac26, align 4
  %47 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %add.ptr3.i, align 4
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i, align 2
  %50 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %39, align 4
  %call.i132 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 169, ptr noundef nonnull %inbuf.i131, i32 noundef 12, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef nonnull %outlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i131) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool32.not = icmp eq i32 %call.i132, 0
  br i1 %tobool32.not, label %if.then28.if.end35_crit_edge, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end35:                                         ; preds = %if.then28.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  %51 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mac, align 4
  %add.ptr.i133 = getelementptr i8, ptr %mac, i32 4
  %53 = ptrtoint ptr %add.ptr.i133 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i133, align 2
  %conv.i134 = zext i16 %54 to i32
  %or.i135 = or i32 %52, %conv.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i135)
  %cmp.i136 = icmp eq i32 %or.i135, 0
  br i1 %cmp.i136, label %if.end35.if.end49_crit_edge, label %if.then37

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then37:                                        ; preds = %if.end35
  %vport_id38 = getelementptr %struct.ef10_vf, ptr %3, i32 %vf_i, i32 2
  %55 = ptrtoint ptr %vport_id38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vport_id38, align 4
  %call39 = call i32 @efx_ef10_vport_add_mac(ptr noundef %efx, i32 noundef %56, ptr noundef %mac) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then37.fail_crit_edge

if.then37.fail_crit_edge:                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end42:                                         ; preds = %if.then37
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 4
  %tobool44.not = icmp eq ptr %58, null
  br i1 %tobool44.not, label %if.end42.if.end49_crit_edge, label %if.then45

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev47 = getelementptr inbounds %struct.efx_nic, ptr %58, i32 0, i32 83
  %59 = ptrtoint ptr %net_dev47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net_dev47, align 4
  call void @dev_addr_mod(ptr noundef %60, i32 noundef 0, ptr noundef %mac, i32 noundef 6) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end42.if.end49_crit_edge, %if.end35.if.end49_crit_edge
  %61 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mac, align 4
  %63 = ptrtoint ptr %mac26 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %mac26, align 4
  %64 = ptrtoint ptr %add.ptr.i133 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.i133, align 2
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %add.ptr.i, align 2
  %vport_id52 = getelementptr %struct.ef10_vf, ptr %3, i32 %vf_i, i32 2
  %67 = ptrtoint ptr %vport_id52 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vport_id52, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i138) #8
  %69 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %nic_data1, align 8
  %71 = call i32 @llvm.bswap.i32(i32 %68) #8
  %72 = ptrtoint ptr %inbuf.i138 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %inbuf.i138, align 8
  %pf_index.i140 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %70, i32 0, i32 22
  %73 = ptrtoint ptr %pf_index.i140 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pf_index.i140, align 8
  %or817.i142 = or i32 %74, %shl.i
  %75 = call i32 @llvm.bswap.i32(i32 %or817.i142) #8
  %add.ptr11.i143 = getelementptr inbounds %union.efx_dword, ptr %inbuf.i138, i32 1
  %76 = ptrtoint ptr %add.ptr11.i143 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %add.ptr11.i143, align 4
  %call.i144 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 154, ptr noundef nonnull %inbuf.i138, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool54.not = icmp eq i32 %call.i144, 0
  br i1 %tobool54.not, label %if.end56, label %if.end49.fail_crit_edge

if.end49.fail_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end56:                                         ; preds = %if.end49
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr, align 4
  %tobool58.not = icmp eq ptr %78, null
  br i1 %tobool58.not, label %if.end56.cleanup_crit_edge, label %if.then59

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then59:                                        ; preds = %if.end56
  %call61 = call i32 @efx_ef10_vadaptor_alloc(ptr noundef nonnull %78, i32 noundef 16777216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  %79 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool62.not, label %if.end66, label %if.then63

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %filter_sem65 = getelementptr inbounds %struct.efx_nic, ptr %80, i32 0, i32 108
  call void @up_write(ptr noundef %filter_sem65) #8
  br label %cleanup

if.end66:                                         ; preds = %if.then59
  %type68 = getelementptr inbounds %struct.efx_nic, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %type68 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %type68, align 4
  %filter_table_probe = getelementptr inbounds %struct.efx_nic_type, ptr %82, i32 0, i32 73
  %83 = ptrtoint ptr %filter_table_probe to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %filter_table_probe, align 4
  %call70 = call i32 %84(ptr noundef %80) #8
  %85 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr, align 4
  %filter_sem72 = getelementptr inbounds %struct.efx_nic, ptr %86, i32 0, i32 108
  call void @up_write(ptr noundef %filter_sem72) #8
  %87 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr, align 4
  %net_dev74 = getelementptr inbounds %struct.efx_nic, ptr %88, i32 0, i32 83
  %89 = ptrtoint ptr %net_dev74 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net_dev74, align 4
  %call75 = call i32 @efx_net_open(ptr noundef %90) #8
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr, align 4
  %state.i = getelementptr inbounds %struct.efx_nic, ptr %92, i32 0, i32 23
  %93 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp.not.i = icmp eq i32 %94, 2
  br i1 %cmp.not.i, label %if.end66.cleanup_crit_edge, label %land.lhs.true.i

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end66
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %92, i32 0, i32 24
  %95 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev.i145 = getelementptr inbounds %struct.efx_nic, ptr %92, i32 0, i32 83
  %97 = ptrtoint ptr %net_dev.i145 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %net_dev.i145, align 4
  call void @netif_device_attach(ptr noundef %98) #8
  br label %cleanup

fail:                                             ; preds = %if.end49.fail_crit_edge, %if.then37.fail_crit_edge
  %rc.0 = phi i32 [ %call.i144, %if.end49.fail_crit_edge ], [ %call39, %if.then37.fail_crit_edge ]
  %99 = call ptr @memset(ptr %mac26, i32 0, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.then63, %if.end56.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then17 ], [ %rc.0, %fail ], [ %call61, %if.then63 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.end21.cleanup_crit_edge ], [ %call.i132, %if.then28.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_net_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_vadaptor_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_net_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_sriov_set_vf_vlan(ptr noundef %efx, i32 noundef %vf_i, i16 noundef zeroext %vlan, i8 noundef zeroext %qos) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i279 = alloca [2 x %union.efx_dword], align 8
  %inbuf.i272 = alloca [5 x %union.efx_dword], align 4
  %outbuf.i = alloca [1 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  %inbuf.i270 = alloca [1 x %union.efx_dword], align 4
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %0 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf_i)
  %cmp.not = icmp ugt i32 %1, %vf_i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qos)
  %cmp2.not = icmp eq i8 %qos, 0
  %or.cond = and i1 %cmp2.not, %cmp.not
  br i1 %or.cond, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %vf6 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %vf6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf6, align 8
  %add.ptr = getelementptr %struct.ef10_vf, ptr %5, i32 %vf_i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan)
  %cmp8 = icmp eq i16 %vlan, 0
  %vlan13 = getelementptr %struct.ef10_vf, ptr %5, i32 %vf_i, i32 5
  %6 = ptrtoint ptr %vlan13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vlan13, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %vlan)
  %cmp15 = icmp eq i16 %7, %vlan
  br i1 %cmp15, label %if.end5.cleanup_crit_edge, label %if.end18

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end18.if.end32_crit_edge, label %if.then20

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then20:                                        ; preds = %if.end18
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #8
  tail call void @netif_tx_lock(ptr noundef %11) #8
  tail call void @netif_device_detach(ptr noundef %11) #8
  tail call void @netif_tx_unlock(ptr noundef %11) #8
  tail call fastcc void @local_bh_enable() #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %13, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  %call = tail call i32 @efx_net_stop(ptr noundef %15) #8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %17, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %19, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #8
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %type = getelementptr inbounds %struct.efx_nic, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type, align 4
  %filter_table_remove = getelementptr inbounds %struct.efx_nic_type, ptr %23, i32 0, i32 75
  %24 = ptrtoint ptr %filter_table_remove to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %filter_table_remove, align 4
  tail call void %25(ptr noundef %21) #8
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %call28 = tail call i32 @efx_ef10_vadaptor_free(ptr noundef %27, i32 noundef 16777216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then20.if.end32_crit_edge, label %if.then20.restore_filters_crit_edge

if.then20.restore_filters_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %restore_filters

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %if.then20.if.end32_crit_edge, %if.end18.if.end32_crit_edge
  %vport_assigned = getelementptr %struct.ef10_vf, ptr %5, i32 %vf_i, i32 3
  %28 = ptrtoint ptr %vport_assigned to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vport_assigned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool33.not = icmp eq i32 %29, 0
  br i1 %tobool33.not, label %if.end32.if.end62_crit_edge, label %if.then34

if.end32.if.end62_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then34:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #8
  %30 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nic_data1, align 8
  %32 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %inbuf.i, align 8
  %pf_index.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %31, i32 0, i32 22
  %33 = ptrtoint ptr %pf_index.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pf_index.i, align 8
  %shl.i = shl i32 %vf_i, 16
  %or817.i = or i32 %34, %shl.i
  %35 = tail call i32 @llvm.bswap.i32(i32 %or817.i) #8
  %add.ptr11.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %36 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %add.ptr11.i, align 4
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 154, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end60, label %do.body

do.body:                                          ; preds = %if.then34
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %37 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable, align 4
  %and = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %do.body.do.body42_crit_edge, label %if.then39

do.body.do.body42_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev40 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %39 = ptrtoint ptr %net_dev40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev40, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.5, i32 noundef %vf_i) #11
  br label %do.body42

do.body42:                                        ; preds = %if.then39, %do.body.do.body42_crit_edge
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable, align 4
  %and44 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body42.do.body51_crit_edge, label %if.then46

do.body42.do.body51_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body51

if.then46:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev47 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %43 = ptrtoint ptr %net_dev47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net_dev47, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.6) #11
  br label %do.body51

do.body51:                                        ; preds = %if.then46, %do.body42.do.body51_crit_edge
  %45 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable, align 4
  %and53 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.restore_vadaptor_crit_edge, label %if.then55

do.body51.restore_vadaptor_crit_edge:             ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %restore_vadaptor

if.then55:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev56 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %47 = ptrtoint ptr %net_dev56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net_dev56, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %48, ptr noundef nonnull @.str.7) #11
  br label %restore_vadaptor

if.end60:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %vport_assigned to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %vport_assigned, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %if.end32.if.end62_crit_edge
  %mac = getelementptr %struct.ef10_vf, ptr %5, i32 %vf_i, i32 4
  %50 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mac, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %53 to i32
  %or.i = or i32 %51, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end62.if.end71_crit_edge, label %if.then64

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then64:                                        ; preds = %if.end62
  %vport_id = getelementptr %struct.ef10_vf, ptr %5, i32 %vf_i, i32 2
  %54 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vport_id, align 4
  %call67 = call i32 @efx_ef10_vport_del_mac(ptr noundef %efx, i32 noundef %55, ptr noundef %mac) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then64.if.end71_crit_edge, label %if.then64.restore_evb_port_crit_edge

if.then64.restore_evb_port_crit_edge:             ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %restore_evb_port

if.then64.if.end71_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end71:                                         ; preds = %if.then64.if.end71_crit_edge, %if.end62.if.end71_crit_edge
  %vport_id72 = getelementptr %struct.ef10_vf, ptr %5, i32 %vf_i, i32 2
  %56 = ptrtoint ptr %vport_id72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vport_id72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool73.not = icmp eq i32 %57, 0
  br i1 %tobool73.not, label %if.end71.if.end81_crit_edge, label %if.then74

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then74:                                        ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i270) #8
  %58 = call i32 @llvm.bswap.i32(i32 %57) #8
  %59 = ptrtoint ptr %inbuf.i270 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %inbuf.i270, align 4
  %call.i271 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 151, ptr noundef nonnull %inbuf.i270, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i270) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %tobool77.not = icmp eq i32 %call.i271, 0
  br i1 %tobool77.not, label %if.end79, label %if.then74.restore_mac_crit_edge

if.then74.restore_mac_crit_edge:                  ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %restore_mac

if.end79:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %vport_id72 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %vport_id72, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end79, %if.end71.if.end81_crit_edge
  %61 = ptrtoint ptr %vlan13 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %vlan, ptr %vlan13, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %inbuf.i272) #8
  %62 = getelementptr inbounds i8, ptr %inbuf.i272, i32 16
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf.i) #8
  %64 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %outbuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #8
  %65 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %outlen.i, align 4, !annotation !36
  %66 = ptrtoint ptr %inbuf.i272 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %inbuf.i272, align 4
  %add.ptr11.i273 = getelementptr inbounds %union.efx_dword, ptr %inbuf.i272, i32 1
  %67 = ptrtoint ptr %add.ptr11.i273 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 67108864, ptr %add.ptr11.i273, align 4
  %68 = select i1 %cmp8, i32 0, i32 16777216
  %add.ptr23.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i272, i32 3
  %69 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %add.ptr23.i, align 4
  %add.ptr29.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i272, i32 2
  %70 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %add.ptr29.i, align 4
  br i1 %cmp8, label %if.end81.if.end.i_crit_edge, label %do.body36.i

if.end81.if.end.i_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body36.i:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %conv16.i = zext i16 %vlan to i32
  %71 = call i32 @llvm.bswap.i32(i32 %conv16.i) #8
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %62, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body36.i, %if.end81.if.end.i_crit_edge
  %call.i274 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 150, ptr noundef nonnull %inbuf.i272, i32 noundef 20, ptr noundef nonnull %outbuf.i, i32 noundef 4, ptr noundef nonnull %outlen.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool.not.i = icmp eq i32 %call.i274, 0
  br i1 %tobool.not.i, label %if.end50.i, label %if.end.i.efx_ef10_vport_alloc.exit.thread_crit_edge

if.end.i.efx_ef10_vport_alloc.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_vport_alloc.exit.thread

if.end50.i:                                       ; preds = %if.end.i
  %73 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %cmp51.i = icmp ult i32 %74, 4
  br i1 %cmp51.i, label %if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge, label %efx_ef10_vport_alloc.exit

if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_vport_alloc.exit.thread

efx_ef10_vport_alloc.exit.thread:                 ; preds = %if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge, %if.end.i.efx_ef10_vport_alloc.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge ], [ %call.i274, %if.end.i.efx_ef10_vport_alloc.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf.i272) #8
  br label %reset_nic_up_write

efx_ef10_vport_alloc.exit:                        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %outbuf.i, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76) #8
  %78 = ptrtoint ptr %vport_id72 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %vport_id72, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf.i272) #8
  br label %restore_mac

restore_mac:                                      ; preds = %efx_ef10_vport_alloc.exit, %if.then74.restore_mac_crit_edge
  %rc.0 = phi i32 [ %call.i271, %if.then74.restore_mac_crit_edge ], [ 0, %efx_ef10_vport_alloc.exit ]
  %79 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mac, align 4
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i, align 2
  %conv.i276 = zext i16 %82 to i32
  %or.i277 = or i32 %80, %conv.i276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i277)
  %cmp.i278 = icmp eq i32 %or.i277, 0
  br i1 %cmp.i278, label %restore_mac.restore_evb_port_crit_edge, label %if.then92

restore_mac.restore_evb_port_crit_edge:           ; preds = %restore_mac
  call void @__sanitizer_cov_trace_pc() #10
  br label %restore_evb_port

if.then92:                                        ; preds = %restore_mac
  %83 = ptrtoint ptr %vport_id72 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vport_id72, align 4
  %call96 = call i32 @efx_ef10_vport_add_mac(ptr noundef %efx, i32 noundef %84, ptr noundef %mac) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then92.restore_evb_port_crit_edge, label %if.then98

if.then92.restore_evb_port_crit_edge:             ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %restore_evb_port

if.then98:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  %85 = call ptr @memset(ptr %mac, i32 0, i32 6)
  br label %reset_nic_up_write

restore_evb_port:                                 ; preds = %if.then92.restore_evb_port_crit_edge, %restore_mac.restore_evb_port_crit_edge, %if.then64.restore_evb_port_crit_edge
  %rc.1 = phi i32 [ %rc.0, %restore_mac.restore_evb_port_crit_edge ], [ %rc.0, %if.then92.restore_evb_port_crit_edge ], [ %call67, %if.then64.restore_evb_port_crit_edge ]
  %vport_id103 = getelementptr %struct.ef10_vf, ptr %5, i32 %vf_i, i32 2
  %86 = ptrtoint ptr %vport_id103 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vport_id103, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i279) #8
  %88 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %nic_data1, align 8
  %90 = call i32 @llvm.bswap.i32(i32 %87) #8
  %91 = ptrtoint ptr %inbuf.i279 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %inbuf.i279, align 8
  %pf_index.i281 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %89, i32 0, i32 22
  %92 = ptrtoint ptr %pf_index.i281 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pf_index.i281, align 8
  %shl.i282 = shl i32 %vf_i, 16
  %or817.i283 = or i32 %93, %shl.i282
  %94 = call i32 @llvm.bswap.i32(i32 %or817.i283) #8
  %add.ptr11.i284 = getelementptr inbounds %union.efx_dword, ptr %inbuf.i279, i32 1
  %95 = ptrtoint ptr %add.ptr11.i284 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %add.ptr11.i284, align 4
  %call.i285 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 154, ptr noundef nonnull %inbuf.i279, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i279) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285)
  %tobool105.not = icmp eq i32 %call.i285, 0
  br i1 %tobool105.not, label %if.else, label %restore_evb_port.reset_nic_up_write_crit_edge

restore_evb_port.reset_nic_up_write_crit_edge:    ; preds = %restore_evb_port
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_nic_up_write

if.else:                                          ; preds = %restore_evb_port
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %vport_assigned to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %vport_assigned, align 4
  br label %restore_vadaptor

restore_vadaptor:                                 ; preds = %if.else, %if.then55, %do.body51.restore_vadaptor_crit_edge
  %rc.2 = phi i32 [ %call.i, %if.then55 ], [ %call.i, %do.body51.restore_vadaptor_crit_edge ], [ %rc.1, %if.else ]
  %97 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr, align 4
  %tobool110.not = icmp eq ptr %98, null
  br i1 %tobool110.not, label %restore_vadaptor.cleanup_crit_edge, label %if.then111

restore_vadaptor.cleanup_crit_edge:               ; preds = %restore_vadaptor
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then111:                                       ; preds = %restore_vadaptor
  %call113 = call i32 @efx_ef10_vadaptor_alloc(ptr noundef nonnull %98, i32 noundef 16777216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then111.restore_filters_crit_edge, label %if.then111.reset_nic_up_write_crit_edge

if.then111.reset_nic_up_write_crit_edge:          ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_nic_up_write

if.then111.restore_filters_crit_edge:             ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %restore_filters

restore_filters:                                  ; preds = %if.then111.restore_filters_crit_edge, %if.then20.restore_filters_crit_edge
  %rc.3.ph = phi i32 [ %rc.2, %if.then111.restore_filters_crit_edge ], [ %call28, %if.then20.restore_filters_crit_edge ]
  %99 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr = load ptr, ptr %add.ptr, align 4
  %tobool119.not = icmp eq ptr %.pr, null
  br i1 %tobool119.not, label %restore_filters.cleanup_crit_edge, label %if.then120

restore_filters.cleanup_crit_edge:                ; preds = %restore_filters
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then120:                                       ; preds = %restore_filters
  %type122 = getelementptr inbounds %struct.efx_nic, ptr %.pr, i32 0, i32 6
  %100 = ptrtoint ptr %type122 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %type122, align 4
  %filter_table_probe = getelementptr inbounds %struct.efx_nic_type, ptr %101, i32 0, i32 73
  %102 = ptrtoint ptr %filter_table_probe to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %filter_table_probe, align 4
  %call124 = call i32 %103(ptr noundef nonnull %.pr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.then120.reset_nic_up_write_crit_edge

if.then120.reset_nic_up_write_crit_edge:          ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_nic_up_write

if.end127:                                        ; preds = %if.then120
  %104 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr, align 4
  %filter_sem129 = getelementptr inbounds %struct.efx_nic, ptr %105, i32 0, i32 108
  call void @up_write(ptr noundef %filter_sem129) #8
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr, align 4
  %mac_lock131 = getelementptr inbounds %struct.efx_nic, ptr %107, i32 0, i32 78
  call void @mutex_unlock(ptr noundef %mac_lock131) #8
  %108 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr, align 4
  %net_dev133 = getelementptr inbounds %struct.efx_nic, ptr %109, i32 0, i32 83
  %110 = ptrtoint ptr %net_dev133 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %net_dev133, align 4
  %call134 = call i32 @efx_net_open(ptr noundef %111) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end127.reset_nic_crit_edge

if.end127.reset_nic_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_nic

if.end137:                                        ; preds = %if.end127
  %112 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %add.ptr, align 4
  %state.i = getelementptr inbounds %struct.efx_nic, ptr %113, i32 0, i32 23
  %114 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp.not.i = icmp eq i32 %115, 2
  br i1 %cmp.not.i, label %if.end137.cleanup_crit_edge, label %land.lhs.true.i

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end137
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %113, i32 0, i32 24
  %116 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i286 = icmp eq i32 %117, 0
  br i1 %tobool.not.i286, label %if.then.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev.i287 = getelementptr inbounds %struct.efx_nic, ptr %113, i32 0, i32 83
  %118 = ptrtoint ptr %net_dev.i287 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %net_dev.i287, align 4
  call void @netif_device_attach(ptr noundef %119) #8
  br label %cleanup

reset_nic_up_write:                               ; preds = %if.then120.reset_nic_up_write_crit_edge, %if.then111.reset_nic_up_write_crit_edge, %restore_evb_port.reset_nic_up_write_crit_edge, %if.then98, %efx_ef10_vport_alloc.exit.thread
  %rc.4 = phi i32 [ %rc.3.ph, %if.then120.reset_nic_up_write_crit_edge ], [ %rc.2, %if.then111.reset_nic_up_write_crit_edge ], [ %rc.1, %restore_evb_port.reset_nic_up_write_crit_edge ], [ %rc.0, %if.then98 ], [ %retval.0.i.ph, %efx_ef10_vport_alloc.exit.thread ]
  %rc2.0 = phi i32 [ %call124, %if.then120.reset_nic_up_write_crit_edge ], [ %call113, %if.then111.reset_nic_up_write_crit_edge ], [ %call.i285, %restore_evb_port.reset_nic_up_write_crit_edge ], [ %call96, %if.then98 ], [ 0, %efx_ef10_vport_alloc.exit.thread ]
  %120 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr, align 4
  %tobool141.not = icmp eq ptr %121, null
  br i1 %tobool141.not, label %reset_nic_up_write.do.body162_crit_edge, label %if.then142

reset_nic_up_write.do.body162_crit_edge:          ; preds = %reset_nic_up_write
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body162

if.then142:                                       ; preds = %reset_nic_up_write
  call void @__sanitizer_cov_trace_pc() #10
  %filter_sem144 = getelementptr inbounds %struct.efx_nic, ptr %121, i32 0, i32 108
  call void @up_write(ptr noundef %filter_sem144) #8
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr, align 4
  %mac_lock146 = getelementptr inbounds %struct.efx_nic, ptr %123, i32 0, i32 78
  call void @mutex_unlock(ptr noundef %mac_lock146) #8
  br label %reset_nic

reset_nic:                                        ; preds = %if.then142, %if.end127.reset_nic_crit_edge
  %rc.5.ph = phi i32 [ %rc.3.ph, %if.end127.reset_nic_crit_edge ], [ %rc.4, %if.then142 ]
  %rc2.1.ph = phi i32 [ %call134, %if.end127.reset_nic_crit_edge ], [ %rc2.0, %if.then142 ]
  %124 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr293 = load ptr, ptr %add.ptr, align 4
  %tobool149.not = icmp eq ptr %.pr293, null
  br i1 %tobool149.not, label %reset_nic.do.body162_crit_edge, label %do.body151

reset_nic.do.body162_crit_edge:                   ; preds = %reset_nic
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body162

do.body151:                                       ; preds = %reset_nic
  %msg_enable152 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %125 = ptrtoint ptr %msg_enable152 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %msg_enable152, align 4
  %and153 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %do.body151.do.end159_crit_edge, label %if.then155

do.body151.do.end159_crit_edge:                   ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end159

if.then155:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev156 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %127 = ptrtoint ptr %net_dev156 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %net_dev156, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %128, ptr noundef nonnull @.str.8) #11
  br label %do.end159

do.end159:                                        ; preds = %if.then155, %do.body151.do.end159_crit_edge
  %129 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr, align 4
  call void @efx_schedule_reset(ptr noundef %130, i32 noundef 5) #8
  br label %if.end180

do.body162:                                       ; preds = %reset_nic.do.body162_crit_edge, %reset_nic_up_write.do.body162_crit_edge
  %rc2.1300 = phi i32 [ %rc2.1.ph, %reset_nic.do.body162_crit_edge ], [ %rc2.0, %reset_nic_up_write.do.body162_crit_edge ]
  %rc.5298 = phi i32 [ %rc.5.ph, %reset_nic.do.body162_crit_edge ], [ %rc.4, %reset_nic_up_write.do.body162_crit_edge ]
  %msg_enable163 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %131 = ptrtoint ptr %msg_enable163 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %msg_enable163, align 4
  %and164 = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.body162.do.body171_crit_edge, label %if.then166

do.body162.do.body171_crit_edge:                  ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body171

if.then166:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev167 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %133 = ptrtoint ptr %net_dev167 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %net_dev167, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %134, ptr noundef nonnull @.str.9) #11
  br label %do.body171

do.body171:                                       ; preds = %if.then166, %do.body162.do.body171_crit_edge
  %135 = ptrtoint ptr %msg_enable163 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %msg_enable163, align 4
  %and173 = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %do.body171.if.end180_crit_edge, label %if.then175

do.body171.if.end180_crit_edge:                   ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

if.then175:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev176 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %137 = ptrtoint ptr %net_dev176 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %net_dev176, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %138, ptr noundef nonnull @.str.10) #11
  br label %if.end180

if.end180:                                        ; preds = %if.then175, %do.body171.if.end180_crit_edge, %do.end159
  %rc2.1299 = phi i32 [ %rc2.1300, %do.body171.if.end180_crit_edge ], [ %rc2.1300, %if.then175 ], [ %rc2.1.ph, %do.end159 ]
  %rc.5297 = phi i32 [ %rc.5298, %do.body171.if.end180_crit_edge ], [ %rc.5298, %if.then175 ], [ %rc.5.ph, %do.end159 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.5297)
  %tobool181.not = icmp eq i32 %rc.5297, 0
  %rc2.1.rc.5 = select i1 %tobool181.not, i32 %rc2.1299, i32 %rc.5297
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %restore_filters.cleanup_crit_edge, %restore_vadaptor.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc2.1.rc.5, %if.end180 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %rc.3.ph, %restore_filters.cleanup_crit_edge ], [ %rc.3.ph, %if.end137.cleanup_crit_edge ], [ %rc.3.ph, %land.lhs.true.i.cleanup_crit_edge ], [ %rc.3.ph, %if.then.i ], [ %rc.2, %restore_vadaptor.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_sriov_set_vf_spoofchk(ptr noundef %efx, i32 noundef %vf_i, i1 noundef zeroext %spoofchk) local_unnamed_addr #0 align 64 {
entry:
  %pm_outbuf.i = alloca [1 x %union.efx_dword], align 4
  %pm_inbuf.i = alloca [2 x %union.efx_dword], align 8
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datapath_caps, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = and i1 %tobool.not, %spoofchk
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond = select i1 %spoofchk, i32 0, i32 2048
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm_outbuf.i) #8
  %5 = ptrtoint ptr %pm_outbuf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pm_outbuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pm_inbuf.i) #8
  %6 = ptrtoint ptr %pm_inbuf.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %pm_inbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #8
  %7 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %outlen.i, align 4, !annotation !36
  %pf_index.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %pf_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pf_index.i, align 8
  %shl.i = shl i32 %vf_i, 16
  %or41.i = or i32 %9, %shl.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %or41.i) #8
  %11 = ptrtoint ptr %pm_inbuf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pm_inbuf.i, align 8
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 90, ptr noundef nonnull %pm_inbuf.i, i32 noundef 8, ptr noundef nonnull %pm_outbuf.i, i32 noundef 4, ptr noundef nonnull %outlen.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.efx_ef10_sriov_set_privilege_mask.exit_crit_edge

if.end.efx_ef10_sriov_set_privilege_mask.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_sriov_set_privilege_mask.exit

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp11.not.i = icmp eq i32 %13, 4
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge

if.end.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_sriov_set_privilege_mask.exit

if.end14.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %pm_outbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pm_outbuf.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #8
  %and19.i = and i32 %16, -2049
  %or20.i = or i32 %and19.i, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %or20.i, i32 %16)
  %cmp21.i = icmp eq i32 %or20.i, %16
  br i1 %cmp21.i, label %if.end14.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge, label %if.end24.i

if.end14.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_sriov_set_privilege_mask.exit

if.end24.i:                                       ; preds = %if.end14.i
  %or25.i = or i32 %or20.i, -2147483648
  %17 = call i32 @llvm.bswap.i32(i32 %or25.i) #8
  %add.ptr32.i = getelementptr inbounds %union.efx_dword, ptr %pm_inbuf.i, i32 1
  %18 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr32.i, align 4
  %call38.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 90, ptr noundef nonnull %pm_inbuf.i, i32 noundef 8, ptr noundef nonnull %pm_outbuf.i, i32 noundef 4, ptr noundef nonnull %outlen.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.not.i = icmp eq i32 %call38.i, 0
  br i1 %cmp39.not.i, label %if.end42.i, label %if.end24.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge

if.end24.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_sriov_set_privilege_mask.exit

if.end42.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp43.not.i = icmp eq i32 %20, 4
  %..i = select i1 %cmp43.not.i, i32 0, i32 -5
  br label %efx_ef10_sriov_set_privilege_mask.exit

efx_ef10_sriov_set_privilege_mask.exit:           ; preds = %if.end42.i, %if.end24.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge, %if.end14.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge, %if.end.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge, %if.end.efx_ef10_sriov_set_privilege_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.efx_ef10_sriov_set_privilege_mask.exit_crit_edge ], [ -5, %if.end.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge ], [ 0, %if.end14.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge ], [ %call38.i, %if.end24.i.efx_ef10_sriov_set_privilege_mask.exit_crit_edge ], [ %..i, %if.end42.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pm_inbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm_outbuf.i) #8
  br label %cleanup

cleanup:                                          ; preds = %efx_ef10_sriov_set_privilege_mask.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %efx_ef10_sriov_set_privilege_mask.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_sriov_set_vf_link_state(ptr noundef %efx, i32 noundef %vf_i, i32 noundef %link_state) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf) #8
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %pf_index = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %pf_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pf_index, align 8
  %shl = shl i32 %vf_i, 16
  %or1026 = or i32 %3, %shl
  %4 = tail call i32 @llvm.bswap.i32(i32 %or1026)
  %5 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %inbuf, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %link_state)
  %add.ptr20 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %7 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr20, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 92, ptr noundef nonnull %inbuf, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf) #8
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_sriov_get_vf_config(ptr noundef %efx, i32 noundef %vf_i, ptr nocapture noundef writeonly %ivf) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [2 x %union.efx_dword], align 8
  %outbuf = alloca [1 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf) #8
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %outbuf, align 4
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %1 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nic_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #8
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen, align 4, !annotation !36
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %4 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %vf_i)
  %cmp.not = icmp ugt i32 %5, %vf_i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vf2 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %2, i32 0, i32 25
  %6 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf2, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ivf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %vf_i, ptr %ivf, align 4
  %min_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivf, i32 0, i32 6
  %9 = ptrtoint ptr %min_tx_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %min_tx_rate, align 4
  %max_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivf, i32 0, i32 7
  %10 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %max_tx_rate, align 4
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivf, i32 0, i32 1
  %mac7 = getelementptr %struct.ef10_vf, ptr %7, i32 %vf_i, i32 4
  %11 = ptrtoint ptr %mac7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mac7, align 4
  %13 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mac, align 4
  %add.ptr.i = getelementptr i8, ptr %mac7, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ifla_vf_info, ptr %ivf, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i, align 2
  %vlan = getelementptr %struct.ef10_vf, ptr %7, i32 %vf_i, i32 5
  %17 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vlan, align 2
  %conv = zext i16 %18 to i32
  %vlan13 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivf, i32 0, i32 2
  %19 = ptrtoint ptr %vlan13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %vlan13, align 4
  %qos = getelementptr inbounds %struct.ifla_vf_info, ptr %ivf, i32 0, i32 3
  %20 = ptrtoint ptr %qos to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %qos, align 4
  %pf_index = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %2, i32 0, i32 22
  %21 = ptrtoint ptr %pf_index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pf_index, align 8
  %shl = shl i32 %vf_i, 16
  %or1660 = or i32 %22, %shl
  %23 = tail call i32 @llvm.bswap.i32(i32 %or1660)
  %24 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %inbuf, align 8
  %add.ptr22 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %25 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %add.ptr22, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 92, ptr noundef nonnull %inbuf, i32 noundef 8, ptr noundef nonnull %outbuf, i32 noundef 4, ptr noundef nonnull %outlen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.end30, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end4
  %26 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp31 = icmp ult i32 %27, 4
  br i1 %cmp31, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %outbuf, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %linkstate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivf, i32 0, i32 5
  %31 = ptrtoint ptr %linkstate to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %linkstate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ -5, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_vadaptor_query(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_quiet(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_display_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ef10_sriov_assign_vf_vport(ptr noundef %efx, i32 noundef %vf_i) unnamed_addr #0 align 64 {
entry:
  %inbuf.i80 = alloca [2 x %union.efx_dword], align 8
  %inbuf.i = alloca [5 x %union.efx_dword], align 4
  %outbuf.i = alloca [1 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %vf2 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end42

land.rhs:                                         ; preds = %entry
  %.b78 = load i1, ptr @efx_ef10_sriov_assign_vf_vport.__already_done, align 1
  br i1 %.b78, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !40

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @efx_ef10_sriov_assign_vf_vport.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 163, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end42:                                         ; preds = %entry
  %vlan = getelementptr %struct.ef10_vf, ptr %3, i32 %vf_i, i32 5
  %4 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan, align 2
  %vport_id = getelementptr %struct.ef10_vf, ptr %3, i32 %vf_i, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %inbuf.i) #8
  %6 = getelementptr inbounds i8, ptr %inbuf.i, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf.i) #8
  %8 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %outbuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #8
  %9 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %outlen.i, align 4, !annotation !36
  %10 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %inbuf.i, align 4
  %add.ptr11.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %11 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 67108864, ptr %add.ptr11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.i = icmp eq i16 %5, 0
  %12 = select i1 %cmp.not.i, i32 0, i32 16777216
  %add.ptr23.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 3
  %13 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr23.i, align 4
  %add.ptr29.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %14 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %add.ptr29.i, align 4
  br i1 %cmp.not.i, label %if.end42.if.end.i_crit_edge, label %do.body36.i

if.end42.if.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body36.i:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %conv16.i = zext i16 %5 to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv16.i) #8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %6, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body36.i, %if.end42.if.end.i_crit_edge
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 150, ptr noundef nonnull %inbuf.i, i32 noundef 20, ptr noundef nonnull %outbuf.i, i32 noundef 4, ptr noundef nonnull %outlen.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end50.i, label %if.end.i.efx_ef10_vport_alloc.exit.thread_crit_edge

if.end.i.efx_ef10_vport_alloc.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_vport_alloc.exit.thread

if.end50.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp51.i = icmp ult i32 %18, 4
  br i1 %cmp51.i, label %if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge, label %if.end45

if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_ef10_vport_alloc.exit.thread

efx_ef10_vport_alloc.exit.thread:                 ; preds = %if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge, %if.end.i.efx_ef10_vport_alloc.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end50.i.efx_ef10_vport_alloc.exit.thread_crit_edge ], [ %call.i, %if.end.i.efx_ef10_vport_alloc.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf.i) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end50.i
  %19 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outbuf.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #8
  %22 = ptrtoint ptr %vport_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %vport_id, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf.i) #8
  %23 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vport_id, align 4
  %mac = getelementptr %struct.ef10_vf, ptr %3, i32 %vf_i, i32 4
  %call47 = call i32 @efx_ef10_vport_add_mac(ptr noundef %efx, i32 noundef %24, ptr noundef %mac) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %25 = call ptr @memset(ptr %mac, i32 0, i32 6)
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %26 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vport_id, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i80) #8
  %28 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nic_data1, align 8
  %30 = call i32 @llvm.bswap.i32(i32 %27) #8
  %31 = ptrtoint ptr %inbuf.i80 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %inbuf.i80, align 8
  %pf_index.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %29, i32 0, i32 22
  %32 = ptrtoint ptr %pf_index.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pf_index.i, align 8
  %shl.i = shl i32 %vf_i, 16
  %or817.i = or i32 %33, %shl.i
  %34 = call i32 @llvm.bswap.i32(i32 %or817.i) #8
  %add.ptr11.i81 = getelementptr inbounds %union.efx_dword, ptr %inbuf.i80, i32 1
  %35 = ptrtoint ptr %add.ptr11.i81 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %add.ptr11.i81, align 4
  %call.i82 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 154, ptr noundef nonnull %inbuf.i80, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool55.not = icmp eq i32 %call.i82, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %vport_assigned = getelementptr %struct.ef10_vf, ptr %3, i32 %vf_i, i32 3
  %36 = ptrtoint ptr %vport_assigned to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %vport_assigned, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end52.cleanup_crit_edge, %if.then49, %efx_ef10_vport_alloc.exit.thread, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.then49 ], [ 0, %if.end57 ], [ -95, %if.then ], [ %call.i82, %if.end52.cleanup_crit_edge ], [ -95, %land.rhs.cleanup_crit_edge ], [ %retval.0.i.ph, %efx_ef10_vport_alloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 460, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @efx_ef10_sriov_fini.__UNIQUE_ID_ddebug524, !1, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 463, i32 3}
!8 = !{ptr @efx_ef10_sriov_fini.__UNIQUE_ID_ddebug525, !7, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 590, i32 4}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 592, i32 4}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 594, i32 4}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 671, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 675, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 678, i32 3}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 163, i32 6}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 415, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/sfc/ef10_sriov.c", i32 397, i32 2}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{i8 0, i8 2}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2148868073, i64 2148868078, i64 2148868091, i64 2148868135, i64 2148868169, i64 2148868190}
!40 = !{!"branch_weights", i32 2000, i32 1}
