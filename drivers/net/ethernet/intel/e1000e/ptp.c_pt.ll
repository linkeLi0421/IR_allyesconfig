; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000e/ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, [116 x i8], ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [44 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [122 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.122 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.122 = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.99, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.99 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.timespec64 = type { i64, i32 }

@e1000e_ptp_clock_info = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @e1000e_phc_adjfreq, ptr null, ptr @e1000e_phc_adjtime, ptr null, ptr @e1000e_phc_gettimex, ptr null, ptr @e1000e_phc_settime, ptr @e1000e_phc_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pm\00", [28 x i8] zeroinitializer }, align 32
@e1000e_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"(work_completion)(&(&adapter->systim_overflow_work)->work)\00", [37 x i8] zeroinitializer }, align 32
@e1000e_ptp_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"&(&adapter->systim_overflow_work)->timer\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_clock_register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"registered PHC clock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"removed PHC\0A\00", [19 x i8] zeroinitializer }, align 32
@e1000e_systim_overflow_work.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"e1000e\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"e1000e_systim_overflow_work\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/intel/e1000e/ptp.c\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SYSTIM overflow check at %lld.%09lu\0A\00", [59 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 4, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"e1000e_ptp_clock_info\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 256, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 290, i32 42 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 323, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 333, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 335, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 355, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [43 x i8] c"../drivers/net/ethernet/intel/e1000e/ptp.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 249, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @e1000e_ptp_clock_info, ptr @.str, ptr @e1000e_ptp_init.__key, ptr @.str.1, ptr @e1000e_ptp_init.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_ptp_clock_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_ptp_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_ptp_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 101
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ptp_clock, align 8
  %flags = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 85
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 16
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_clock_info = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 102
  %3 = call ptr @memcpy(ptr %ptp_clock_info, ptr @e1000e_ptp_clock_info, i32 108)
  %name = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 102, i32 1
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 54
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %perm_addr)
  %type = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.do.body15_crit_edge [
    i32 10, label %if.end.sw.bb_crit_edge
    i32 11, label %if.end.sw.bb_crit_edge71
    i32 12, label %if.end.sw.bb_crit_edge72
    i32 13, label %if.end.sw.bb_crit_edge73
    i32 14, label %if.end.sw.bb_crit_edge74
    i32 15, label %if.end.sw.bb_crit_edge75
    i32 16, label %if.end.sw.bb_crit_edge76
    i32 17, label %if.end.sw.bb_crit_edge77
    i32 3, label %if.end.sw.bb12_crit_edge
    i32 4, label %if.end.sw.bb12_crit_edge78
  ]

if.end.sw.bb12_crit_edge78:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end.sw.bb_crit_edge77:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge76:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge75:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge74:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge73:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge72:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge71:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.do.body15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge71, %if.end.sw.bb_crit_edge72, %if.end.sw.bb_crit_edge73, %if.end.sw.bb_crit_edge74, %if.end.sw.bb_crit_edge75, %if.end.sw.bb_crit_edge76, %if.end.sw.bb_crit_edge77
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp = icmp ult i32 %7, 11
  br i1 %cmp, label %sw.bb.do.body15.sink.split_crit_edge, label %lor.lhs.false

sw.bb.do.body15.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15.sink.split

lor.lhs.false:                                    ; preds = %sw.bb
  %hw_addr.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 46624
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %12 = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %lor.lhs.false.sw.bb12_crit_edge, label %lor.lhs.false.do.body15.sink.split_crit_edge

lor.lhs.false.do.body15.sink.split_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15.sink.split

lor.lhs.false.sw.bb12_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.bb12:                                          ; preds = %lor.lhs.false.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge78
  br label %do.body15.sink.split

do.body15.sink.split:                             ; preds = %sw.bb12, %lor.lhs.false.do.body15.sink.split_crit_edge, %sw.bb.do.body15.sink.split_crit_edge
  %.sink = phi i32 [ 599999999, %sw.bb12 ], [ 23999999, %lor.lhs.false.do.body15.sink.split_crit_edge ], [ 23999999, %sw.bb.do.body15.sink.split_crit_edge ]
  %max_adj14 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 102, i32 2
  %13 = ptrtoint ptr %max_adj14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %max_adj14, align 4
  br label %do.body15

do.body15:                                        ; preds = %do.body15.sink.split, %if.end.do.body15_crit_edge
  %systim_overflow_work = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 94
  tail call void @__init_work(ptr noundef %systim_overflow_work, i32 noundef 0) #7
  %14 = ptrtoint ptr %systim_overflow_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %systim_overflow_work, align 16
  %lockdep_map = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 94, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @e1000e_ptp_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry22 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 94, i32 0, i32 1
  %15 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 94, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry22, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 94, i32 0, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @e1000e_systim_overflow_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 94, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @e1000e_ptp_init.__key.2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %systim_overflow_work, i32 noundef 1440000) #7
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 32
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call34 = tail call ptr @ptp_clock_register(ptr noundef %ptp_clock_info, ptr noundef %dev) #7
  %21 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call34, ptr %ptp_clock, align 8
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %if.else

if.then38:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ptp_clock, align 8
  %23 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.else:                                          ; preds = %do.body15
  %tobool42.not = icmp eq ptr %call34, null
  br i1 %tobool42.not, label %if.else.cleanup_crit_edge, label %if.then43

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %26, ptr noundef nonnull @.str.5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.else.cleanup_crit_edge, %if.then38, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000e_systim_overflow_work(ptr noundef %work) #0 align 64 {
entry:
  %tmp2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tc = getelementptr i8, ptr %work, i32 224
  %call = tail call i64 @timecounter_read(ptr noundef %tc) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp2) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp2, i64 noundef %call) #7
  %0 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %ts.sroa.0.0.copyload12 = load i64, ptr %tmp2, align 8
  %ts.sroa.5.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 8
  %1 = ptrtoint ptr %ts.sroa.5.0.tmp2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %ts.sroa.5.0.copyload13 = load i32, ptr %ts.sroa.5.0.tmp2.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_systim_overflow_work.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_systim_overflow_work, %if.then)) #7
          to label %do.end10 [label %if.then], !srcloc !32

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw1 = getelementptr i8, ptr %work, i32 -10252
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_systim_overflow_work.__UNIQUE_ID_ddebug353, ptr noundef %5, ptr noundef nonnull @.str.10, i64 noundef %ts.sroa.0.0.copyload12, i32 noundef %ts.sroa.5.0.copyload13) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef 1440000) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_ptp_remove(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 85
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 16
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.end

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end:                                           ; preds = %entry
  %systim_overflow_work = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 94
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %systim_overflow_work) #7
  %ptp_clock = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 101
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %3) #7
  %4 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ptp_clock, align 8
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 64
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %6, ptr noundef nonnull @.str.6) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000e_phc_adjfreq(ptr noundef %ptp, i32 noundef %delta) #0 align 64 {
entry:
  %timinca = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %ptp, i32 -10520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timinca) #7
  %0 = ptrtoint ptr %timinca to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %timinca, align 4, !annotation !33
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 2
  %1 = ptrtoint ptr %max_adj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_adj, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %delta)
  %cmp = icmp slt i32 %2, %delta
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999999999, i32 %delta)
  %cmp2 = icmp slt i32 %delta, -999999999
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ptp, i32 -11900
  %call = call i32 @e1000e_get_base_timinca(ptr noundef %add.ptr, ptr noundef nonnull %timinca) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %cmp3 = icmp slt i32 %delta, 0
  %3 = call i32 @llvm.abs.i32(i32 %delta, i1 true)
  %systim_lock = getelementptr i8, ptr %ptp, i32 -116
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %systim_lock) #7
  %4 = ptrtoint ptr %timinca to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timinca, align 4
  %and = and i32 %5, 16777215
  %conv15 = zext i32 %and to i64
  %conv1651 = zext i32 %3 to i64
  %mul = mul nuw nsw i64 %conv15, %conv1651
  %6 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #11, !srcloc !34
  %asmresult.i.i.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %6, 1
  %7 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !35
  %asmresult10.i.i.i = extractvalue { i64, i32 } %7, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 29
  %8 = trunc i64 %div1581.i.i to i32
  %9 = sub i32 0, %8
  %cond.off0.p = select i1 %cmp3, i32 %9, i32 %8
  %cond.off0 = add i32 %cond.off0.p, %and
  %and24 = and i32 %5, -16777216
  %or = or i32 %cond.off0, %and24
  %10 = ptrtoint ptr %timinca to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %timinca, align 4
  call void @__ew32(ptr noundef %hw1, i32 noundef 46600, i32 noundef %or) #7
  %ptp_delta = getelementptr i8, ptr %ptp, i32 132
  %11 = ptrtoint ptr %ptp_delta to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %3, ptr %ptp_delta, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %systim_lock, i32 noundef %call12) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body8 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timinca) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000e_phc_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %systim_lock = getelementptr i8, ptr %ptp, i32 -116
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %systim_lock) #7
  %nsec.i = getelementptr i8, ptr %ptp, i32 -28
  %0 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %1, %delta
  store i64 %add.i, ptr %nsec.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %systim_lock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000e_phc_gettimex(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  %tmp9 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -11900
  %systim_lock = getelementptr i8, ptr %ptp, i32 -116
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %systim_lock) #7
  %call6 = tail call i64 @e1000e_read_systim(ptr noundef %add.ptr, ptr noundef %sts) #7
  %tc = getelementptr i8, ptr %ptp, i32 -44
  %call7 = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %call6) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %systim_lock, i32 noundef %call3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp9) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp9, i64 noundef %call7) #7
  %0 = call ptr @memcpy(ptr %ts, ptr %tmp9, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000e_phc_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul nsw i64 %1, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %3 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %entry.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %systim_lock = getelementptr i8, ptr %ptp, i32 -116
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %systim_lock) #7
  %tc = getelementptr i8, ptr %ptp, i32 -44
  %cc = getelementptr i8, ptr %ptp, i32 -68
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %retval.0.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %systim_lock, i32 noundef %call4) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000e_phc_enable(ptr nocapture noundef readnone %ptp, ptr nocapture noundef readnone %request, i32 noundef %on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_base_timinca(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @e1000e_read_systim(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000e/ptp.c", i32 290, i32 42}
!2 = !{ptr @e1000e_ptp_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/e1000e/ptp.c", i32 323, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @e1000e_ptp_init.__key.2, !3, !"__key", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/intel/e1000e/ptp.c", i32 333, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/e1000e/ptp.c", i32 335, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/e1000e/ptp.c", i32 355, i32 3}
!13 = !{ptr @e1000e_ptp_clock_info, !14, !"e1000e_ptp_clock_info", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/e1000e/ptp.c", i32 256, i32 36}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/e1000e/ptp.c", i32 249, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @e1000e_systim_overflow_work.__UNIQUE_ID_ddebug353, !16, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 1901159}
!31 = !{i64 2156910008}
!32 = !{i64 2148901361, i64 2148901366, i64 2148901379, i64 2148901423, i64 2148901457, i64 2148901478}
!33 = !{!"auto-init"}
!34 = !{i64 1206830, i64 1206857, i64 1206879, i64 1206907}
!35 = !{i64 1207238, i64 1207265, i64 1207298, i64 1207319, i64 1207346, i64 1207372}
