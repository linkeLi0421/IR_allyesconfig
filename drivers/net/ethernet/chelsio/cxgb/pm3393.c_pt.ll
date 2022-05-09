; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb/pm3393.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb/pm3393.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gmac = type { i32, ptr, ptr }
%struct.cmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cmac = type { %struct.cmac_statistics, ptr, ptr, ptr }
%struct.cmac_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct._cmac_instance = type { i8, i8, [6 x i8] }
%struct.adapter = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, ptr, ptr, ptr, %struct.napi_struct, [4 x %struct.port_info], %struct.delayed_work, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, [80 x i8], %struct.spinlock, i32, i32, i32, [72 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.chelsio_pci_params, ptr, [8 x i16], i32, i32, i16, i8, i8, i8 }
%struct.sge_params = type { [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.mc5_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chelsio_pci_params = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.port_info = type { ptr, ptr, ptr, %struct.link_config }
%struct.link_config = type { i32, i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.99 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.100, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.100 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@t1_pm3393_ops = dso_local constant { %struct.gmac, [20 x i8] } { %struct.gmac { i32 900, ptr @pm3393_mac_create, ptr @pm3393_mac_reset }, [20 x i8] zeroinitializer }, align 32
@pm3393_ops = internal constant { %struct.cmac_ops, [60 x i8] } { %struct.cmac_ops { ptr @pm3393_destroy, ptr @pm3393_reset, ptr @pm3393_interrupt_enable, ptr @pm3393_interrupt_disable, ptr @pm3393_interrupt_clear, ptr @pm3393_interrupt_handler, ptr @pm3393_enable_port, ptr @pm3393_disable, ptr @pm3393_loopback_enable, ptr @pm3393_loopback_disable, ptr @pm3393_set_mtu, ptr @pm3393_set_rx_mode, ptr @pm3393_set_speed_duplex_fc, ptr @pm3393_get_speed_duplex_fc, ptr @pm3393_update_statistics, ptr @pm3393_macaddress_get, ptr @pm3393_macaddress_set }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pm3393_interrupt_handler.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cxgb\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm3393_interrupt_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/chelsio/cxgb/pm3393.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PM3393 intr cause 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@pm3393_mac_reset.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm3393_mac_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"PM3393 HW reset %d: pl4_reset 0x%x, val 0x%x, is_pl4_outof_lock 0x%x, xaui_locked 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"t1_pm3393_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 785, i32 19 }
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"pm3393_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 567, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 252, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [46 x i8] c"../drivers/net/ethernet/chelsio/cxgb/pm3393.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 776, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @t1_pm3393_ops, ptr @pm3393_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_pm3393_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3393_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pm3393_mac_create(ptr noundef %adapter, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 312) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.cmac, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pm3393_ops, ptr %ops, align 4
  %add.ptr = getelementptr %struct.cmac, ptr %call7.i.i, i32 1
  %instance = getelementptr inbounds %struct.cmac, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %instance, align 8
  %adapter1 = getelementptr inbounds %struct.cmac, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %adapter1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adapter, ptr %adapter1, align 8
  %fc = getelementptr inbounds %struct._cmac_instance, ptr %add.ptr, i32 0, i32 1
  %4 = ptrtoint ptr %fc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %fc, align 1
  %call3 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 4, i32 noundef 32768) #8
  %call4 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 4, i32 noundef 0) #8
  %call5 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35872, i32 noundef 38912) #8
  %call6 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35860, i32 noundef 4097) #8
  %call7 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35968, i32 noundef 34816) #8
  %call8 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35972, i32 noundef 34816) #8
  %call9 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35976, i32 noundef 34816) #8
  %call10 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35980, i32 noundef 34816) #8
  %call11 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35984, i32 noundef 34816) #8
  %call12 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35988, i32 noundef 34816) #8
  %call13 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35992, i32 noundef 34816) #8
  %call14 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35996, i32 noundef 34816) #8
  %call15 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 36000, i32 noundef 34816) #8
  %call16 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 36004, i32 noundef 34816) #8
  %call17 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 36008, i32 noundef 34816) #8
  %call18 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 36012, i32 noundef 34816) #8
  %call19 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 36016, i32 noundef 34816) #8
  %call20 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 36020, i32 noundef 34816) #8
  %call21 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 36024, i32 noundef 34816) #8
  %call22 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 36028, i32 noundef 34816) #8
  %call23 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35892, i32 noundef 39936) #8
  %call24 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35856, i32 noundef 514) #8
  %call25 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51200, i32 noundef 32896) #8
  %call26 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51264, i32 noundef 0) #8
  %call27 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51212, i32 noundef 0) #8
  %call28 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51216, i32 noundef 64) #8
  %call29 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51220, i32 noundef 716) #8
  %call30 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51224, i32 noundef 409) #8
  %call31 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51228, i32 noundef 576) #8
  %call32 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51208, i32 noundef 0) #8
  %call33 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51264, i32 noundef 1) #8
  %call34 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51232, i32 noundef 65535) #8
  %call35 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51240, i32 noundef 65535) #8
  %call36 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51248, i32 noundef 65535) #8
  %call37 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51256, i32 noundef 65535) #8
  %call38 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34816, i32 noundef 49152) #8
  %call39 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34820, i32 noundef 0) #8
  %call40 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34872, i32 noundef 0) #8
  %call41 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34876, i32 noundef 256) #8
  %call42 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34880, i32 noundef 3072) #8
  %call43 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34884, i32 noundef 1433) #8
  %call44 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34868, i32 noundef 0) #8
  %call45 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34820, i32 noundef 1) #8
  %call46 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34828, i32 noundef 65535) #8
  %call47 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34836, i32 noundef 65535) #8
  %call48 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 34852, i32 noundef 65535) #8
  %call49 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35076, i32 noundef -2) #8
  %call50 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35080, i32 noundef 65535) #8
  %call51 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35084, i32 noundef 8) #8
  %call52 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35088, i32 noundef 8) #8
  %call53 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35092, i32 noundef 8) #8
  %call54 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35072, i32 noundef 5) #8
  %call55 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35328, i32 noundef 8451) #8
  %call56 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 35344, i32 noundef 0) #8
  %call57 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51712, i32 noundef 135) #8
  %call58 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 51720, i32 noundef 31) #8
  %call59 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 49408, i32 noundef 3122) #8
  %call60 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 49460, i32 noundef 32768) #8
  %call61 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 33024, i32 noundef 1436) #8
  %call62 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 33060, i32 noundef 1) #8
  %call63 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 33216, i32 noundef 0) #8
  %call64 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 33208, i32 noundef 0) #8
  %call65 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 33064, i32 noundef 65535) #8
  %call66 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 33068, i32 noundef 65535) #8
  %call67 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 33072, i32 noundef 65535) #8
  %call68 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 33208, i32 noundef 9) #8
  %call69 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 12, i32 noundef 0) #8
  %call70 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 1024, i32 noundef 4080) #8
  %call71 = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 1028, i32 noundef 3855) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_mac_reset(ptr noundef %adapter) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !23
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and = and i32 %2, -2
  store i32 %and, ptr %val, align 4
  %call1 = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and) #8
  call void @msleep(i32 noundef 1) #8
  call void @msleep(i32 noundef 1) #8
  call void @msleep(i32 noundef 2) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %or = or i32 %4, 1
  store i32 %or, ptr %val, align 4
  %call2 = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or) #8
  call void @msleep(i32 noundef 15) #8
  call void @msleep(i32 noundef 1) #8
  %call3 = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull %val) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and4 = and i32 %6, 64
  %and5 = and i32 %6, 23
  %and6 = and i32 %6, 512
  %7 = and i32 %6, 599
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %7)
  %8 = icmp ne i32 %7, 576
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 8
  %and12 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm3393_mac_reset.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm3393_mac_reset, %if.then19)) #8
          to label %for.inc [label %if.then19], !srcloc !24

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm3393_mac_reset.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %i.035, i32 noundef %and4, i32 noundef %14, i32 noundef %and5, i32 noundef %and6) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %do.body, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.035, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.035)
  %cmp = icmp ult i32 %i.035, 2
  %or.cond = select i1 %cmp, i1 %8, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %15 = zext i1 %8 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tpi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm3393_destroy(ptr noundef %cmac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cmac) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm3393_reset(ptr nocapture noundef readnone %cmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_interrupt_enable(ptr nocapture noundef readonly %cmac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 8
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %1, i32 noundef 1032, i32 noundef 65535) #8
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 8
  %call.i44 = tail call i32 @t1_tpi_write(ptr noundef %3, i32 noundef 33312, i32 noundef 65535) #8
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 8
  %call.i46 = tail call i32 @t1_tpi_write(ptr noundef %5, i32 noundef 33324, i32 noundef 65535) #8
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 8
  %call.i48 = tail call i32 @t1_tpi_write(ptr noundef %7, i32 noundef 33564, i32 noundef 65535) #8
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 8
  %call.i50 = tail call i32 @t1_tpi_write(ptr noundef %9, i32 noundef 33812, i32 noundef 0) #8
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %call.i52 = tail call i32 @t1_tpi_write(ptr noundef %11, i32 noundef 33816, i32 noundef 0) #8
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  %call.i54 = tail call i32 @t1_tpi_write(ptr noundef %13, i32 noundef 33820, i32 noundef 0) #8
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i56 = tail call i32 @t1_tpi_write(ptr noundef %15, i32 noundef 33824, i32 noundef 0) #8
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i58 = tail call i32 @t1_tpi_write(ptr noundef %17, i32 noundef 34852, i32 noundef 65535) #8
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i60 = tail call i32 @t1_tpi_write(ptr noundef %19, i32 noundef 35336, i32 noundef 65535) #8
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call.i62 = tail call i32 @t1_tpi_write(ptr noundef %21, i32 noundef 49684, i32 noundef 65535) #8
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  %call.i64 = tail call i32 @t1_tpi_write(ptr noundef %23, i32 noundef 49944, i32 noundef 65535) #8
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 8
  %call.i66 = tail call i32 @t1_tpi_write(ptr noundef %25, i32 noundef 33032, i32 noundef 65535) #8
  %26 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i, align 8
  %call.i68 = tail call i32 @t1_tpi_write(ptr noundef %27, i32 noundef 35848, i32 noundef 65535) #8
  %28 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i, align 8
  %call.i70 = tail call i32 @t1_tpi_write(ptr noundef %29, i32 noundef 49416, i32 noundef 65535) #8
  %30 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter.i, align 8
  %call.i72 = tail call i32 @t1_tpi_write(ptr noundef %31, i32 noundef 51720, i32 noundef 65535) #8
  %32 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i, align 8
  %call.i74 = tail call i32 @t1_tpi_write(ptr noundef %33, i32 noundef 51248, i32 noundef 65535) #8
  %34 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i, align 8
  %call.i76 = tail call i32 @t1_tpi_write(ptr noundef %35, i32 noundef 56, i32 noundef 0) #8
  %36 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 128
  %add.ptr = getelementptr i8, ptr %39, i32 2560
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !26
  %41 = or i32 %40, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 128
  %add.ptr22 = getelementptr i8, ptr %45, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %41) #8, !srcloc !28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_interrupt_disable(ptr nocapture noundef readonly %cmac) #0 align 64 {
entry:
  %elmer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elmer) #8
  %0 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %elmer, align 4, !annotation !23
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %1 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i, align 8
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %2, i32 noundef 1032, i32 noundef 0) #8
  %3 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i, align 8
  %call.i41 = tail call i32 @t1_tpi_write(ptr noundef %4, i32 noundef 33312, i32 noundef 0) #8
  %5 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i, align 8
  %call.i43 = tail call i32 @t1_tpi_write(ptr noundef %6, i32 noundef 33324, i32 noundef 0) #8
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 8
  %call.i45 = tail call i32 @t1_tpi_write(ptr noundef %8, i32 noundef 33564, i32 noundef 0) #8
  %9 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i, align 8
  %call.i47 = tail call i32 @t1_tpi_write(ptr noundef %10, i32 noundef 33812, i32 noundef 0) #8
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 8
  %call.i49 = tail call i32 @t1_tpi_write(ptr noundef %12, i32 noundef 33816, i32 noundef 0) #8
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call.i51 = tail call i32 @t1_tpi_write(ptr noundef %14, i32 noundef 33820, i32 noundef 0) #8
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 8
  %call.i53 = tail call i32 @t1_tpi_write(ptr noundef %16, i32 noundef 33824, i32 noundef 0) #8
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i55 = tail call i32 @t1_tpi_write(ptr noundef %18, i32 noundef 34852, i32 noundef 0) #8
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call.i57 = tail call i32 @t1_tpi_write(ptr noundef %20, i32 noundef 35336, i32 noundef 0) #8
  %21 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter.i, align 8
  %call.i59 = tail call i32 @t1_tpi_write(ptr noundef %22, i32 noundef 49684, i32 noundef 0) #8
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %call.i61 = tail call i32 @t1_tpi_write(ptr noundef %24, i32 noundef 49944, i32 noundef 0) #8
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call.i63 = tail call i32 @t1_tpi_write(ptr noundef %26, i32 noundef 33032, i32 noundef 0) #8
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %call.i65 = tail call i32 @t1_tpi_write(ptr noundef %28, i32 noundef 35848, i32 noundef 0) #8
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 8
  %call.i67 = tail call i32 @t1_tpi_write(ptr noundef %30, i32 noundef 49416, i32 noundef 0) #8
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 8
  %call.i69 = tail call i32 @t1_tpi_write(ptr noundef %32, i32 noundef 51720, i32 noundef 0) #8
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call.i71 = tail call i32 @t1_tpi_write(ptr noundef %34, i32 noundef 51248, i32 noundef 0) #8
  %35 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i, align 8
  %call.i73 = tail call i32 @t1_tpi_write(ptr noundef %36, i32 noundef 56, i32 noundef 0) #8
  %37 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i, align 8
  %call18 = call i32 @t1_tpi_read(ptr noundef %38, i32 noundef 1048584, ptr noundef nonnull %elmer) #8
  %39 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %elmer, align 4
  %and = and i32 %40, -3
  store i32 %and, ptr %elmer, align 4
  %41 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i, align 8
  %call20 = call i32 @t1_tpi_write(ptr noundef %42, i32 noundef 1048584, i32 noundef %and) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elmer) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_interrupt_clear(ptr nocapture noundef readonly %cmac) #0 align 64 {
entry:
  %elmer = alloca i32, align 4
  %val32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elmer) #8
  %0 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %elmer, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32) #8
  %1 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val32, align 4, !annotation !23
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @t1_tpi_read(ptr noundef %3, i32 noundef 1040, ptr noundef nonnull %val32) #8
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 8
  %call.i45 = call i32 @t1_tpi_read(ptr noundef %5, i32 noundef 33316, ptr noundef nonnull %val32) #8
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 8
  %call.i47 = call i32 @t1_tpi_read(ptr noundef %7, i32 noundef 33328, ptr noundef nonnull %val32) #8
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 8
  %call.i49 = call i32 @t1_tpi_read(ptr noundef %9, i32 noundef 33568, ptr noundef nonnull %val32) #8
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %call.i51 = call i32 @t1_tpi_read(ptr noundef %11, i32 noundef 35340, ptr noundef nonnull %val32) #8
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  %call.i53 = call i32 @t1_tpi_read(ptr noundef %13, i32 noundef 49680, ptr noundef nonnull %val32) #8
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i55 = call i32 @t1_tpi_read(ptr noundef %15, i32 noundef 34856, ptr noundef nonnull %val32) #8
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i57 = call i32 @t1_tpi_read(ptr noundef %17, i32 noundef 49948, ptr noundef nonnull %val32) #8
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i59 = call i32 @t1_tpi_read(ptr noundef %19, i32 noundef 33036, ptr noundef nonnull %val32) #8
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call.i61 = call i32 @t1_tpi_read(ptr noundef %21, i32 noundef 49420, ptr noundef nonnull %val32) #8
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  %call.i63 = call i32 @t1_tpi_read(ptr noundef %23, i32 noundef 51724, ptr noundef nonnull %val32) #8
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 8
  %call.i65 = call i32 @t1_tpi_read(ptr noundef %25, i32 noundef 51252, ptr noundef nonnull %val32) #8
  %26 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i, align 8
  %call.i67 = call i32 @t1_tpi_read(ptr noundef %27, i32 noundef 35840, ptr noundef nonnull %val32) #8
  %28 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i, align 8
  %call.i69 = call i32 @t1_tpi_read(ptr noundef %29, i32 noundef 35844, ptr noundef nonnull %val32) #8
  %30 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter.i, align 8
  %call.i71 = call i32 @t1_tpi_read(ptr noundef %31, i32 noundef 52, ptr noundef nonnull %val32) #8
  %32 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i, align 8
  %call15 = call i32 @t1_tpi_read(ptr noundef %33, i32 noundef 1048588, ptr noundef nonnull %elmer) #8
  %34 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %elmer, align 4
  %or = or i32 %35, 2
  store i32 %or, ptr %elmer, align 4
  %36 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i, align 8
  %call17 = call i32 @t1_tpi_write(ptr noundef %37, i32 noundef 1048588, i32 noundef %or) #8
  %38 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 128
  %add.ptr = getelementptr i8, ptr %41, i32 2564
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !29
  %43 = or i32 %42, 524288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 128
  %add.ptr24 = getelementptr i8, ptr %47, i32 2564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %43) #8, !srcloc !28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elmer) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_interrupt_handler(ptr nocapture noundef readonly %cmac) #0 align 64 {
entry:
  %master_intr_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %master_intr_status) #8
  %0 = ptrtoint ptr %master_intr_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %master_intr_status, align 4, !annotation !23
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %1 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @t1_tpi_read(ptr noundef %2, i32 noundef 52, ptr noundef nonnull %master_intr_status) #8
  %3 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i, align 8
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm3393_interrupt_handler.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm3393_interrupt_handler, %if.then5)) #8
          to label %if.end7 [label %if.then5], !srcloc !24

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 8
  %pdev = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %master_intr_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %master_intr_status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm3393_interrupt_handler.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %12) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body, %entry.if.end7_crit_edge
  %call8 = call i32 @pm3393_interrupt_clear(ptr noundef %cmac)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master_intr_status) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_enable_port(ptr nocapture noundef %cmac, i32 noundef %which) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 8
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %1, i32 noundef 33792, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496) #8
  %3 = call ptr @memset(ptr %cmac, i32 0, i32 288)
  %and.i = and i32 %which, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 8
  %call.i.i = tail call i32 @t1_tpi_write(ptr noundef %5, i32 noundef 33024, i32 noundef 33948) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %and1.i = and i32 %which, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.pm3393_enable.exit_crit_edge, label %if.then3.i

if.end.i.pm3393_enable.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3393_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 3
  %6 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %instance.i, align 8
  %fc.i = getelementptr inbounds %struct._cmac_instance, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %fc.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fc.i, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 34354, i32 34358
  %11 = shl i8 %9, 2
  %12 = and i8 %11, 8
  %13 = zext i8 %12 to i32
  %14 = or i32 %spec.select.i, %13
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 8
  %call.i2.i = tail call i32 @t1_tpi_write(ptr noundef %16, i32 noundef 49408, i32 noundef %14) #8
  br label %pm3393_enable.exit

pm3393_enable.exit:                               ; preds = %if.then3.i, %if.end.i.pm3393_enable.exit_crit_edge
  %instance18.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 3
  %17 = ptrtoint ptr %instance18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %instance18.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %21 = trunc i32 %which to i8
  %conv21.i = or i8 %20, %21
  store i8 %conv21.i, ptr %18, align 1
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  tail call void @t1_link_changed(ptr noundef %23, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_disable(ptr nocapture noundef readonly %cmac, i32 noundef %which) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %which, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 8
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %1, i32 noundef 33024, i32 noundef 1180) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %which, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %adapter.i12 = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i12, align 8
  %call.i13 = tail call i32 @t1_tpi_write(ptr noundef %3, i32 noundef 49408, i32 noundef 1586) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 4294960) #8
  %instance = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 3
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instance, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %9 = trunc i32 %which to i8
  %10 = xor i8 %9, -1
  %conv7 = and i8 %8, %10
  store i8 %conv7, ptr %6, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm3393_loopback_enable(ptr nocapture noundef readnone %cmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm3393_loopback_disable(ptr nocapture noundef readnone %cmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_set_mtu(ptr nocapture noundef readonly %cmac, i32 noundef %mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %instance = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 3
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %add = add i32 %mtu, 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %adapter.i21 = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %4 = ptrtoint ptr %adapter.i21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i21, align 8
  br i1 %tobool.not, label %if.end7.critedge, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @t1_tpi_write(ptr noundef %5, i32 noundef 33024, i32 noundef 1180) #8
  %6 = ptrtoint ptr %adapter.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i21, align 8
  %call.i13.i = tail call i32 @t1_tpi_write(ptr noundef %7, i32 noundef 49408, i32 noundef 1586) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 4294960) #8
  %9 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instance, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv7.i = and i8 %12, -4
  store i8 %conv7.i, ptr %10, align 1
  %13 = ptrtoint ptr %adapter.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i21, align 8
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %14, i32 noundef 33044, i32 noundef %add) #8
  %15 = ptrtoint ptr %adapter.i21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i21, align 8
  %call.i17 = tail call i32 @t1_tpi_write(ptr noundef %16, i32 noundef 49428, i32 noundef %add) #8
  %and.i = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %adapter.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i21, align 8
  %call.i.i19 = tail call i32 @t1_tpi_write(ptr noundef %18, i32 noundef 33024, i32 noundef 33948) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %and1.i = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.pm3393_enable.exit_crit_edge, label %if.then3.i

if.end.i.pm3393_enable.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3393_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %instance, align 8
  %fc.i = getelementptr inbounds %struct._cmac_instance, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %fc.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fc.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool5.not.i = icmp eq i8 %23, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 34354, i32 34358
  %24 = shl i8 %22, 2
  %25 = and i8 %24, 8
  %26 = zext i8 %25 to i32
  %27 = or i32 %spec.select.i, %26
  %28 = ptrtoint ptr %adapter.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i21, align 8
  %call.i2.i = tail call i32 @t1_tpi_write(ptr noundef %29, i32 noundef 49408, i32 noundef %27) #8
  br label %pm3393_enable.exit

pm3393_enable.exit:                               ; preds = %if.then3.i, %if.end.i.pm3393_enable.exit_crit_edge
  %30 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %instance, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv21.i = or i8 %33, %3
  store i8 %conv21.i, ptr %31, align 1
  br label %if.end7

if.end7.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i22 = tail call i32 @t1_tpi_write(ptr noundef %5, i32 noundef 33044, i32 noundef %add) #8
  %34 = ptrtoint ptr %adapter.i21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i21, align 8
  %call.i24 = tail call i32 @t1_tpi_write(ptr noundef %35, i32 noundef 49428, i32 noundef %add) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end7.critedge, %pm3393_enable.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_set_rx_mode(ptr nocapture noundef readonly %cmac, ptr nocapture noundef readonly %rm) #0 align 64 {
entry:
  %rx_mode = alloca i32, align 4
  %mc_filter = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %instance = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 3
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = and i8 %3, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_mode) #8
  %5 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %rx_mode, align 4, !annotation !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %adapter.i.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %6 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = tail call i32 @t1_tpi_write(ptr noundef %7, i32 noundef 33024, i32 noundef 1180) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 4294960) #8
  %9 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instance, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv7.i = and i8 %12, -2
  store i8 %conv7.i, ptr %10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @t1_tpi_read(ptr noundef %14, i32 noundef 33216, ptr noundef nonnull %rx_mode) #8
  %15 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_mode, align 4
  %and3 = and i32 %16, -4
  store i32 %and3, ptr %rx_mode, align 4
  %conv5 = and i32 %16, 65532
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i125 = call i32 @t1_tpi_write(ptr noundef %18, i32 noundef 33216, i32 noundef %conv5) #8
  %19 = ptrtoint ptr %rm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rm, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and7 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_mode, align 4
  %or = or i32 %24, 2
  store i32 %or, ptr %rx_mode, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 8
  %and13 = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %call.i127 = call i32 @t1_tpi_write(ptr noundef %28, i32 noundef 33192, i32 noundef 65535) #8
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 8
  %call.i129 = call i32 @t1_tpi_write(ptr noundef %30, i32 noundef 33196, i32 noundef 65535) #8
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 8
  %call.i131 = call i32 @t1_tpi_write(ptr noundef %32, i32 noundef 33200, i32 noundef 65535) #8
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call.i133 = call i32 @t1_tpi_write(ptr noundef %34, i32 noundef 33204, i32 noundef 65535) #8
  %35 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_mode, align 4
  %or20 = or i32 %36, 1
  store i32 %or20, ptr %rx_mode, align 4
  br label %if.end83

if.else:                                          ; preds = %if.end10
  %count = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 66, i32 1
  %37 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool22.not = icmp eq i32 %38, 0
  br i1 %tobool22.not, label %if.else.if.end83_crit_edge, label %if.then23

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then23:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #8
  %39 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %mc_filter, align 8
  %mc25 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 66
  %40 = ptrtoint ptr %mc25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %ha.0146 = load ptr, ptr %mc25, align 4
  %cmp.not147 = icmp eq ptr %ha.0146, %mc25
  br i1 %cmp.not147, label %if.then23.for.end_crit_edge, label %if.then23.cond.end_crit_edge

if.then23.cond.end_crit_edge:                     ; preds = %if.then23
  br label %cond.end

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.then23.cond.end_crit_edge
  %ha.0148 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0146, %if.then23.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0148, i32 0, i32 2
  %call31 = call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #12
  %41 = lshr i32 %call31, 8
  %conv4.i.i = and i32 %41, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %42 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %43 to i32
  %44 = shl nuw nsw i32 %conv6.i.i, 16
  %45 = and i32 %call31, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %47 to i32
  %48 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %44, %48
  %shr56 = lshr i32 %or.i13.i, 23
  %and58 = and i32 %shr56, 15
  %shl59 = shl nuw nsw i32 1, %and58
  %and57 = lshr i32 %conv2.i.i, 3
  %49 = and i32 %and57, 3
  %arrayidx = getelementptr [4 x i16], ptr %mc_filter, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx, align 2
  %52 = trunc i32 %shl59 to i16
  %conv63 = or i16 %51, %52
  store i16 %conv63, ptr %arrayidx, align 2
  %53 = ptrtoint ptr %ha.0148 to i32
  call void @__asan_load4_noabort(i32 %53)
  %ha.0 = load ptr, ptr %ha.0148, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc25
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.then23.for.end_crit_edge
  %54 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mc_filter, align 8
  %conv70 = zext i16 %55 to i32
  %56 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter.i, align 8
  %call.i135 = call i32 @t1_tpi_write(ptr noundef %57, i32 noundef 33192, i32 noundef %conv70) #8
  %arrayidx72 = getelementptr inbounds [4 x i16], ptr %mc_filter, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx72, align 2
  %conv73 = zext i16 %59 to i32
  %60 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter.i, align 8
  %call.i137 = call i32 @t1_tpi_write(ptr noundef %61, i32 noundef 33196, i32 noundef %conv73) #8
  %arrayidx75 = getelementptr inbounds [4 x i16], ptr %mc_filter, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx75, align 4
  %conv76 = zext i16 %63 to i32
  %64 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter.i, align 8
  %call.i139 = call i32 @t1_tpi_write(ptr noundef %65, i32 noundef 33200, i32 noundef %conv76) #8
  %arrayidx78 = getelementptr inbounds [4 x i16], ptr %mc_filter, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx78, align 2
  %conv79 = zext i16 %67 to i32
  %68 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter.i, align 8
  %call.i141 = call i32 @t1_tpi_write(ptr noundef %69, i32 noundef 33204, i32 noundef %conv79) #8
  %70 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_mode, align 4
  %or81 = or i32 %71, 1
  store i32 %or81, ptr %rx_mode, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #8
  br label %if.end83

if.end83:                                         ; preds = %for.end, %if.else.if.end83_crit_edge, %if.then15
  %72 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_mode, align 4
  %conv85 = and i32 %73, 65535
  %74 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter.i, align 8
  %call.i143 = call i32 @t1_tpi_write(ptr noundef %75, i32 noundef 33216, i32 noundef %conv85) #8
  br i1 %tobool.not, label %if.end83.if.end90_crit_edge, label %if.then88

if.end83.if.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adapter.i, align 8
  %call.i.i145 = call i32 @t1_tpi_write(ptr noundef %77, i32 noundef 33024, i32 noundef 33948) #8
  %78 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %instance, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 1
  %conv21.i = or i8 %81, 1
  store i8 %conv21.i, ptr %79, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end83.if.end90_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_mode) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_set_speed_duplex_fc(ptr nocapture noundef readonly %cmac, i32 noundef %speed, i32 noundef %duplex, i32 noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed)
  %cmp = icmp slt i32 %speed, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %speed)
  %cmp1.not = icmp eq i32 %speed, 10000
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %cmp2 = icmp slt i32 %duplex, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp4.not = icmp eq i32 %duplex, 1
  %or.cond30 = or i1 %cmp2, %cmp4.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fc)
  %tobool.not = icmp ult i32 %fc, 4
  %or.cond31 = and i1 %or.cond30, %tobool.not
  br i1 %or.cond31, label %if.end8, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end8:                                          ; preds = %if.end
  %instance = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 3
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 8
  %fc9 = getelementptr inbounds %struct._cmac_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fc9 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fc9, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %fc)
  %cmp10.not = icmp eq i32 %conv, %fc
  br i1 %cmp10.not, label %if.end8.return_crit_edge, label %if.then12

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then12:                                        ; preds = %if.end8
  %conv13 = trunc i32 %fc to i8
  %4 = ptrtoint ptr %fc9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv13, ptr %fc9, align 1
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instance, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool19.not = icmp eq i8 %9, 0
  br i1 %tobool19.not, label %if.then12.return_crit_edge, label %if.then20

if.then12.return_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %fc.i = getelementptr inbounds %struct._cmac_instance, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %fc.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fc.i, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not.i = icmp eq i8 %12, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 34354, i32 34358
  %13 = shl i8 %11, 2
  %14 = and i8 %13, 8
  %15 = zext i8 %14 to i32
  %16 = or i32 %spec.select.i, %15
  %adapter.i1.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %17 = ptrtoint ptr %adapter.i1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i1.i, align 8
  %call.i2.i = tail call i32 @t1_tpi_write(ptr noundef %18, i32 noundef 49408, i32 noundef %16) #8
  %19 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %instance, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv21.i = or i8 %22, 2
  store i8 %conv21.i, ptr %20, align 1
  br label %return

return:                                           ; preds = %if.then20, %if.then12.return_crit_edge, %if.end8.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %entry.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ 0, %if.then12.return_crit_edge ], [ 0, %if.then20 ], [ 0, %if.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm3393_get_speed_duplex_fc(ptr nocapture noundef readonly %cmac, ptr noundef writeonly %speed, ptr noundef writeonly %duplex, ptr noundef writeonly %fc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %speed, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10000, ptr %speed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %duplex, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %duplex, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %fc, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %instance = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 3
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instance, align 8
  %fc6 = getelementptr inbounds %struct._cmac_instance, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fc6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fc6, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %fc, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pm3393_update_statistics(ptr noundef returned %mac, i32 noundef %flag) #0 align 64 {
entry:
  %val0 = alloca i32, align 4
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  %val3 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val0) #8
  %0 = ptrtoint ptr %val0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val0, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val1) #8
  %1 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val1, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2) #8
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val2, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val3) #8
  %3 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val3, align 4, !annotation !23
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 8
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %5, i32 noundef 33792, i32 noundef 1) #8
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 8
  %call.i904 = call i32 @t1_tpi_read(ptr noundef %7, i32 noundef 33796, ptr noundef nonnull %val0) #8
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 8
  %call.i906 = call i32 @t1_tpi_read(ptr noundef %9, i32 noundef 33800, ptr noundef nonnull %val1) #8
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %call.i908 = call i32 @t1_tpi_read(ptr noundef %11, i32 noundef 33804, ptr noundef nonnull %val2) #8
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  %call.i910 = call i32 @t1_tpi_read(ptr noundef %13, i32 noundef 33808, ptr noundef nonnull %val3) #8
  %14 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val0, align 4
  %16 = and i32 %15, 65535
  %17 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val1, align 4
  %19 = shl i32 %18, 16
  %or855 = or i32 %19, %16
  %or = zext i32 %or855 to i64
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val2, align 4
  %22 = and i32 %21, 65535
  %and8 = zext i32 %22 to i64
  %23 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val3, align 4
  %and12 = zext i32 %24 to i64
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call15 = call i32 @t1_tpi_read(ptr noundef %26, i32 noundef 33872, ptr noundef nonnull %val0) #8
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %call17 = call i32 @t1_tpi_read(ptr noundef %28, i32 noundef 33876, ptr noundef nonnull %val1) #8
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 8
  %call19 = call i32 @t1_tpi_read(ptr noundef %30, i32 noundef 33880, ptr noundef nonnull %val2) #8
  %31 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val0, align 4
  %and20 = and i32 %32, 65535
  %33 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val1, align 4
  %35 = shl i32 %34, 16
  %or25856 = or i32 %35, %and20
  %or25 = zext i32 %or25856 to i64
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val2, align 4
  %and26 = and i32 %37, 255
  %conv27 = zext i32 %and26 to i64
  %shl28 = shl nuw nsw i64 %conv27, 32
  %or29 = or i64 %shl28, %or25
  %RxOctetsOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 17
  %38 = ptrtoint ptr %RxOctetsOK to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %RxOctetsOK, align 8
  %and30 = and i64 %39, -1099511627776
  %or31 = or i64 %or29, %and30
  %and34 = and i64 %or, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34)
  %tobool.not = icmp eq i64 %and34, 0
  %add = add i64 %or31, 1099511627776
  %spec.select = select i1 %tobool.not, i64 %or31, i64 %add
  %40 = ptrtoint ptr %RxOctetsOK to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %spec.select, ptr %RxOctetsOK, align 8
  %41 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i, align 8
  %call38 = call i32 @t1_tpi_read(ptr noundef %42, i32 noundef 33920, ptr noundef nonnull %val0) #8
  %43 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i, align 8
  %call40 = call i32 @t1_tpi_read(ptr noundef %44, i32 noundef 33924, ptr noundef nonnull %val1) #8
  %45 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i, align 8
  %call42 = call i32 @t1_tpi_read(ptr noundef %46, i32 noundef 33928, ptr noundef nonnull %val2) #8
  %47 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val0, align 4
  %and43 = and i32 %48, 65535
  %49 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val1, align 4
  %51 = shl i32 %50, 16
  %or48857 = or i32 %51, %and43
  %or48 = zext i32 %or48857 to i64
  %52 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val2, align 4
  %and49 = and i32 %53, 255
  %conv50 = zext i32 %and49 to i64
  %shl51 = shl nuw nsw i64 %conv50, 32
  %or52 = or i64 %shl51, %or48
  %RxUnicastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 19
  %54 = ptrtoint ptr %RxUnicastFramesOK to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %RxUnicastFramesOK, align 8
  %and54 = and i64 %55, -1099511627776
  %or55 = or i64 %or52, %and54
  %and58 = and i64 %or, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and58)
  %tobool59.not = icmp eq i64 %and58, 0
  %add63 = add i64 %or55, 1099511627776
  %storemerge901 = select i1 %tobool59.not, i64 %or55, i64 %add63
  %56 = ptrtoint ptr %RxUnicastFramesOK to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %storemerge901, ptr %RxUnicastFramesOK, align 8
  %57 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter.i, align 8
  %call66 = call i32 @t1_tpi_read(ptr noundef %58, i32 noundef 33936, ptr noundef nonnull %val0) #8
  %59 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter.i, align 8
  %call68 = call i32 @t1_tpi_read(ptr noundef %60, i32 noundef 33940, ptr noundef nonnull %val1) #8
  %61 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i, align 8
  %call70 = call i32 @t1_tpi_read(ptr noundef %62, i32 noundef 33944, ptr noundef nonnull %val2) #8
  %63 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val0, align 4
  %and71 = and i32 %64, 65535
  %65 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val1, align 4
  %67 = shl i32 %66, 16
  %or76858 = or i32 %67, %and71
  %or76 = zext i32 %or76858 to i64
  %68 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val2, align 4
  %and77 = and i32 %69, 255
  %conv78 = zext i32 %and77 to i64
  %shl79 = shl nuw nsw i64 %conv78, 32
  %or80 = or i64 %shl79, %or76
  %RxMulticastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 20
  %70 = ptrtoint ptr %RxMulticastFramesOK to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %RxMulticastFramesOK, align 8
  %and82 = and i64 %71, -1099511627776
  %or83 = or i64 %or80, %and82
  %and86 = and i64 %or, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and86)
  %tobool87.not = icmp eq i64 %and86, 0
  %add91 = add i64 %or83, 1099511627776
  %storemerge900 = select i1 %tobool87.not, i64 %or83, i64 %add91
  %72 = ptrtoint ptr %RxMulticastFramesOK to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %storemerge900, ptr %RxMulticastFramesOK, align 8
  %73 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter.i, align 8
  %call94 = call i32 @t1_tpi_read(ptr noundef %74, i32 noundef 33952, ptr noundef nonnull %val0) #8
  %75 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adapter.i, align 8
  %call96 = call i32 @t1_tpi_read(ptr noundef %76, i32 noundef 33956, ptr noundef nonnull %val1) #8
  %77 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter.i, align 8
  %call98 = call i32 @t1_tpi_read(ptr noundef %78, i32 noundef 33960, ptr noundef nonnull %val2) #8
  %79 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val0, align 4
  %and99 = and i32 %80, 65535
  %81 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val1, align 4
  %83 = shl i32 %82, 16
  %or104859 = or i32 %83, %and99
  %or104 = zext i32 %or104859 to i64
  %84 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val2, align 4
  %and105 = and i32 %85, 255
  %conv106 = zext i32 %and105 to i64
  %shl107 = shl nuw nsw i64 %conv106, 32
  %or108 = or i64 %shl107, %or104
  %RxBroadcastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 21
  %86 = ptrtoint ptr %RxBroadcastFramesOK to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %RxBroadcastFramesOK, align 8
  %and110 = and i64 %87, -1099511627776
  %or111 = or i64 %or108, %and110
  %and114 = and i64 %or, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and114)
  %tobool115.not = icmp eq i64 %and114, 0
  %add119 = add i64 %or111, 1099511627776
  %storemerge899 = select i1 %tobool115.not, i64 %or111, i64 %add119
  %88 = ptrtoint ptr %RxBroadcastFramesOK to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %storemerge899, ptr %RxBroadcastFramesOK, align 8
  %89 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adapter.i, align 8
  %call122 = call i32 @t1_tpi_read(ptr noundef %90, i32 noundef 33984, ptr noundef nonnull %val0) #8
  %91 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter.i, align 8
  %call124 = call i32 @t1_tpi_read(ptr noundef %92, i32 noundef 33988, ptr noundef nonnull %val1) #8
  %93 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %adapter.i, align 8
  %call126 = call i32 @t1_tpi_read(ptr noundef %94, i32 noundef 33992, ptr noundef nonnull %val2) #8
  %95 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %val0, align 4
  %and127 = and i32 %96, 65535
  %97 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %val1, align 4
  %99 = shl i32 %98, 16
  %or132860 = or i32 %99, %and127
  %or132 = zext i32 %or132860 to i64
  %100 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val2, align 4
  %and133 = and i32 %101, 255
  %conv134 = zext i32 %and133 to i64
  %shl135 = shl nuw nsw i64 %conv134, 32
  %or136 = or i64 %shl135, %or132
  %RxPauseFrames = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 22
  %102 = ptrtoint ptr %RxPauseFrames to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %RxPauseFrames, align 8
  %and138 = and i64 %103, -1099511627776
  %or139 = or i64 %or136, %and138
  %and142 = and i64 %or, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and142)
  %tobool143.not = icmp eq i64 %and142, 0
  %add147 = add i64 %or139, 1099511627776
  %storemerge898 = select i1 %tobool143.not, i64 %or139, i64 %add147
  %104 = ptrtoint ptr %RxPauseFrames to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %storemerge898, ptr %RxPauseFrames, align 8
  %105 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %adapter.i, align 8
  %call150 = call i32 @t1_tpi_read(ptr noundef %106, i32 noundef 34016, ptr noundef nonnull %val0) #8
  %107 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %adapter.i, align 8
  %call152 = call i32 @t1_tpi_read(ptr noundef %108, i32 noundef 34020, ptr noundef nonnull %val1) #8
  %109 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %adapter.i, align 8
  %call154 = call i32 @t1_tpi_read(ptr noundef %110, i32 noundef 34024, ptr noundef nonnull %val2) #8
  %111 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val0, align 4
  %and155 = and i32 %112, 65535
  %113 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val1, align 4
  %115 = shl i32 %114, 16
  %or160861 = or i32 %115, %and155
  %or160 = zext i32 %or160861 to i64
  %116 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val2, align 4
  %and161 = and i32 %117, 255
  %conv162 = zext i32 %and161 to i64
  %shl163 = shl nuw nsw i64 %conv162, 32
  %or164 = or i64 %shl163, %or160
  %RxFCSErrors = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 23
  %118 = ptrtoint ptr %RxFCSErrors to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %RxFCSErrors, align 8
  %and166 = and i64 %119, -1099511627776
  %or167 = or i64 %or164, %and166
  %and170 = and i64 %or, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and170)
  %tobool171.not = icmp eq i64 %and170, 0
  %add175 = add i64 %or167, 1099511627776
  %storemerge897 = select i1 %tobool171.not, i64 %or167, i64 %add175
  %120 = ptrtoint ptr %RxFCSErrors to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %storemerge897, ptr %RxFCSErrors, align 8
  %121 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %adapter.i, align 8
  %call178 = call i32 @t1_tpi_read(ptr noundef %122, i32 noundef 34032, ptr noundef nonnull %val0) #8
  %123 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %adapter.i, align 8
  %call180 = call i32 @t1_tpi_read(ptr noundef %124, i32 noundef 34036, ptr noundef nonnull %val1) #8
  %125 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %adapter.i, align 8
  %call182 = call i32 @t1_tpi_read(ptr noundef %126, i32 noundef 34040, ptr noundef nonnull %val2) #8
  %127 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %val0, align 4
  %and183 = and i32 %128, 65535
  %129 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %val1, align 4
  %131 = shl i32 %130, 16
  %or188862 = or i32 %131, %and183
  %or188 = zext i32 %or188862 to i64
  %132 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %val2, align 4
  %and189 = and i32 %133, 255
  %conv190 = zext i32 %and189 to i64
  %shl191 = shl nuw nsw i64 %conv190, 32
  %or192 = or i64 %shl191, %or188
  %RxInternalMACRcvError = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 30
  %134 = ptrtoint ptr %RxInternalMACRcvError to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %RxInternalMACRcvError, align 8
  %and194 = and i64 %135, -1099511627776
  %or195 = or i64 %or192, %and194
  %and198 = and i64 %or, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and198)
  %tobool199.not = icmp eq i64 %and198, 0
  %add203 = add i64 %or195, 1099511627776
  %storemerge896 = select i1 %tobool199.not, i64 %or195, i64 %add203
  %136 = ptrtoint ptr %RxInternalMACRcvError to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %storemerge896, ptr %RxInternalMACRcvError, align 8
  %137 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %adapter.i, align 8
  %call206 = call i32 @t1_tpi_read(ptr noundef %138, i32 noundef 34048, ptr noundef nonnull %val0) #8
  %139 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %adapter.i, align 8
  %call208 = call i32 @t1_tpi_read(ptr noundef %140, i32 noundef 34052, ptr noundef nonnull %val1) #8
  %141 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %adapter.i, align 8
  %call210 = call i32 @t1_tpi_read(ptr noundef %142, i32 noundef 34056, ptr noundef nonnull %val2) #8
  %143 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %val0, align 4
  %and211 = and i32 %144, 65535
  %145 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %val1, align 4
  %147 = shl i32 %146, 16
  %or216863 = or i32 %147, %and211
  %or216 = zext i32 %or216863 to i64
  %148 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %val2, align 4
  %and217 = and i32 %149, 255
  %conv218 = zext i32 %and217 to i64
  %shl219 = shl nuw nsw i64 %conv218, 32
  %or220 = or i64 %shl219, %or216
  %RxSymbolErrors = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 25
  %150 = ptrtoint ptr %RxSymbolErrors to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %RxSymbolErrors, align 8
  %and222 = and i64 %151, -1099511627776
  %or223 = or i64 %or220, %and222
  %and226 = and i64 %or, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and226)
  %tobool227.not = icmp eq i64 %and226, 0
  %add231 = add i64 %or223, 1099511627776
  %storemerge895 = select i1 %tobool227.not, i64 %or223, i64 %add231
  %152 = ptrtoint ptr %RxSymbolErrors to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %storemerge895, ptr %RxSymbolErrors, align 8
  %153 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %adapter.i, align 8
  %call234 = call i32 @t1_tpi_read(ptr noundef %154, i32 noundef 34064, ptr noundef nonnull %val0) #8
  %155 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %adapter.i, align 8
  %call236 = call i32 @t1_tpi_read(ptr noundef %156, i32 noundef 34068, ptr noundef nonnull %val1) #8
  %157 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %adapter.i, align 8
  %call238 = call i32 @t1_tpi_read(ptr noundef %158, i32 noundef 34072, ptr noundef nonnull %val2) #8
  %159 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %val0, align 4
  %and239 = and i32 %160, 65535
  %161 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %val1, align 4
  %163 = shl i32 %162, 16
  %or244864 = or i32 %163, %and239
  %or244 = zext i32 %or244864 to i64
  %164 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %val2, align 4
  %and245 = and i32 %165, 255
  %conv246 = zext i32 %and245 to i64
  %shl247 = shl nuw nsw i64 %conv246, 32
  %or248 = or i64 %shl247, %or244
  %RxInRangeLengthErrors = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 31
  %166 = ptrtoint ptr %RxInRangeLengthErrors to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %RxInRangeLengthErrors, align 8
  %and250 = and i64 %167, -1099511627776
  %or251 = or i64 %or248, %and250
  %and254 = and i64 %or, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and254)
  %tobool255.not = icmp eq i64 %and254, 0
  %add259 = add i64 %or251, 1099511627776
  %storemerge894 = select i1 %tobool255.not, i64 %or251, i64 %add259
  %168 = ptrtoint ptr %RxInRangeLengthErrors to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %storemerge894, ptr %RxInRangeLengthErrors, align 8
  %169 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %adapter.i, align 8
  %call262 = call i32 @t1_tpi_read(ptr noundef %170, i32 noundef 34096, ptr noundef nonnull %val0) #8
  %171 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %adapter.i, align 8
  %call264 = call i32 @t1_tpi_read(ptr noundef %172, i32 noundef 34100, ptr noundef nonnull %val1) #8
  %173 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %adapter.i, align 8
  %call266 = call i32 @t1_tpi_read(ptr noundef %174, i32 noundef 34104, ptr noundef nonnull %val2) #8
  %175 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %val0, align 4
  %and267 = and i32 %176, 65535
  %177 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %val1, align 4
  %179 = shl i32 %178, 16
  %or272865 = or i32 %179, %and267
  %or272 = zext i32 %or272865 to i64
  %180 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %val2, align 4
  %and273 = and i32 %181, 255
  %conv274 = zext i32 %and273 to i64
  %shl275 = shl nuw nsw i64 %conv274, 32
  %or276 = or i64 %shl275, %or272
  %RxFrameTooLongErrors = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 33
  %182 = ptrtoint ptr %RxFrameTooLongErrors to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %RxFrameTooLongErrors, align 8
  %and278 = and i64 %183, -1099511627776
  %or279 = or i64 %or276, %and278
  %and282 = and i64 %or, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and282)
  %tobool283.not = icmp eq i64 %and282, 0
  %add287 = add i64 %or279, 1099511627776
  %storemerge893 = select i1 %tobool283.not, i64 %or279, i64 %add287
  %184 = ptrtoint ptr %RxFrameTooLongErrors to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %storemerge893, ptr %RxFrameTooLongErrors, align 8
  %185 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %adapter.i, align 8
  %call290 = call i32 @t1_tpi_read(ptr noundef %186, i32 noundef 34112, ptr noundef nonnull %val0) #8
  %187 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %adapter.i, align 8
  %call292 = call i32 @t1_tpi_read(ptr noundef %188, i32 noundef 34116, ptr noundef nonnull %val1) #8
  %189 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %adapter.i, align 8
  %call294 = call i32 @t1_tpi_read(ptr noundef %190, i32 noundef 34120, ptr noundef nonnull %val2) #8
  %191 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %val0, align 4
  %and295 = and i32 %192, 65535
  %193 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %val1, align 4
  %195 = shl i32 %194, 16
  %or300866 = or i32 %195, %and295
  %or300 = zext i32 %or300866 to i64
  %196 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %val2, align 4
  %and301 = and i32 %197, 255
  %conv302 = zext i32 %and301 to i64
  %shl303 = shl nuw nsw i64 %conv302, 32
  %or304 = or i64 %shl303, %or300
  %RxJabberErrors = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 29
  %198 = ptrtoint ptr %RxJabberErrors to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %RxJabberErrors, align 8
  %and306 = and i64 %199, -1099511627776
  %or307 = or i64 %or304, %and306
  %and310 = and i64 %or, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and310)
  %tobool311.not = icmp eq i64 %and310, 0
  %add315 = add i64 %or307, 1099511627776
  %storemerge892 = select i1 %tobool311.not, i64 %or307, i64 %add315
  %200 = ptrtoint ptr %RxJabberErrors to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %storemerge892, ptr %RxJabberErrors, align 8
  %201 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %adapter.i, align 8
  %call318 = call i32 @t1_tpi_read(ptr noundef %202, i32 noundef 34128, ptr noundef nonnull %val0) #8
  %203 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %adapter.i, align 8
  %call320 = call i32 @t1_tpi_read(ptr noundef %204, i32 noundef 34132, ptr noundef nonnull %val1) #8
  %205 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %adapter.i, align 8
  %call322 = call i32 @t1_tpi_read(ptr noundef %206, i32 noundef 34136, ptr noundef nonnull %val2) #8
  %207 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %val0, align 4
  %and323 = and i32 %208, 65535
  %209 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %val1, align 4
  %211 = shl i32 %210, 16
  %or328867 = or i32 %211, %and323
  %or328 = zext i32 %or328867 to i64
  %212 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %val2, align 4
  %and329 = and i32 %213, 255
  %conv330 = zext i32 %and329 to i64
  %shl331 = shl nuw nsw i64 %conv330, 32
  %or332 = or i64 %shl331, %or328
  %RxRuntErrors = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 28
  %214 = ptrtoint ptr %RxRuntErrors to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %RxRuntErrors, align 8
  %and334 = and i64 %215, -1099511627776
  %or335 = or i64 %or332, %and334
  %and338 = and i64 %or, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and338)
  %tobool339.not = icmp eq i64 %and338, 0
  %add343 = add i64 %or335, 1099511627776
  %storemerge891 = select i1 %tobool339.not, i64 %or335, i64 %add343
  %216 = ptrtoint ptr %RxRuntErrors to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %storemerge891, ptr %RxRuntErrors, align 8
  %217 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %adapter.i, align 8
  %call346 = call i32 @t1_tpi_read(ptr noundef %218, i32 noundef 34144, ptr noundef nonnull %val0) #8
  %219 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %adapter.i, align 8
  %call348 = call i32 @t1_tpi_read(ptr noundef %220, i32 noundef 34148, ptr noundef nonnull %val1) #8
  %221 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %adapter.i, align 8
  %call350 = call i32 @t1_tpi_read(ptr noundef %222, i32 noundef 34152, ptr noundef nonnull %val2) #8
  %223 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %val0, align 4
  %and351 = and i32 %224, 65535
  %225 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %val1, align 4
  %227 = shl i32 %226, 16
  %or356868 = or i32 %227, %and351
  %or356 = zext i32 %or356868 to i64
  %228 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %val2, align 4
  %and357 = and i32 %229, 255
  %conv358 = zext i32 %and357 to i64
  %shl359 = shl nuw nsw i64 %conv358, 32
  %or360 = or i64 %shl359, %or356
  %230 = ptrtoint ptr %RxRuntErrors to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %RxRuntErrors, align 8
  %and363 = and i64 %231, -1099511627776
  %or364 = or i64 %or360, %and363
  %and367 = and i64 %or, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and367)
  %tobool368.not = icmp eq i64 %and367, 0
  %add372 = add i64 %or364, 1099511627776
  %storemerge890 = select i1 %tobool368.not, i64 %or364, i64 %add372
  %232 = ptrtoint ptr %RxRuntErrors to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 %storemerge890, ptr %RxRuntErrors, align 8
  %233 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %adapter.i, align 8
  %call375 = call i32 @t1_tpi_read(ptr noundef %234, i32 noundef 34256, ptr noundef nonnull %val0) #8
  %235 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %adapter.i, align 8
  %call377 = call i32 @t1_tpi_read(ptr noundef %236, i32 noundef 34260, ptr noundef nonnull %val1) #8
  %237 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %adapter.i, align 8
  %call379 = call i32 @t1_tpi_read(ptr noundef %238, i32 noundef 34264, ptr noundef nonnull %val2) #8
  %239 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %val0, align 4
  %and380 = and i32 %240, 65535
  %241 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %val1, align 4
  %243 = shl i32 %242, 16
  %or385869 = or i32 %243, %and380
  %or385 = zext i32 %or385869 to i64
  %244 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %val2, align 4
  %and386 = and i32 %245, 255
  %conv387 = zext i32 %and386 to i64
  %shl388 = shl nuw nsw i64 %conv387, 32
  %or389 = or i64 %shl388, %or385
  %RxJumboFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 34
  %246 = ptrtoint ptr %RxJumboFramesOK to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %RxJumboFramesOK, align 8
  %and391 = and i64 %247, -1099511627776
  %or392 = or i64 %or389, %and391
  %and395 = and i64 %or, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and395)
  %tobool396.not = icmp eq i64 %and395, 0
  %add400 = add i64 %or392, 1099511627776
  %storemerge889 = select i1 %tobool396.not, i64 %or392, i64 %add400
  %248 = ptrtoint ptr %RxJumboFramesOK to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 %storemerge889, ptr %RxJumboFramesOK, align 8
  %249 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %adapter.i, align 8
  %call403 = call i32 @t1_tpi_read(ptr noundef %250, i32 noundef 34272, ptr noundef nonnull %val0) #8
  %251 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %adapter.i, align 8
  %call405 = call i32 @t1_tpi_read(ptr noundef %252, i32 noundef 34276, ptr noundef nonnull %val1) #8
  %253 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %adapter.i, align 8
  %call407 = call i32 @t1_tpi_read(ptr noundef %254, i32 noundef 34280, ptr noundef nonnull %val2) #8
  %255 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %val0, align 4
  %and408 = and i32 %256, 65535
  %257 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %val1, align 4
  %259 = shl i32 %258, 16
  %or413870 = or i32 %259, %and408
  %or413 = zext i32 %or413870 to i64
  %260 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %val2, align 4
  %and414 = and i32 %261, 255
  %conv415 = zext i32 %and414 to i64
  %shl416 = shl nuw nsw i64 %conv415, 32
  %or417 = or i64 %shl416, %or413
  %RxJumboOctetsOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 35
  %262 = ptrtoint ptr %RxJumboOctetsOK to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %RxJumboOctetsOK, align 8
  %and419 = and i64 %263, -1099511627776
  %or420 = or i64 %or417, %and419
  %and423 = and i64 %or, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and423)
  %tobool424.not = icmp eq i64 %and423, 0
  %add428 = add i64 %or420, 1099511627776
  %storemerge888 = select i1 %tobool424.not, i64 %or420, i64 %add428
  %264 = ptrtoint ptr %RxJumboOctetsOK to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %storemerge888, ptr %RxJumboOctetsOK, align 8
  %265 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %adapter.i, align 8
  %call431 = call i32 @t1_tpi_read(ptr noundef %266, i32 noundef 34384, ptr noundef nonnull %val0) #8
  %267 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %adapter.i, align 8
  %call433 = call i32 @t1_tpi_read(ptr noundef %268, i32 noundef 34388, ptr noundef nonnull %val1) #8
  %269 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %adapter.i, align 8
  %call435 = call i32 @t1_tpi_read(ptr noundef %270, i32 noundef 34392, ptr noundef nonnull %val2) #8
  %271 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %val0, align 4
  %and436 = and i32 %272, 65535
  %273 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %val1, align 4
  %275 = shl i32 %274, 16
  %or441871 = or i32 %275, %and436
  %or441 = zext i32 %or441871 to i64
  %276 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %val2, align 4
  %and442 = and i32 %277, 255
  %conv443 = zext i32 %and442 to i64
  %shl444 = shl nuw nsw i64 %conv443, 32
  %or445 = or i64 %shl444, %or441
  %278 = ptrtoint ptr %mac to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %mac, align 8
  %and447 = and i64 %279, -1099511627776
  %or448 = or i64 %or445, %and447
  %280 = and i64 %and8, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %280)
  %tobool452.not = icmp eq i64 %280, 0
  %add456 = add i64 %or448, 1099511627776
  %storemerge887 = select i1 %tobool452.not, i64 %or448, i64 %add456
  %281 = ptrtoint ptr %mac to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 %storemerge887, ptr %mac, align 8
  %282 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %adapter.i, align 8
  %call459 = call i32 @t1_tpi_read(ptr noundef %283, i32 noundef 34416, ptr noundef nonnull %val0) #8
  %284 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %adapter.i, align 8
  %call461 = call i32 @t1_tpi_read(ptr noundef %285, i32 noundef 34420, ptr noundef nonnull %val1) #8
  %286 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %adapter.i, align 8
  %call463 = call i32 @t1_tpi_read(ptr noundef %287, i32 noundef 34424, ptr noundef nonnull %val2) #8
  %288 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %val0, align 4
  %and464 = and i32 %289, 65535
  %290 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %val1, align 4
  %292 = shl i32 %291, 16
  %or469872 = or i32 %292, %and464
  %or469 = zext i32 %or469872 to i64
  %293 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %val2, align 4
  %and470 = and i32 %294, 255
  %conv471 = zext i32 %and470 to i64
  %shl472 = shl nuw nsw i64 %conv471, 32
  %or473 = or i64 %shl472, %or469
  %TxInternalMACXmitError = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 12
  %295 = ptrtoint ptr %TxInternalMACXmitError to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %TxInternalMACXmitError, align 8
  %and475 = and i64 %296, -1099511627776
  %or476 = or i64 %or473, %and475
  %297 = and i64 %and8, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %297)
  %tobool480.not = icmp eq i64 %297, 0
  %add484 = add i64 %or476, 1099511627776
  %storemerge886 = select i1 %tobool480.not, i64 %or476, i64 %add484
  %298 = ptrtoint ptr %TxInternalMACXmitError to i32
  call void @__asan_store8_noabort(i32 %298)
  store i64 %storemerge886, ptr %TxInternalMACXmitError, align 8
  %299 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %adapter.i, align 8
  %call487 = call i32 @t1_tpi_read(ptr noundef %300, i32 noundef 34432, ptr noundef nonnull %val0) #8
  %301 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %adapter.i, align 8
  %call489 = call i32 @t1_tpi_read(ptr noundef %302, i32 noundef 34436, ptr noundef nonnull %val1) #8
  %303 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %adapter.i, align 8
  %call491 = call i32 @t1_tpi_read(ptr noundef %304, i32 noundef 34440, ptr noundef nonnull %val2) #8
  %305 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %val0, align 4
  %and492 = and i32 %306, 65535
  %307 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %val1, align 4
  %309 = shl i32 %308, 16
  %or497873 = or i32 %309, %and492
  %or497 = zext i32 %or497873 to i64
  %310 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %val2, align 4
  %and498 = and i32 %311, 255
  %conv499 = zext i32 %and498 to i64
  %shl500 = shl nuw nsw i64 %conv499, 32
  %or501 = or i64 %shl500, %or497
  %TxFCSErrors = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 14
  %312 = ptrtoint ptr %TxFCSErrors to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %TxFCSErrors, align 8
  %and503 = and i64 %313, -1099511627776
  %or504 = or i64 %or501, %and503
  %314 = and i64 %and8, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %314)
  %tobool508.not = icmp eq i64 %314, 0
  %add512 = add i64 %or504, 1099511627776
  %storemerge885 = select i1 %tobool508.not, i64 %or504, i64 %add512
  %315 = ptrtoint ptr %TxFCSErrors to i32
  call void @__asan_store8_noabort(i32 %315)
  store i64 %storemerge885, ptr %TxFCSErrors, align 8
  %316 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %adapter.i, align 8
  %call515 = call i32 @t1_tpi_read(ptr noundef %317, i32 noundef 34464, ptr noundef nonnull %val0) #8
  %318 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %adapter.i, align 8
  %call517 = call i32 @t1_tpi_read(ptr noundef %319, i32 noundef 34468, ptr noundef nonnull %val1) #8
  %320 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %adapter.i, align 8
  %call519 = call i32 @t1_tpi_read(ptr noundef %321, i32 noundef 34472, ptr noundef nonnull %val2) #8
  %322 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %val0, align 4
  %and520 = and i32 %323, 65535
  %324 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %val1, align 4
  %326 = shl i32 %325, 16
  %or525874 = or i32 %326, %and520
  %or525 = zext i32 %or525874 to i64
  %327 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %val2, align 4
  %and526 = and i32 %328, 255
  %conv527 = zext i32 %and526 to i64
  %shl528 = shl nuw nsw i64 %conv527, 32
  %or529 = or i64 %shl528, %or525
  %TxUnicastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 2
  %329 = ptrtoint ptr %TxUnicastFramesOK to i32
  call void @__asan_load8_noabort(i32 %329)
  %330 = load i64, ptr %TxUnicastFramesOK, align 8
  %and531 = and i64 %330, -1099511627776
  %or532 = or i64 %or529, %and531
  %331 = and i64 %and8, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %331)
  %tobool536.not = icmp eq i64 %331, 0
  %add540 = add i64 %or532, 1099511627776
  %storemerge884 = select i1 %tobool536.not, i64 %or532, i64 %add540
  %332 = ptrtoint ptr %TxUnicastFramesOK to i32
  call void @__asan_store8_noabort(i32 %332)
  store i64 %storemerge884, ptr %TxUnicastFramesOK, align 8
  %333 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %adapter.i, align 8
  %call543 = call i32 @t1_tpi_read(ptr noundef %334, i32 noundef 34496, ptr noundef nonnull %val0) #8
  %335 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %adapter.i, align 8
  %call545 = call i32 @t1_tpi_read(ptr noundef %336, i32 noundef 34500, ptr noundef nonnull %val1) #8
  %337 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %adapter.i, align 8
  %call547 = call i32 @t1_tpi_read(ptr noundef %338, i32 noundef 34504, ptr noundef nonnull %val2) #8
  %339 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %val0, align 4
  %and548 = and i32 %340, 65535
  %341 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %val1, align 4
  %343 = shl i32 %342, 16
  %or553875 = or i32 %343, %and548
  %or553 = zext i32 %or553875 to i64
  %344 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %val2, align 4
  %and554 = and i32 %345, 255
  %conv555 = zext i32 %and554 to i64
  %shl556 = shl nuw nsw i64 %conv555, 32
  %or557 = or i64 %shl556, %or553
  %TxMulticastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 3
  %346 = ptrtoint ptr %TxMulticastFramesOK to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %TxMulticastFramesOK, align 8
  %and559 = and i64 %347, -1099511627776
  %or560 = or i64 %or557, %and559
  %348 = and i64 %and8, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %348)
  %tobool564.not = icmp eq i64 %348, 0
  %add568 = add i64 %or560, 1099511627776
  %storemerge883 = select i1 %tobool564.not, i64 %or560, i64 %add568
  %349 = ptrtoint ptr %TxMulticastFramesOK to i32
  call void @__asan_store8_noabort(i32 %349)
  store i64 %storemerge883, ptr %TxMulticastFramesOK, align 8
  %350 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %adapter.i, align 8
  %call571 = call i32 @t1_tpi_read(ptr noundef %351, i32 noundef 34528, ptr noundef nonnull %val0) #8
  %352 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %adapter.i, align 8
  %call573 = call i32 @t1_tpi_read(ptr noundef %353, i32 noundef 34532, ptr noundef nonnull %val1) #8
  %354 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %adapter.i, align 8
  %call575 = call i32 @t1_tpi_read(ptr noundef %355, i32 noundef 34536, ptr noundef nonnull %val2) #8
  %356 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %val0, align 4
  %and576 = and i32 %357, 65535
  %358 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %val1, align 4
  %360 = shl i32 %359, 16
  %or581876 = or i32 %360, %and576
  %or581 = zext i32 %or581876 to i64
  %361 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %val2, align 4
  %and582 = and i32 %362, 255
  %conv583 = zext i32 %and582 to i64
  %shl584 = shl nuw nsw i64 %conv583, 32
  %or585 = or i64 %shl584, %or581
  %TxBroadcastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 4
  %363 = ptrtoint ptr %TxBroadcastFramesOK to i32
  call void @__asan_load8_noabort(i32 %363)
  %364 = load i64, ptr %TxBroadcastFramesOK, align 8
  %and587 = and i64 %364, -1099511627776
  %or588 = or i64 %or585, %and587
  %365 = and i64 %and8, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %365)
  %tobool592.not = icmp eq i64 %365, 0
  %add596 = add i64 %or588, 1099511627776
  %storemerge882 = select i1 %tobool592.not, i64 %or588, i64 %add596
  %366 = ptrtoint ptr %TxBroadcastFramesOK to i32
  call void @__asan_store8_noabort(i32 %366)
  store i64 %storemerge882, ptr %TxBroadcastFramesOK, align 8
  %367 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %adapter.i, align 8
  %call599 = call i32 @t1_tpi_read(ptr noundef %368, i32 noundef 34544, ptr noundef nonnull %val0) #8
  %369 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %adapter.i, align 8
  %call601 = call i32 @t1_tpi_read(ptr noundef %370, i32 noundef 34548, ptr noundef nonnull %val1) #8
  %371 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %adapter.i, align 8
  %call603 = call i32 @t1_tpi_read(ptr noundef %372, i32 noundef 34552, ptr noundef nonnull %val2) #8
  %373 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %val0, align 4
  %and604 = and i32 %374, 65535
  %375 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %val1, align 4
  %377 = shl i32 %376, 16
  %or609877 = or i32 %377, %and604
  %or609 = zext i32 %or609877 to i64
  %378 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %val2, align 4
  %and610 = and i32 %379, 255
  %conv611 = zext i32 %and610 to i64
  %shl612 = shl nuw nsw i64 %conv611, 32
  %or613 = or i64 %shl612, %or609
  %TxPauseFrames = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 5
  %380 = ptrtoint ptr %TxPauseFrames to i32
  call void @__asan_load8_noabort(i32 %380)
  %381 = load i64, ptr %TxPauseFrames, align 8
  %and615 = and i64 %381, -1099511627776
  %or616 = or i64 %or613, %and615
  %382 = and i64 %and8, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %382)
  %tobool620.not = icmp eq i64 %382, 0
  %add624 = add i64 %or616, 1099511627776
  %storemerge881 = select i1 %tobool620.not, i64 %or616, i64 %add624
  %383 = ptrtoint ptr %TxPauseFrames to i32
  call void @__asan_store8_noabort(i32 %383)
  store i64 %storemerge881, ptr %TxPauseFrames, align 8
  %384 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %adapter.i, align 8
  %call627 = call i32 @t1_tpi_read(ptr noundef %385, i32 noundef 34672, ptr noundef nonnull %val0) #8
  %386 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %adapter.i, align 8
  %call629 = call i32 @t1_tpi_read(ptr noundef %387, i32 noundef 34676, ptr noundef nonnull %val1) #8
  %388 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %adapter.i, align 8
  %call631 = call i32 @t1_tpi_read(ptr noundef %389, i32 noundef 34680, ptr noundef nonnull %val2) #8
  %390 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %val0, align 4
  %and632 = and i32 %391, 65535
  %392 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %val1, align 4
  %394 = shl i32 %393, 16
  %or637878 = or i32 %394, %and632
  %or637 = zext i32 %or637878 to i64
  %395 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %val2, align 4
  %and638 = and i32 %396, 255
  %conv639 = zext i32 %and638 to i64
  %shl640 = shl nuw nsw i64 %conv639, 32
  %or641 = or i64 %shl640, %or637
  %TxJumboFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 15
  %397 = ptrtoint ptr %TxJumboFramesOK to i32
  call void @__asan_load8_noabort(i32 %397)
  %398 = load i64, ptr %TxJumboFramesOK, align 8
  %and643 = and i64 %398, -1099511627776
  %or644 = or i64 %or641, %and643
  %399 = and i64 %and12, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %399)
  %tobool648.not = icmp eq i64 %399, 0
  %add652 = add i64 %or644, 1099511627776
  %storemerge880 = select i1 %tobool648.not, i64 %or644, i64 %add652
  %400 = ptrtoint ptr %TxJumboFramesOK to i32
  call void @__asan_store8_noabort(i32 %400)
  store i64 %storemerge880, ptr %TxJumboFramesOK, align 8
  %401 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %adapter.i, align 8
  %call655 = call i32 @t1_tpi_read(ptr noundef %402, i32 noundef 34688, ptr noundef nonnull %val0) #8
  %403 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %adapter.i, align 8
  %call657 = call i32 @t1_tpi_read(ptr noundef %404, i32 noundef 34692, ptr noundef nonnull %val1) #8
  %405 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %adapter.i, align 8
  %call659 = call i32 @t1_tpi_read(ptr noundef %406, i32 noundef 34696, ptr noundef nonnull %val2) #8
  %407 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %val0, align 4
  %and660 = and i32 %408, 65535
  %409 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %val1, align 4
  %411 = shl i32 %410, 16
  %or665879 = or i32 %411, %and660
  %or665 = zext i32 %or665879 to i64
  %412 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %val2, align 4
  %and666 = and i32 %413, 255
  %conv667 = zext i32 %and666 to i64
  %shl668 = shl nuw nsw i64 %conv667, 32
  %or669 = or i64 %shl668, %or665
  %TxJumboOctetsOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 16
  %414 = ptrtoint ptr %TxJumboOctetsOK to i32
  call void @__asan_load8_noabort(i32 %414)
  %415 = load i64, ptr %TxJumboOctetsOK, align 8
  %and671 = and i64 %415, -1099511627776
  %or672 = or i64 %or669, %and671
  %416 = and i64 %and12, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %416)
  %tobool676.not = icmp eq i64 %416, 0
  %add680 = add i64 %or672, 1099511627776
  %storemerge = select i1 %tobool676.not, i64 %or672, i64 %add680
  %417 = ptrtoint ptr %TxJumboOctetsOK to i32
  call void @__asan_store8_noabort(i32 %417)
  store i64 %storemerge, ptr %TxJumboOctetsOK, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val0) #8
  ret ptr %mac
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm3393_macaddress_get(ptr nocapture noundef readonly %cmac, ptr nocapture noundef writeonly %mac_addr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %instance = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 3
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 8
  %mac_addr1 = getelementptr inbounds %struct._cmac_instance, ptr %1, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %mac_addr, ptr %mac_addr1, i32 6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3393_macaddress_set(ptr nocapture noundef readonly %cmac, ptr nocapture noundef readonly %ma) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !23
  %instance = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 3
  %1 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %instance, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv = zext i8 %4 to i32
  %mac_addr = getelementptr inbounds %struct._cmac_instance, ptr %2, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %mac_addr, ptr %ma, i32 6)
  %arrayidx = getelementptr i8, ptr %ma, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %8 = ptrtoint ptr %ma to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ma, align 1
  %conv5 = zext i8 %9 to i32
  %or = or i32 %shl, %conv5
  %arrayidx6 = getelementptr i8, ptr %ma, i32 3
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %arrayidx9 = getelementptr i8, ptr %ma, i32 2
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  %or11 = or i32 %shl8, %conv10
  %arrayidx12 = getelementptr i8, ptr %ma, i32 5
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %arrayidx15 = getelementptr i8, ptr %ma, i32 4
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  %or17 = or i32 %shl14, %conv16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %adapter.i.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %18 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = tail call i32 @t1_tpi_write(ptr noundef %19, i32 noundef 33024, i32 noundef 1180) #8
  %20 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i, align 8
  %call.i13.i = tail call i32 @t1_tpi_write(ptr noundef %21, i32 noundef 49408, i32 noundef 1586) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 4294960) #8
  %23 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %instance, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv7.i = and i8 %26, -4
  store i8 %conv7.i, ptr %24, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %cmac, i32 0, i32 1
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %28, i32 noundef 33048, i32 noundef %or) #8
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 8
  %call.i65 = tail call i32 @t1_tpi_write(ptr noundef %30, i32 noundef 33052, i32 noundef %or11) #8
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 8
  %call.i67 = tail call i32 @t1_tpi_write(ptr noundef %32, i32 noundef 33056, i32 noundef %or17) #8
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call.i69 = tail call i32 @t1_tpi_write(ptr noundef %34, i32 noundef 49436, i32 noundef %or) #8
  %35 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i, align 8
  %call.i71 = tail call i32 @t1_tpi_write(ptr noundef %36, i32 noundef 49440, i32 noundef %or11) #8
  %37 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i, align 8
  %call.i73 = tail call i32 @t1_tpi_write(ptr noundef %38, i32 noundef 49444, i32 noundef %or17) #8
  %39 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i, align 8
  %call.i75 = call i32 @t1_tpi_read(ptr noundef %40, i32 noundef 33208, ptr noundef nonnull %val) #8
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %and = and i32 %42, 65295
  store i32 %and, ptr %val, align 4
  %43 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i, align 8
  %call.i77 = call i32 @t1_tpi_write(ptr noundef %44, i32 noundef 33208, i32 noundef %and) #8
  %45 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i, align 8
  %call.i79 = call i32 @t1_tpi_write(ptr noundef %46, i32 noundef 33076, i32 noundef %or) #8
  %47 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter.i, align 8
  %call.i81 = call i32 @t1_tpi_write(ptr noundef %48, i32 noundef 33080, i32 noundef %or11) #8
  %49 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i, align 8
  %call.i83 = call i32 @t1_tpi_write(ptr noundef %50, i32 noundef 33084, i32 noundef %or17) #8
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val, align 4
  %or29 = or i32 %52, 144
  store i32 %or29, ptr %val, align 4
  %53 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter.i, align 8
  %call.i85 = call i32 @t1_tpi_write(ptr noundef %54, i32 noundef 33208, i32 noundef %or29) #8
  br i1 %tobool.not, label %if.end.if.end34_crit_edge, label %if.then32

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %if.end
  %and.i = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then32.if.end.i_crit_edge, label %if.then.i

if.then32.if.end.i_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i, align 8
  %call.i.i87 = call i32 @t1_tpi_write(ptr noundef %56, i32 noundef 33024, i32 noundef 33948) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then32.if.end.i_crit_edge
  %and1.i = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.pm3393_enable.exit_crit_edge, label %if.then3.i

if.end.i.pm3393_enable.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3393_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %instance, align 8
  %fc.i = getelementptr inbounds %struct._cmac_instance, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %fc.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fc.i, align 1
  %61 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool5.not.i = icmp eq i8 %61, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 34354, i32 34358
  %62 = shl i8 %60, 2
  %63 = and i8 %62, 8
  %64 = zext i8 %63 to i32
  %65 = or i32 %spec.select.i, %64
  %66 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter.i, align 8
  %call.i2.i = call i32 @t1_tpi_write(ptr noundef %67, i32 noundef 49408, i32 noundef %65) #8
  br label %pm3393_enable.exit

pm3393_enable.exit:                               ; preds = %if.then3.i, %if.end.i.pm3393_enable.exit_crit_edge
  %68 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %instance, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv21.i = or i8 %71, %4
  store i8 %conv21.i, ptr %69, align 1
  br label %if.end34

if.end34:                                         ; preds = %pm3393_enable.exit, %if.end.if.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tpi_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_link_changed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @t1_pm3393_ops, !1, !"t1_pm3393_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb/pm3393.c", i32 785, i32 19}
!2 = !{ptr @pm3393_ops, !3, !"pm3393_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb/pm3393.c", i32 567, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb/pm3393.c", i32 252, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pm3393_interrupt_handler.__UNIQUE_ID_ddebug353, !5, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb/pm3393.c", i32 776, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @pm3393_mac_reset.__UNIQUE_ID_ddebug354, !11, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i64 2148992504, i64 2148992509, i64 2148992522, i64 2148992566, i64 2148992600, i64 2148992621}
!25 = !{i64 6748784}
!26 = !{i64 2156944798}
!27 = !{i64 2156945079}
!28 = !{i64 6748366}
!29 = !{i64 2156946089}
!30 = !{i64 2156946370}
