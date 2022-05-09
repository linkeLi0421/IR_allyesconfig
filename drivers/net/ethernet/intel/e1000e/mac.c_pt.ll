; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000e/mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, [116 x i8], ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [44 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [122 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_ich8lan }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.122, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.122 = type { ptr }

@e1000e_init_rx_addrs.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"e1000e\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"e1000e_init_rx_addrs\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/intel/e1000e/mac.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Programming MAC Address into RAR[0]\0A\00", [59 x i8] zeroinitializer }, align 32
@e1000e_init_rx_addrs.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Clearing RAR[1-%u]\0A\00", [44 x i8] zeroinitializer }, align 32
@e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"e1000_check_alt_mac_addr_generic\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVM Read Error\0A\00", [16 x i8] zeroinitializer }, align 32
@e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Ignoring Alternate Mac Address with MC bit set\0A\00", [48 x i8] zeroinitializer }, align 32
@e1000e_check_for_copper_link.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"e1000e_check_for_copper_link\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error configuring flow control\0A\00", [32 x i8] zeroinitializer }, align 32
@e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"e1000e_check_for_fiber_link\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"NOT Rx'ing /C/, disable AutoNeg and force link.\0A\00", [47 x i8] zeroinitializer }, align 32
@e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.9, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Rx'ing /C/, enable AutoNeg and stop forcing link.\0A\00", [45 x i8] zeroinitializer }, align 32
@e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.11, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"e1000e_check_for_serdes_link\00", [35 x i8] zeroinitializer }, align 32
@e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.9, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.12, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SERDES: Link up - forced.\0A\00", [37 x i8] zeroinitializer }, align 32
@e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SERDES: Link down - force failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SERDES: Link up - autoneg completed successfully.\0A\00", [45 x i8] zeroinitializer }, align 32
@e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.17, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"SERDES: Link down - invalid codewords detected in autoneg.\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.18, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SERDES: Link down - no sync.\0A\00", [34 x i8] zeroinitializer }, align 32
@e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.19, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SERDES: Link down - autoneg failed\0A\00", [60 x i8] zeroinitializer }, align 32
@e1000e_setup_link_generic.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"e1000e_setup_link_generic\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", [57 x i8] zeroinitializer }, align 32
@e1000e_setup_link_generic.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Initializing the Flow Control address, type and timer regs\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000e_setup_fiber_serdes_link.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"e1000e_setup_fiber_serdes_link\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Auto-negotiation enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@e1000e_setup_fiber_serdes_link.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No signal detected\0A\00", [44 x i8] zeroinitializer }, align 32
@e1000e_force_mac_fc.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"e1000e_force_mac_fc\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hw->fc.current_mode = %u\0A\00", [38 x i8] zeroinitializer }, align 32
@e1000e_force_mac_fc.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"e1000e_config_fc_after_link_up\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error forcing flow control settings\0A\00", [59 x i8] zeroinitializer }, align 32
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Copper PHY and Auto Neg has not completed.\0A\00", [52 x i8] zeroinitializer }, align 32
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 1, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control = FULL.\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flow Control = Rx PAUSE frames only.\0A\00", [58 x i8] zeroinitializer }, align 32
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.34, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flow Control = Tx PAUSE frames only.\0A\00", [58 x i8] zeroinitializer }, align 32
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 1, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.35, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control = NONE.\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.36, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error getting link speed and duplex\0A\00", [59 x i8] zeroinitializer }, align 32
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.37, i8 1, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCS Auto Neg has not completed.\0A\00", [63 x i8] zeroinitializer }, align 32
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 1, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 1, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.34, i8 1, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.35, i8 1, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"e1000e_get_speed_and_duplex_copper\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%u Mbps, %s Duplex\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@e1000e_get_hw_semaphore.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"e1000e_get_hw_semaphore\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Driver can't access device - SMBI bit is set.\0A\00", [49 x i8] zeroinitializer }, align 32
@e1000e_get_hw_semaphore.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 1, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Driver can't access the NVM\0A\00", [35 x i8] zeroinitializer }, align 32
@e1000e_get_auto_rd_done.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 1, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"e1000e_get_auto_rd_done\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Auto read by HW from NVM has not completed.\0A\00", [51 x i8] zeroinitializer }, align 32
@e1000e_valid_led_default.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.6, i8 1, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"e1000e_valid_led_default\00", [39 x i8] zeroinitializer }, align 32
@e1000e_disable_pcie_master.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 1, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"e1000e_disable_pcie_master\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Master requests are pending.\0A\00", [34 x i8] zeroinitializer }, align 32
@e1000e_reset_adaptive.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 1, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"e1000e_reset_adaptive\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not in Adaptive IFS mode!\0A\00", [37 x i8] zeroinitializer }, align 32
@e1000e_update_adaptive.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.51, i8 1, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"e1000e_update_adaptive\00", [41 x i8] zeroinitializer }, align 32
@e1000_set_default_fc_generic.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.6, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"e1000_set_default_fc_generic\00", [35 x i8] zeroinitializer }, align 32
@e1000_commit_fc_settings_generic.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.28, i8 0, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"e1000_commit_fc_settings_generic\00", [63 x i8] zeroinitializer }, align 32
@e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"e1000_poll_fiber_serdes_link_generic\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Never got a valid link from auto-neg!!!\0A\00", [55 x i8] zeroinitializer }, align 32
@e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error while checking for link\0A\00", [33 x i8] zeroinitializer }, align 32
@e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.58, i8 0, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Valid Link Found\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.e1000e_setup_fiber_serdes_link = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -2147483616, i32 -2147483232, i32 -2147483360, i32 -2147483232], [16 x i8] zeroinitializer }, align 32
@switch.table.e1000e_id_led_init_generic = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 14, i32 15, i32 15, i32 14, i32 15], [44 x i8] zeroinitializer }, align 32
@switch.table.e1000e_id_led_init_generic.59 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3584, i32 3840, i32 3840, i32 3584, i32 3840], [44 x i8] zeroinitializer }, align 32
@switch.table.e1000e_id_led_init_generic.60 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 917504, i32 983040, i32 983040, i32 917504, i32 983040], [44 x i8] zeroinitializer }, align 32
@switch.table.e1000e_id_led_init_generic.61 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 234881024, i32 251658240, i32 251658240, i32 234881024, i32 251658240], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 12, i64 2048, i64 3072]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.66 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.67 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.68 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.69 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 118, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 123, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 158, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 183, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 443, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 485, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 507, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 548, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 586, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 590, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 603, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 606, i32 6 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 610, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 614, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 692, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 704, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 856, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 870, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 964, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 982, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1023, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1045, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1105, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1108, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1123, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1143, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1152, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1182, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1323, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1371, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1390, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1430, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1451, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1714, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1732, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1758, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 644, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 770, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 806, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 815, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [43 x i8] c"../drivers/net/ethernet/intel/e1000e/mac.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 821, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [44 x i8] c"switch.table.e1000e_setup_fiber_serdes_link\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [40 x i8] c"switch.table.e1000e_id_led_init_generic\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [43 x i8] c"switch.table.e1000e_id_led_init_generic.59\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [43 x i8] c"switch.table.e1000e_id_led_init_generic.60\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [43 x i8] c"switch.table.e1000e_id_led_init_generic.61\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @switch.table.e1000e_setup_fiber_serdes_link, ptr @switch.table.e1000e_id_led_init_generic, ptr @switch.table.e1000e_id_led_init_generic.59, ptr @switch.table.e1000e_id_led_init_generic.60, ptr @switch.table.e1000e_id_led_init_generic.61], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000e_setup_fiber_serdes_link to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000e_id_led_init_generic to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000e_id_led_init_generic.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000e_id_led_init_generic.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000e_id_led_init_generic.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_bus_info_pcie(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %pcie_link_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pcie_link_status) #6
  %2 = ptrtoint ptr %pcie_link_status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %pcie_link_status, align 2, !annotation !174
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 65
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 32
  %pcie_cap = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %pcie_cap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pcie_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv5, 18
  %call = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %pcie_link_status) #6
  %7 = ptrtoint ptr %pcie_link_status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pcie_link_status, align 2
  %9 = lshr i16 %8, 4
  %10 = and i16 %9, 63
  %11 = zext i16 %10 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %11, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %bus2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7
  %12 = ptrtoint ptr %bus2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %bus2, align 4
  %set_lan_id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 8
  %13 = ptrtoint ptr %set_lan_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_lan_id, align 4
  call void %14(ptr noundef %hw) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcie_link_status) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000_set_lan_id_multi_port_pcie(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %sum.shift = lshr i32 %2, 26
  %3 = trunc i32 %sum.shift to i16
  %conv = and i16 %3, 3
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %func, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @e1000_set_lan_id_single_port(ptr nocapture noundef writeonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000_clear_vfta_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %offset.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl nuw nsw i32 %offset.04, 2
  %add = add nuw nsw i32 %shl, 22016
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef 0) #6
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %inc = add nuw nsw i32 %offset.04, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000_write_vfta_generic(ptr noundef %hw, i32 noundef %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %offset, 2
  %add = add i32 %shl, 22016
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef %value) #6
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_init_rx_addrs(ptr noundef %hw, i16 noundef zeroext %rar_count) local_unnamed_addr #0 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #6
  %0 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_init_rx_addrs.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_init_rx_addrs, %if.then)) #6
          to label %do.end5 [label %if.then], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_init_rx_addrs.__UNIQUE_ID_ddebug353, ptr noundef %4, ptr noundef nonnull @.str.3) #6
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %rar_set = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 20
  %5 = ptrtoint ptr %rar_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rar_set, align 4
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 1
  %call7 = tail call i32 %6(ptr noundef %hw, ptr noundef %addr, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_init_rx_addrs.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_init_rx_addrs, %if.then21)) #6
          to label %do.end28 [label %if.then21], !srcloc !177

if.then21:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %netdev23 = getelementptr inbounds %struct.e1000_adapter, ptr %8, i32 0, i32 64
  %9 = ptrtoint ptr %netdev23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev23, align 4
  %conv = zext i16 %rar_count to i32
  %sub = add nsw i32 %conv, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_init_rx_addrs.__UNIQUE_ID_ddebug354, ptr noundef %10, ptr noundef nonnull @.str.4, i32 noundef %sub) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then21, %do.end5
  %conv29 = zext i16 %rar_count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %rar_count)
  %cmp50 = icmp ugt i16 %rar_count, 1
  br i1 %cmp50, label %do.end28.for.body_crit_edge, label %do.end28.for.end_crit_edge

do.end28.for.end_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end28.for.body_crit_edge
  %i.051 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %do.end28.for.body_crit_edge ]
  %11 = ptrtoint ptr %rar_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rar_set, align 4
  %call35 = call i32 %12(ptr noundef %hw, ptr noundef nonnull %mac_addr, i32 noundef %i.051) #6
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %conv29
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end28.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_check_alt_mac_addr_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %nvm_alt_mac_addr_offset = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  %alt_mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_alt_mac_addr_offset) #6
  %0 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_alt_mac_addr_offset, align 2, !annotation !174
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #6
  %1 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %nvm_data, align 2, !annotation !174
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %alt_mac_addr) #6
  %2 = getelementptr inbounds [6 x i8], ptr %alt_mac_addr, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %alt_mac_addr, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %alt_mac_addr, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %alt_mac_addr, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %alt_mac_addr, i32 0, i32 5
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %8(ptr noundef %hw, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 4
  %call.i125 = call i32 %12(ptr noundef %hw, i16 noundef zeroext 55, i16 noundef zeroext 1, ptr noundef nonnull %nvm_alt_mac_addr_offset) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool4.not = icmp eq i32 %call.i125, 0
  br i1 %tobool4.not, label %if.end15, label %do.body6

do.body6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_alt_mac_addr_generic, %if.then11)) #6
          to label %cleanup [label %if.then11], !srcloc !177

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %14, i32 0, i32 64
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug355, ptr noundef %16, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end2
  %17 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nvm_alt_mac_addr_offset, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %18, label %if.end22 [
    i16 -1, label %if.end15.cleanup_crit_edge
    i16 0, label %if.end15.cleanup_crit_edge133
  ]

if.end15.cleanup_crit_edge133:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp24 = icmp eq i16 %21, 1
  br i1 %cmp24, label %if.then26, label %if.end22.if.end29_crit_edge

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i16 %18, 3
  %22 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %add, ptr %nvm_alt_mac_addr_offset, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end22.if.end29_crit_edge
  %23 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nvm_alt_mac_addr_offset, align 2
  %25 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read.i, align 4
  %call.i127 = call i32 %26(ptr noundef %hw, i16 noundef zeroext %24, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool36.not = icmp eq i32 %call.i127, 0
  br i1 %tobool36.not, label %if.end59, label %if.end29.do.body39_crit_edge

if.end29.do.body39_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

do.body39:                                        ; preds = %if.end59.1.do.body39_crit_edge, %if.end59.do.body39_crit_edge, %if.end29.do.body39_crit_edge
  %call.i127.lcssa = phi i32 [ %call.i127, %if.end29.do.body39_crit_edge ], [ %call.i127.1, %if.end59.do.body39_crit_edge ], [ %call.i127.2, %if.end59.1.do.body39_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_alt_mac_addr_generic, %if.then51)) #6
          to label %cleanup [label %if.then51], !srcloc !177

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %netdev53 = getelementptr inbounds %struct.e1000_adapter, ptr %28, i32 0, i32 64
  %29 = ptrtoint ptr %netdev53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev53, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug356, ptr noundef %30, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end29
  %31 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nvm_data, align 2
  %conv61 = trunc i16 %32 to i8
  %33 = ptrtoint ptr %alt_mac_addr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv61, ptr %alt_mac_addr, align 4
  %34 = lshr i16 %32, 8
  %conv64 = trunc i16 %34 to i8
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv64, ptr %2, align 1
  %36 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nvm_alt_mac_addr_offset, align 2
  %conv34.1 = add i16 %37, 1
  %38 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read.i, align 4
  %call.i127.1 = call i32 %39(ptr noundef %hw, i16 noundef zeroext %conv34.1, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.1)
  %tobool36.not.1 = icmp eq i32 %call.i127.1, 0
  br i1 %tobool36.not.1, label %if.end59.1, label %if.end59.do.body39_crit_edge

if.end59.do.body39_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

if.end59.1:                                       ; preds = %if.end59
  %40 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nvm_data, align 2
  %conv61.1 = trunc i16 %41 to i8
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv61.1, ptr %3, align 2
  %43 = lshr i16 %41, 8
  %conv64.1 = trunc i16 %43 to i8
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv64.1, ptr %4, align 1
  %45 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %nvm_alt_mac_addr_offset, align 2
  %conv34.2 = add i16 %46, 2
  %47 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read.i, align 4
  %call.i127.2 = call i32 %48(ptr noundef %hw, i16 noundef zeroext %conv34.2, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.2)
  %tobool36.not.2 = icmp eq i32 %call.i127.2, 0
  br i1 %tobool36.not.2, label %if.end59.2, label %if.end59.1.do.body39_crit_edge

if.end59.1.do.body39_crit_edge:                   ; preds = %if.end59.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

if.end59.2:                                       ; preds = %if.end59.1
  %49 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %nvm_data, align 2
  %conv61.2 = trunc i16 %50 to i8
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv61.2, ptr %5, align 4
  %52 = lshr i16 %50, 8
  %conv64.2 = trunc i16 %52 to i8
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv64.2, ptr %6, align 1
  %54 = ptrtoint ptr %alt_mac_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %alt_mac_addr, align 4
  %56 = and i32 %55, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not = icmp eq i32 %56, 0
  br i1 %tobool.i.not, label %if.end91, label %do.body71

do.body71:                                        ; preds = %if.end59.2
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_alt_mac_addr_generic, %if.then83)) #6
          to label %cleanup [label %if.then83], !srcloc !177

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  %netdev85 = getelementptr inbounds %struct.e1000_adapter, ptr %58, i32 0, i32 64
  %59 = ptrtoint ptr %netdev85 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev85, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug357, ptr noundef %60, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end91:                                         ; preds = %if.end59.2
  call void @__sanitizer_cov_trace_pc() #8
  %rar_set = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 20
  %61 = ptrtoint ptr %rar_set to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rar_set, align 4
  %call94 = call i32 %62(ptr noundef %hw, ptr noundef nonnull %alt_mac_addr, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.then83, %do.body71, %if.then51, %do.body39, %if.end15.cleanup_crit_edge, %if.end15.cleanup_crit_edge133, %if.then11, %do.body6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end91 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i125, %if.then11 ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge133 ], [ %call.i127.lcssa, %if.then51 ], [ 0, %if.then83 ], [ %call.i125, %do.body6 ], [ %call.i127.lcssa, %do.body39 ], [ 0, %do.body71 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %alt_mac_addr) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_alt_mac_addr_offset) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @e1000e_rar_get_count_generic(ptr nocapture noundef readonly %hw) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %0 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rar_entry_count, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_rar_set_generic(ptr noundef %hw, ptr nocapture noundef readonly %addr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %arrayidx3 = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %arrayidx7 = getelementptr i8, ptr %addr, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %arrayidx11 = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %arrayidx13 = getelementptr i8, ptr %addr, i32 5
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or16 = or i32 %shl15, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10)
  %tobool.not = icmp eq i32 %or10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or16)
  %tobool17.not = icmp eq i32 %or16, 0
  %or.cond = select i1 %tobool.not, i1 %tobool17.not, i1 false
  %or18 = or i32 %or16, -2147483648
  %rar_high.0 = select i1 %or.cond, i32 0, i32 %or18
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp = icmp ult i32 %index, 16
  %mul = shl i32 %index, 3
  %cond.v = select i1 %cmp, i32 21504, i32 21600
  %cond = add i32 %cond.v, %mul
  tail call void @__ew32(ptr noundef %hw, i32 noundef %cond, i32 noundef %or10) #6
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %cond32.v = select i1 %cmp, i32 21508, i32 21604
  %cond32 = add i32 %cond32.v, %mul
  tail call void @__ew32(ptr noundef %hw, i32 noundef %cond32, i32 noundef %rar_high.0) #6
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_update_mc_addr_list_generic(ptr noundef %hw, ptr nocapture noundef readonly %mc_addr_list, i32 noundef %mc_addr_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mta_shadow = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 17
  %0 = call ptr @memset(ptr %mta_shadow, i32 0, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mc_addr_count)
  %cmp34.not = icmp eq i32 %mc_addr_count, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mta_reg_count.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 16
  %1 = ptrtoint ptr %mta_reg_count.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mta_reg_count.i, align 2
  %conv.i = zext i16 %2 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %sub.i = add nsw i32 %mul.i, -1
  %mc_filter_type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %mc_filter_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mc_filter_type.i, align 4
  %sub = add nsw i32 %conv.i, -1
  br label %for.body

for.body:                                         ; preds = %e1000_hash_mc_addr.exit.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %e1000_hash_mc_addr.exit.for.body_crit_edge ]
  %mc_addr_list.addr.035 = phi ptr [ %mc_addr_list, %for.body.lr.ph ], [ %add.ptr, %e1000_hash_mc_addr.exit.for.body_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %bit_shift.0.i = phi i8 [ 0, %for.body ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %conv1.i = zext i8 %bit_shift.0.i to i32
  %shr.i = lshr i32 %sub.i, %conv1.i
  %cmp.not.i = icmp eq i32 %shr.i, 255
  %inc.i = add i8 %bit_shift.0.i, 1
  br i1 %cmp.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %4, label %while.end.i.e1000_hash_mc_addr.exit_crit_edge [
    i32 3, label %sw.bb10.i
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

while.end.i.e1000_hash_mc_addr.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hash_mc_addr.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hash_mc_addr.exit

sw.bb6.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add8.i = add i8 %bit_shift.0.i, 2
  br label %e1000_hash_mc_addr.exit

sw.bb10.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add12.i = add i8 %bit_shift.0.i, 4
  br label %e1000_hash_mc_addr.exit

e1000_hash_mc_addr.exit:                          ; preds = %sw.bb10.i, %sw.bb6.i, %sw.bb.i, %while.end.i.e1000_hash_mc_addr.exit_crit_edge
  %bit_shift.1.i = phi i8 [ %bit_shift.0.i, %while.end.i.e1000_hash_mc_addr.exit_crit_edge ], [ %add8.i, %sw.bb6.i ], [ %inc.i, %sw.bb.i ], [ %add12.i, %sw.bb10.i ]
  %arrayidx.i = getelementptr i8, ptr %mc_addr_list.addr.035, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %7 to i32
  %conv15.i = zext i8 %bit_shift.1.i to i32
  %sub16.i = sub nsw i32 8, %conv15.i
  %shr17.i = lshr i32 %conv14.i, %sub16.i
  %arrayidx18.i = getelementptr i8, ptr %mc_addr_list.addr.035, i32 5
  %8 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx18.i, align 1
  %conv20.i = zext i8 %9 to i32
  %shl.i = shl i32 %conv20.i, %conv15.i
  %or.i = or i32 %shl.i, %shr17.i
  %and.i = and i32 %or.i, %sub.i
  %shr = lshr i32 %and.i, 5
  %and = and i32 %shr, %sub
  %and2 = and i32 %or.i, 31
  %shl = shl nuw i32 1, %and2
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 17, i32 %and
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %or = or i32 %shl, %11
  store i32 %or, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %mc_addr_list.addr.035, i32 6
  %inc = add nuw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %mc_addr_count
  br i1 %exitcond.not, label %e1000_hash_mc_addr.exit.for.end_crit_edge, label %e1000_hash_mc_addr.exit.for.body_crit_edge

e1000_hash_mc_addr.exit.for.body_crit_edge:       ; preds = %e1000_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

e1000_hash_mc_addr.exit.for.end_crit_edge:        ; preds = %e1000_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %e1000_hash_mc_addr.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mta_reg_count6 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 16
  %12 = ptrtoint ptr %mta_reg_count6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mta_reg_count6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp1038.not = icmp eq i16 %13, 0
  br i1 %cmp1038.not, label %for.end.for.end18_crit_edge, label %for.body12.preheader

for.end.for.end18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end18

for.body12.preheader:                             ; preds = %for.end
  %conv7 = zext i16 %13 to i32
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.preheader
  %i.139.in = phi i32 [ %i.139, %for.body12.for.body12_crit_edge ], [ %conv7, %for.body12.preheader ]
  %i.139 = add nsw i32 %i.139.in, -1
  %shl13 = shl i32 %i.139, 2
  %add = add nsw i32 %shl13, 20992
  %arrayidx16 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 17, i32 %i.139
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef %15) #6
  %cmp10 = icmp ugt i32 %i.139.in, 1
  br i1 %cmp10, label %for.body12.for.body12_crit_edge, label %for.body12.for.end18_crit_edge

for.body12.for.end18_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end18

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

for.end18:                                        ; preds = %for.body12.for.end18_crit_edge, %for.end.for.end18_crit_edge
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_clear_hw_cntrs_base(ptr noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16384
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %4, i32 16392
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %7, i32 16400
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %10, i32 16404
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %13, i32 16408
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %16, i32 16412
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %19, i32 16416
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %21 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %22, i32 16424
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %25, i32 16432
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %27 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %28, i32 16440
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %30 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %31, i32 16448
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %33 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %34, i32 16456
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %36 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %37, i32 16460
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %39 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %40, i32 16464
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %42 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %43, i32 16468
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %45 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %46, i32 16472
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %48 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %49, i32 16500
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %51 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %52, i32 16504
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %54 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %55, i32 16508
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %57 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %58, i32 16512
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %60 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %61, i32 16520
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %63 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %64, i32 16524
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %66 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %67, i32 16528
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %69 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %70, i32 16532
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %72 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %73, i32 16544
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %75 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %76, i32 16548
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %78 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %79, i32 16552
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %81 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %82, i32 16556
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %84 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %85, i32 16560
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %87 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %88, i32 16576
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %90 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %91, i32 16580
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %93 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %94, i32 16584
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %96 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %97, i32 16588
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %99 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %100, i32 16592
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %102 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %103, i32 16596
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %105 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %106, i32 16624
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %108 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %109, i32 16628
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_check_for_copper_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #6
  %0 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %link, align 1, !annotation !174
  %get_link_status = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 25
  %1 = ptrtoint ptr %get_link_status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %get_link_status, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %get_link_status, align 4
  %call = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %lor.lhs.false.out_crit_edge, label %if.end6

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = call i32 @e1000e_check_downshift(ptr noundef %hw) #6
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 23
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg, align 2, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %config_collision_dist = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 19
  %8 = ptrtoint ptr %config_collision_dist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config_collision_dist, align 4
  call void %9(ptr noundef %hw) #6
  %call11 = call i32 @e1000e_config_fc_after_link_up(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %do.body14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_copper_link.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_copper_link, %if.then19)) #6
          to label %cleanup [label %if.then19], !srcloc !177

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_copper_link.__UNIQUE_ID_ddebug358, ptr noundef %13, ptr noundef nonnull @.str.9) #6
  br label %cleanup

out:                                              ; preds = %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %14 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %get_link_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then19, %do.body14, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %out ], [ 0, %entry.cleanup_crit_edge ], [ -3, %if.end6.cleanup_crit_edge ], [ %call11, %if.then19 ], [ 0, %if.end10.cleanup_crit_edge ], [ %call11, %do.body14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_has_link_generic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_downshift(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_config_fc_after_link_up(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mii_status_reg = alloca i16, align 2
  %mii_nway_adv_reg = alloca i16, align 2
  %mii_nway_lp_ability_reg = alloca i16, align 2
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_status_reg) #6
  %0 = ptrtoint ptr %mii_status_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %mii_status_reg, align 2, !annotation !174
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_nway_adv_reg) #6
  %1 = ptrtoint ptr %mii_nway_adv_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %mii_nway_adv_reg, align 2, !annotation !174
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_nway_lp_ability_reg) #6
  %2 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %mii_nway_lp_ability_reg, align 2, !annotation !174
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #6
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %speed, align 2, !annotation !174
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex) #6
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %duplex, align 2, !annotation !174
  %autoneg_failed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 24
  %5 = ptrtoint ptr %autoneg_failed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autoneg_failed, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %media_type7 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %7 = ptrtoint ptr %media_type7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %media_type7, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch = icmp eq i32 %9, 2
  br i1 %switch, label %if.then.if.end12_crit_edge, label %if.then.if.end24_crit_edge

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp8 = icmp eq i32 %8, 1
  br i1 %cmp8, label %if.else.if.end12_crit_edge, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %call10 = tail call i32 @e1000e_force_mac_fc(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool13.not = icmp eq i32 %call10, 0
  br i1 %tobool13.not, label %if.end12.if.end24_crit_edge, label %do.body15

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.body15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then20)) #6
          to label %cleanup [label %if.then20], !srcloc !177

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug382, ptr noundef %13, ptr noundef nonnull @.str.30) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end12.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.then.if.end24_crit_edge
  %media_type26 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %media_type26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %media_type26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp27 = icmp eq i32 %15, 1
  br i1 %cmp27, label %land.lhs.true, label %if.end24.if.end292_crit_edge

if.end24.if.end292_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end292

land.lhs.true:                                    ; preds = %if.end24
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 23
  %16 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %autoneg, align 2, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  br i1 %tobool28.not, label %land.lhs.true.if.end292thread-pre-split_crit_edge, label %if.then29

land.lhs.true.if.end292thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end292thread-pre-split

if.then29:                                        ; preds = %land.lhs.true
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %18 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %19(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %mii_status_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %if.end33, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.then29
  %20 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_reg.i, align 4
  %call.i658 = call i32 %21(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %mii_status_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i658)
  %tobool35.not = icmp eq i32 %call.i658, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %22 = ptrtoint ptr %mii_status_reg to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mii_status_reg, align 2
  %24 = and i16 %23, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool38.not = icmp eq i16 %24, 0
  br i1 %tobool38.not, label %do.body41, label %if.end61

do.body41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then53)) #6
          to label %cleanup [label %if.then53], !srcloc !177

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %netdev55 = getelementptr inbounds %struct.e1000_adapter, ptr %26, i32 0, i32 64
  %27 = ptrtoint ptr %netdev55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev55, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug383, ptr noundef %28, ptr noundef nonnull @.str.31) #6
  br label %cleanup

if.end61:                                         ; preds = %if.end37
  %29 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_reg.i, align 4
  %call.i660 = call i32 %30(ptr noundef %hw, i32 noundef 4, ptr noundef nonnull %mii_nway_adv_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i660)
  %tobool63.not = icmp eq i32 %call.i660, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %31 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_reg.i, align 4
  %call.i662 = call i32 %32(ptr noundef %hw, i32 noundef 5, ptr noundef nonnull %mii_nway_lp_ability_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i662)
  %tobool67.not = icmp eq i32 %call.i662, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %33 = ptrtoint ptr %mii_nway_adv_reg to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mii_nway_adv_reg, align 2
  %35 = and i16 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool72.not = icmp eq i16 %35, 0
  br i1 %tobool72.not, label %if.end69.if.else128_crit_edge, label %land.lhs.true73

if.end69.if.else128_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else128

land.lhs.true73:                                  ; preds = %if.end69
  %36 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mii_nway_lp_ability_reg, align 2
  %38 = and i16 %37, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool76.not = icmp eq i16 %38, 0
  br i1 %tobool76.not, label %land.lhs.true73.if.else128_crit_edge, label %if.then77

land.lhs.true73.if.else128_crit_edge:             ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else128

if.then77:                                        ; preds = %land.lhs.true73
  %requested_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 7
  %39 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp78 = icmp eq i32 %40, 3
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  br i1 %cmp78, label %if.then80, label %if.else103

if.then80:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then95)) #6
          to label %if.end234 [label %if.then95], !srcloc !177

if.then95:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %netdev97 = getelementptr inbounds %struct.e1000_adapter, ptr %43, i32 0, i32 64
  %44 = ptrtoint ptr %netdev97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev97, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug384, ptr noundef %45, ptr noundef nonnull @.str.32) #6
  br label %if.end234

if.else103:                                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then119)) #6
          to label %if.end234 [label %if.then119], !srcloc !177

if.then119:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %netdev121 = getelementptr inbounds %struct.e1000_adapter, ptr %48, i32 0, i32 64
  %49 = ptrtoint ptr %netdev121 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev121, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug385, ptr noundef %50, ptr noundef nonnull @.str.33) #6
  br label %if.end234

if.else128:                                       ; preds = %land.lhs.true73.if.else128_crit_edge, %if.end69.if.else128_crit_edge
  %51 = trunc i16 %34 to i12
  %trunc = and i12 %51, -1024
  %52 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.63)
  switch i12 %trunc, label %if.else128.if.else208_crit_edge [
    i12 -2048, label %land.lhs.true136
    i12 -1024, label %land.lhs.true176
  ]

if.else128.if.else208_crit_edge:                  ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else208

land.lhs.true136:                                 ; preds = %if.else128
  %53 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mii_nway_lp_ability_reg, align 2
  %55 = and i16 %54, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %55)
  %.not690 = icmp eq i16 %55, 3072
  br i1 %.not690, label %if.then144, label %land.lhs.true136.if.else208_crit_edge

land.lhs.true136.if.else208_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else208

if.then144:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  %current_mode146 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %56 = ptrtoint ptr %current_mode146 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %current_mode146, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then160)) #6
          to label %if.end234 [label %if.then160], !srcloc !177

if.then160:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  %netdev162 = getelementptr inbounds %struct.e1000_adapter, ptr %58, i32 0, i32 64
  %59 = ptrtoint ptr %netdev162 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev162, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug386, ptr noundef %60, ptr noundef nonnull @.str.34) #6
  br label %if.end234

land.lhs.true176:                                 ; preds = %if.else128
  %61 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %mii_nway_lp_ability_reg, align 2
  %63 = and i16 %62, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %63)
  %.not692 = icmp eq i16 %63, 2048
  br i1 %.not692, label %if.then184, label %land.lhs.true176.if.else208_crit_edge

land.lhs.true176.if.else208_crit_edge:            ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else208

if.then184:                                       ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #8
  %current_mode186 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %64 = ptrtoint ptr %current_mode186 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %current_mode186, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then200)) #6
          to label %if.end234 [label %if.then200], !srcloc !177

if.then200:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw, align 4
  %netdev202 = getelementptr inbounds %struct.e1000_adapter, ptr %66, i32 0, i32 64
  %67 = ptrtoint ptr %netdev202 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %netdev202, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug387, ptr noundef %68, ptr noundef nonnull @.str.33) #6
  br label %if.end234

if.else208:                                       ; preds = %land.lhs.true176.if.else208_crit_edge, %land.lhs.true136.if.else208_crit_edge, %if.else128.if.else208_crit_edge
  %current_mode210 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %69 = ptrtoint ptr %current_mode210 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %current_mode210, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then224)) #6
          to label %if.end234 [label %if.then224], !srcloc !177

if.then224:                                       ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 4
  %netdev226 = getelementptr inbounds %struct.e1000_adapter, ptr %71, i32 0, i32 64
  %72 = ptrtoint ptr %netdev226 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %netdev226, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug388, ptr noundef %73, ptr noundef nonnull @.str.35) #6
  br label %if.end234

if.end234:                                        ; preds = %if.then224, %if.else208, %if.then200, %if.then184, %if.then160, %if.then144, %if.then119, %if.else103, %if.then95, %if.then80
  %get_link_up_info = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 9
  %74 = ptrtoint ptr %get_link_up_info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %get_link_up_info, align 4
  %call235 = call i32 %75(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %duplex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end259, label %do.body239

do.body239:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then251)) #6
          to label %cleanup [label %if.then251], !srcloc !177

if.then251:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 4
  %netdev253 = getelementptr inbounds %struct.e1000_adapter, ptr %77, i32 0, i32 64
  %78 = ptrtoint ptr %netdev253 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %netdev253, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug389, ptr noundef %79, ptr noundef nonnull @.str.36) #6
  br label %cleanup

if.end259:                                        ; preds = %if.end234
  %80 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %81)
  %cmp261 = icmp eq i16 %81, 1
  br i1 %cmp261, label %if.then263, label %if.end259.if.end266_crit_edge

if.end259.if.end266_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end266

if.then263:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #8
  %current_mode265 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %82 = ptrtoint ptr %current_mode265 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %current_mode265, align 4
  br label %if.end266

if.end266:                                        ; preds = %if.then263, %if.end259.if.end266_crit_edge
  %call267 = call i32 @e1000e_force_mac_fc(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.end266.if.end292thread-pre-split_crit_edge, label %do.body271

if.end266.if.end292thread-pre-split_crit_edge:    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end292thread-pre-split

do.body271:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then283)) #6
          to label %cleanup [label %if.then283], !srcloc !177

if.then283:                                       ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw, align 4
  %netdev285 = getelementptr inbounds %struct.e1000_adapter, ptr %84, i32 0, i32 64
  %85 = ptrtoint ptr %netdev285 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %netdev285, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug390, ptr noundef %86, ptr noundef nonnull @.str.30) #6
  br label %cleanup

if.end292thread-pre-split:                        ; preds = %if.end266.if.end292thread-pre-split_crit_edge, %land.lhs.true.if.end292thread-pre-split_crit_edge
  %87 = ptrtoint ptr %media_type26 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr = load i32, ptr %media_type26, align 4
  br label %if.end292

if.end292:                                        ; preds = %if.end292thread-pre-split, %if.end24.if.end292_crit_edge
  %88 = phi i32 [ %.pr, %if.end292thread-pre-split ], [ %15, %if.end24.if.end292_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %88)
  %cmp295 = icmp eq i32 %88, 3
  br i1 %cmp295, label %land.lhs.true297, label %if.end292.cleanup_crit_edge

if.end292.cleanup_crit_edge:                      ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true297:                                 ; preds = %if.end292
  %autoneg298 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 23
  %89 = ptrtoint ptr %autoneg298 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %autoneg298, align 2, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool299.not = icmp eq i8 %90, 0
  br i1 %tobool299.not, label %land.lhs.true297.cleanup_crit_edge, label %if.then301

land.lhs.true297.cleanup_crit_edge:               ; preds = %land.lhs.true297
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then301:                                       ; preds = %land.lhs.true297
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %91 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %92, i32 16908
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %94 = and i32 %93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool304.not = icmp eq i32 %94, 0
  br i1 %tobool304.not, label %do.body307, label %if.end327

do.body307:                                       ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then319)) #6
          to label %cleanup [label %if.then319], !srcloc !177

if.then319:                                       ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw, align 4
  %netdev321 = getelementptr inbounds %struct.e1000_adapter, ptr %96, i32 0, i32 64
  %97 = ptrtoint ptr %netdev321 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %netdev321, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug391, ptr noundef %98, ptr noundef nonnull @.str.37) #6
  br label %cleanup

if.end327:                                        ; preds = %if.then301
  %99 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i664 = getelementptr i8, ptr %100, i32 16920
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i664) #6, !srcloc !175
  %102 = call i32 @llvm.bswap.i32(i32 %101) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %103 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i666 = getelementptr i8, ptr %104, i32 16924
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i666) #6, !srcloc !175
  %106 = call i32 @llvm.bswap.i32(i32 %105) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %and330 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330)
  %tobool331.not = icmp eq i32 %and330, 0
  %and333 = and i32 %106, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and333)
  %tobool334.not = icmp eq i32 %and333, 0
  %or.cond605 = select i1 %tobool331.not, i1 true, i1 %tobool334.not
  br i1 %or.cond605, label %if.else389, label %if.then335

if.then335:                                       ; preds = %if.end327
  %requested_mode337 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 7
  %107 = ptrtoint ptr %requested_mode337 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %requested_mode337, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %108)
  %cmp338 = icmp eq i32 %108, 3
  %current_mode342 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  br i1 %cmp338, label %if.then340, label %if.else364

if.then340:                                       ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %current_mode342 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 3, ptr %current_mode342, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then356)) #6
          to label %if.end487 [label %if.then356], !srcloc !177

if.then356:                                       ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw, align 4
  %netdev358 = getelementptr inbounds %struct.e1000_adapter, ptr %111, i32 0, i32 64
  %112 = ptrtoint ptr %netdev358 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %netdev358, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug392, ptr noundef %113, ptr noundef nonnull @.str.32) #6
  br label %if.end487

if.else364:                                       ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %current_mode342 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %current_mode342, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then380)) #6
          to label %if.end487 [label %if.then380], !srcloc !177

if.then380:                                       ; preds = %if.else364
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw, align 4
  %netdev382 = getelementptr inbounds %struct.e1000_adapter, ptr %116, i32 0, i32 64
  %117 = ptrtoint ptr %netdev382 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %netdev382, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug393, ptr noundef %118, ptr noundef nonnull @.str.33) #6
  br label %if.end487

if.else389:                                       ; preds = %if.end327
  %tobool331.not.not = xor i1 %tobool331.not, true
  %and393 = and i32 %102, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and393)
  %tobool394.not = icmp eq i32 %and393, 0
  %or.cond606 = select i1 %tobool331.not.not, i1 true, i1 %tobool394.not
  %or.cond607 = select i1 %or.cond606, i1 true, i1 %tobool334.not
  %and399 = and i32 %106, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and399)
  %tobool400.not = icmp eq i32 %and399, 0
  %or.cond608 = select i1 %or.cond607, i1 true, i1 %tobool400.not
  br i1 %or.cond608, label %if.else425, label %if.then401

if.then401:                                       ; preds = %if.else389
  call void @__sanitizer_cov_trace_pc() #8
  %current_mode403 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %119 = ptrtoint ptr %current_mode403 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 2, ptr %current_mode403, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then417)) #6
          to label %if.end487 [label %if.then417], !srcloc !177

if.then417:                                       ; preds = %if.then401
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw, align 4
  %netdev419 = getelementptr inbounds %struct.e1000_adapter, ptr %121, i32 0, i32 64
  %122 = ptrtoint ptr %netdev419 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %netdev419, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug394, ptr noundef %123, ptr noundef nonnull @.str.34) #6
  br label %if.end487

if.else425:                                       ; preds = %if.else389
  %124 = and i32 %102, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %124)
  %.not = icmp eq i32 %124, 384
  %or.cond610 = select i1 %.not, i1 %tobool334.not, i1 false
  %or.cond610.not = xor i1 %or.cond610, true
  %or.cond611 = select i1 %or.cond610.not, i1 true, i1 %tobool400.not
  %current_mode463 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  br i1 %or.cond611, label %if.else461, label %if.then437

if.then437:                                       ; preds = %if.else425
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %current_mode463 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %current_mode463, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then453)) #6
          to label %if.end487 [label %if.then453], !srcloc !177

if.then453:                                       ; preds = %if.then437
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw, align 4
  %netdev455 = getelementptr inbounds %struct.e1000_adapter, ptr %127, i32 0, i32 64
  %128 = ptrtoint ptr %netdev455 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %netdev455, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug395, ptr noundef %129, ptr noundef nonnull @.str.33) #6
  br label %if.end487

if.else461:                                       ; preds = %if.else425
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %current_mode463 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %current_mode463, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then477)) #6
          to label %if.end487 [label %if.then477], !srcloc !177

if.then477:                                       ; preds = %if.else461
  call void @__sanitizer_cov_trace_pc() #8
  %131 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw, align 4
  %netdev479 = getelementptr inbounds %struct.e1000_adapter, ptr %132, i32 0, i32 64
  %133 = ptrtoint ptr %netdev479 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %netdev479, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug396, ptr noundef %134, ptr noundef nonnull @.str.35) #6
  br label %if.end487

if.end487:                                        ; preds = %if.then477, %if.else461, %if.then453, %if.then437, %if.then417, %if.then401, %if.then380, %if.else364, %if.then356, %if.then340
  %135 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i668 = getelementptr i8, ptr %136, i32 16904
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i668) #6, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %138 = or i32 %137, -2147483648
  %139 = call i32 @llvm.bswap.i32(i32 %138)
  call void @__ew32(ptr noundef %hw, i32 noundef 16904, i32 noundef %139) #6
  %call489 = call i32 @e1000e_force_mac_fc(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call489)
  %tobool490.not = icmp eq i32 %call489, 0
  br i1 %tobool490.not, label %if.end487.cleanup_crit_edge, label %do.body493

if.end487.cleanup_crit_edge:                      ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body493:                                       ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_config_fc_after_link_up, %if.then505)) #6
          to label %cleanup [label %if.then505], !srcloc !177

if.then505:                                       ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #8
  %140 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw, align 4
  %netdev507 = getelementptr inbounds %struct.e1000_adapter, ptr %141, i32 0, i32 64
  %142 = ptrtoint ptr %netdev507 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %netdev507, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug397, ptr noundef %143, ptr noundef nonnull @.str.30) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then505, %do.body493, %if.end487.cleanup_crit_edge, %if.then319, %do.body307, %land.lhs.true297.cleanup_crit_edge, %if.end292.cleanup_crit_edge, %if.then283, %do.body271, %if.then251, %do.body239, %if.end65.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then53, %do.body41, %if.end33.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then20, %do.body15
  %retval.0 = phi i32 [ %call10, %if.then20 ], [ %call.i, %if.then29.cleanup_crit_edge ], [ %call.i658, %if.end33.cleanup_crit_edge ], [ 0, %if.then53 ], [ %call.i660, %if.end61.cleanup_crit_edge ], [ %call.i662, %if.end65.cleanup_crit_edge ], [ %call235, %if.then251 ], [ %call267, %if.then283 ], [ 0, %if.then319 ], [ %call489, %if.then505 ], [ 0, %if.end487.cleanup_crit_edge ], [ 0, %land.lhs.true297.cleanup_crit_edge ], [ 0, %if.end292.cleanup_crit_edge ], [ %call10, %do.body15 ], [ 0, %do.body41 ], [ %call235, %do.body239 ], [ %call267, %do.body271 ], [ 0, %do.body307 ], [ %call489, %do.body493 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_nway_lp_ability_reg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_nway_adv_reg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_status_reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_check_for_fiber_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %8, i32 384
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %and = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %10 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  %11 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  %or.cond105 = select i1 %or.cond, i1 %tobool8.not, i1 false
  br i1 %or.cond105, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %autoneg_failed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 24
  %12 = ptrtoint ptr %autoneg_failed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autoneg_failed, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %if.then10, label %do.body12

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %autoneg_failed to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %autoneg_failed, align 1
  br label %cleanup

do.body12:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_fiber_link, %if.then17)) #6
          to label %do.end20 [label %if.then17], !srcloc !177

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %16, i32 0, i32 64
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug359, ptr noundef %18, ptr noundef nonnull @.str.11) #6
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body12
  %txcw = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %txcw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %txcw, align 4
  %and21 = and i32 %20, 2147483647
  tail call void @__ew32(ptr noundef %hw, i32 noundef 376, i32 noundef %and21) #6
  %21 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %24 = or i32 %23, 1090519040
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %25) #6
  %call23 = tail call i32 @e1000e_config_fc_after_link_up(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end20.cleanup_crit_edge, label %do.body27

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body27:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_fiber_link, %if.then39)) #6
          to label %cleanup [label %if.then39], !srcloc !177

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %netdev41 = getelementptr inbounds %struct.e1000_adapter, ptr %27, i32 0, i32 64
  %28 = ptrtoint ptr %netdev41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug360, ptr noundef %29, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %and48 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %or.cond106 = select i1 %tobool49.not, i1 true, i1 %tobool8.not
  br i1 %or.cond106, label %if.else.cleanup_crit_edge, label %do.body55

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body55:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_fiber_link, %if.then67)) #6
          to label %do.end74 [label %if.then67], !srcloc !177

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %netdev69 = getelementptr inbounds %struct.e1000_adapter, ptr %31, i32 0, i32 64
  %32 = ptrtoint ptr %netdev69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev69, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug361, ptr noundef %33, ptr noundef nonnull @.str.12) #6
  br label %do.end74

do.end74:                                         ; preds = %if.then67, %do.body55
  %txcw75 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 10
  %34 = ptrtoint ptr %txcw75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %txcw75, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 376, i32 noundef %35) #6
  %and76 = and i32 %3, -65
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %and76) #6
  %serdes_has_link = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %36 = ptrtoint ptr %serdes_has_link to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %serdes_has_link, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %if.else.cleanup_crit_edge, %if.then39, %do.body27, %do.end20.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %call23, %if.then39 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.end74 ], [ 0, %do.end20.cleanup_crit_edge ], [ %call23, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_check_for_serdes_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i320 = getelementptr i8, ptr %8, i32 384
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i320) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %10 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %11 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %autoneg_failed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 24
  %12 = ptrtoint ptr %autoneg_failed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autoneg_failed, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.then7, label %do.body9

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %autoneg_failed to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %autoneg_failed, align 1
  br label %cleanup

do.body9:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_serdes_link, %if.then14)) #6
          to label %do.end17 [label %if.then14], !srcloc !177

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %16, i32 0, i32 64
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug362, ptr noundef %18, ptr noundef nonnull @.str.11) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body9
  %txcw = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %txcw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %txcw, align 4
  %and18 = and i32 %20, 2147483647
  tail call void @__ew32(ptr noundef %hw, i32 noundef 376, i32 noundef %and18) #6
  %21 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %24 = or i32 %23, 1090519040
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %25) #6
  %call20 = tail call i32 @e1000e_config_fc_after_link_up(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end17.if.end135_crit_edge, label %do.body24

do.end17.if.end135_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

do.body24:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_serdes_link, %if.then36)) #6
          to label %cleanup [label %if.then36], !srcloc !177

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %netdev38 = getelementptr inbounds %struct.e1000_adapter, ptr %27, i32 0, i32 64
  %28 = ptrtoint ptr %netdev38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug363, ptr noundef %29, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %and45 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %or.cond293 = select i1 %tobool46.not, i1 true, i1 %tobool5.not
  br i1 %or.cond293, label %if.else74, label %do.body52

do.body52:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_serdes_link, %if.then64)) #6
          to label %do.end71 [label %if.then64], !srcloc !177

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %netdev66 = getelementptr inbounds %struct.e1000_adapter, ptr %31, i32 0, i32 64
  %32 = ptrtoint ptr %netdev66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev66, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug364, ptr noundef %33, ptr noundef nonnull @.str.12) #6
  br label %do.end71

do.end71:                                         ; preds = %if.then64, %do.body52
  %txcw72 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 10
  %34 = ptrtoint ptr %txcw72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %txcw72, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 376, i32 noundef %35) #6
  %and73 = and i32 %3, -65
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %and73) #6
  %serdes_has_link = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %36 = ptrtoint ptr %serdes_has_link to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %serdes_has_link, align 2
  br label %if.end135

if.else74:                                        ; preds = %if.else
  %37 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i323 = getelementptr i8, ptr %38, i32 376
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i323) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %.mask341 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask341)
  %tobool77.not = icmp eq i32 %.mask341, 0
  br i1 %tobool77.not, label %if.then78, label %if.else74.if.end135_crit_edge

if.else74.if.end135_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then78:                                        ; preds = %if.else74
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %40 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i325 = getelementptr i8, ptr %41, i32 384
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i325) #6, !srcloc !175
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %and80 = and i32 %43, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else109, label %if.then82

if.then82:                                        ; preds = %if.then78
  %and83 = and i32 %43, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.then85, label %if.then82.if.end135_crit_edge

if.then82.if.end135_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then85:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %serdes_has_link86 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %44 = ptrtoint ptr %serdes_has_link86 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %serdes_has_link86, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_serdes_link, %if.then100)) #6
          to label %if.end135 [label %if.then100], !srcloc !177

if.then100:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %netdev102 = getelementptr inbounds %struct.e1000_adapter, ptr %46, i32 0, i32 64
  %47 = ptrtoint ptr %netdev102 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev102, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug365, ptr noundef %48, ptr noundef nonnull @.str.14) #6
  br label %if.end135

if.else109:                                       ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  %serdes_has_link110 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %49 = ptrtoint ptr %serdes_has_link110 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %serdes_has_link110, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_serdes_link, %if.then124)) #6
          to label %if.end135 [label %if.then124], !srcloc !177

if.then124:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 4
  %netdev126 = getelementptr inbounds %struct.e1000_adapter, ptr %51, i32 0, i32 64
  %52 = ptrtoint ptr %netdev126 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev126, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug366, ptr noundef %53, ptr noundef nonnull @.str.15) #6
  br label %if.end135

if.end135:                                        ; preds = %if.then124, %if.else109, %if.then100, %if.then85, %if.then82.if.end135_crit_edge, %if.else74.if.end135_crit_edge, %do.end71, %do.end17.if.end135_crit_edge
  %54 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i327 = getelementptr i8, ptr %55, i32 376
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i327) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %.mask = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool138.not = icmp eq i32 %.mask, 0
  br i1 %tobool138.not, label %if.end135.cleanup_crit_edge, label %if.then139

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then139:                                       ; preds = %if.end135
  %57 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i329 = getelementptr i8, ptr %58, i32 8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i329) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %60 = and i32 %59, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool142.not = icmp eq i32 %60, 0
  br i1 %tobool142.not, label %if.else221, label %if.then143

if.then143:                                       ; preds = %if.then139
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %61 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i331 = getelementptr i8, ptr %62, i32 384
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i331) #6, !srcloc !175
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %and145 = and i32 %64, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.else197, label %if.then147

if.then147:                                       ; preds = %if.then143
  %and148 = and i32 %64, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  %serdes_has_link151 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  br i1 %tobool149.not, label %if.then150, label %if.else173

if.then150:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %serdes_has_link151 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %serdes_has_link151, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_serdes_link, %if.then165)) #6
          to label %cleanup [label %if.then165], !srcloc !177

if.then165:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 4
  %netdev167 = getelementptr inbounds %struct.e1000_adapter, ptr %67, i32 0, i32 64
  %68 = ptrtoint ptr %netdev167 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %netdev167, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug367, ptr noundef %69, ptr noundef nonnull @.str.16) #6
  br label %cleanup

if.else173:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %serdes_has_link151 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %serdes_has_link151, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_serdes_link, %if.then188)) #6
          to label %cleanup [label %if.then188], !srcloc !177

if.then188:                                       ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw, align 4
  %netdev190 = getelementptr inbounds %struct.e1000_adapter, ptr %72, i32 0, i32 64
  %73 = ptrtoint ptr %netdev190 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %netdev190, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug368, ptr noundef %74, ptr noundef nonnull @.str.17) #6
  br label %cleanup

if.else197:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #8
  %serdes_has_link198 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %75 = ptrtoint ptr %serdes_has_link198 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %serdes_has_link198, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_serdes_link, %if.then212)) #6
          to label %cleanup [label %if.then212], !srcloc !177

if.then212:                                       ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 4
  %netdev214 = getelementptr inbounds %struct.e1000_adapter, ptr %77, i32 0, i32 64
  %78 = ptrtoint ptr %netdev214 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %netdev214, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug369, ptr noundef %79, ptr noundef nonnull @.str.18) #6
  br label %cleanup

if.else221:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #8
  %serdes_has_link222 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %80 = ptrtoint ptr %serdes_has_link222 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %serdes_has_link222, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_check_for_serdes_link, %if.then236)) #6
          to label %cleanup [label %if.then236], !srcloc !177

if.then236:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw, align 4
  %netdev238 = getelementptr inbounds %struct.e1000_adapter, ptr %82, i32 0, i32 64
  %83 = ptrtoint ptr %netdev238 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %netdev238, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug370, ptr noundef %84, ptr noundef nonnull @.str.19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then236, %if.else221, %if.then212, %if.else197, %if.then188, %if.else173, %if.then165, %if.then150, %if.end135.cleanup_crit_edge, %if.then36, %do.body24, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %call20, %if.then36 ], [ 0, %if.then212 ], [ 0, %if.then165 ], [ 0, %if.then188 ], [ 0, %if.then236 ], [ 0, %if.end135.cleanup_crit_edge ], [ %call20, %do.body24 ], [ 0, %if.then150 ], [ 0, %if.else173 ], [ 0, %if.else197 ], [ 0, %if.else221 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_setup_link_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %nvm_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %0 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_reset_block, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 %1(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %requested_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp = icmp eq i32 %3, 255
  br i1 %cmp, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data.i) #6
  %4 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %nvm_data.i, align 2, !annotation !174
  %read.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %5 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i.i, align 4
  %call.i.i = call i32 %6(ptr noundef %hw, i16 noundef zeroext 15, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %do.body1.i

do.body1.i:                                       ; preds = %if.then5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_set_default_fc_generic.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_setup_link_generic, %if.then6.i)) #6
          to label %e1000_set_default_fc_generic.exit [label %if.then6.i], !srcloc !177

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %netdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %8, i32 0, i32 64
  %9 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_set_default_fc_generic.__UNIQUE_ID_ddebug371, ptr noundef %10, ptr noundef nonnull @.str.6) #6
  br label %e1000_set_default_fc_generic.exit

if.end9.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nvm_data.i, align 2
  %13 = trunc i16 %12 to i14
  %trunc.i = and i14 %13, -4096
  %14 = sext i14 %trunc.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8192, i16 %14)
  %switch.selectcmp = icmp eq i14 %trunc.i, -8192
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 3
  %15 = sext i14 %trunc.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %switch.selectcmp79 = icmp eq i14 %trunc.i, 0
  %switch.select80 = select i1 %switch.selectcmp79, i32 0, i32 %switch.select
  %16 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %switch.select80, ptr %requested_mode, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data.i) #6
  br label %if.end10

e1000_set_default_fc_generic.exit:                ; preds = %if.then6.i, %do.body1.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data.i) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end9.i, %if.end.if.end10_crit_edge
  %17 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %requested_mode, align 4
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_setup_link_generic.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_setup_link_generic, %if.then19)) #6
          to label %do.end24 [label %if.then19], !srcloc !177

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %21, i32 0, i32 64
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  %24 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %current_mode, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_setup_link_generic.__UNIQUE_ID_ddebug372, ptr noundef %23, ptr noundef nonnull @.str.21, i32 noundef %25) #6
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %if.end10
  %setup_physical_interface = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 16
  %26 = ptrtoint ptr %setup_physical_interface to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %setup_physical_interface, align 4
  %call26 = call i32 %27(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body31, label %do.end24.cleanup_crit_edge

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body31:                                        ; preds = %do.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_setup_link_generic.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_setup_link_generic, %if.then43)) #6
          to label %do.end50 [label %if.then43], !srcloc !177

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %netdev45 = getelementptr inbounds %struct.e1000_adapter, ptr %29, i32 0, i32 64
  %30 = ptrtoint ptr %netdev45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_setup_link_generic.__UNIQUE_ID_ddebug373, ptr noundef %31, ptr noundef nonnull @.str.22) #6
  br label %do.end50

do.end50:                                         ; preds = %if.then43, %do.body31
  call void @__ew32(ptr noundef %hw, i32 noundef 48, i32 noundef 34824) #6
  call void @__ew32(ptr noundef %hw, i32 noundef 44, i32 noundef 256) #6
  call void @__ew32(ptr noundef %hw, i32 noundef 40, i32 noundef 12746753) #6
  %pause_time = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pause_time, align 4
  %conv = zext i16 %33 to i32
  call void @__ew32(ptr noundef %hw, i32 noundef 368, i32 noundef %conv) #6
  %34 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %current_mode, align 4
  %and.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i76 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i76, label %do.end50.e1000e_set_fc_watermarks.exit_crit_edge, label %if.then.i

do.end50.e1000e_set_fc_watermarks.exit_crit_edge: ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_set_fc_watermarks.exit

if.then.i:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #8
  %fc.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4
  %low_water.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %low_water.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %low_water.i, align 4
  %send_xon.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %send_xon.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %send_xon.i, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool3.not.i = icmp eq i8 %39, 0
  %or.i = or i32 %37, -2147483648
  %spec.select.i = select i1 %tobool3.not.i, i32 %37, i32 %or.i
  %40 = ptrtoint ptr %fc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fc.i, align 4
  br label %e1000e_set_fc_watermarks.exit

e1000e_set_fc_watermarks.exit:                    ; preds = %if.then.i, %do.end50.e1000e_set_fc_watermarks.exit_crit_edge
  %fcrtl.1.i = phi i32 [ %spec.select.i, %if.then.i ], [ 0, %do.end50.e1000e_set_fc_watermarks.exit_crit_edge ]
  %fcrth.0.i = phi i32 [ %41, %if.then.i ], [ 0, %do.end50.e1000e_set_fc_watermarks.exit_crit_edge ]
  call void @__ew32(ptr noundef %hw, i32 noundef 8544, i32 noundef %fcrtl.1.i) #6
  call void @__ew32(ptr noundef %hw, i32 noundef 8552, i32 noundef %fcrth.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %e1000e_set_fc_watermarks.exit, %do.end24.cleanup_crit_edge, %e1000_set_default_fc_generic.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %e1000e_set_fc_watermarks.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call.i.i, %e1000_set_default_fc_generic.exit ], [ %call26, %do.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_set_fc_watermarks(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_mode, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fc = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4
  %low_water = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %low_water to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %low_water, align 4
  %send_xon = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %send_xon to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %send_xon, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  %or = or i32 %3, -2147483648
  %spec.select = select i1 %tobool3.not, i32 %3, i32 %or
  %6 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %fcrtl.1 = phi i32 [ %spec.select, %if.then ], [ 0, %entry.if.end6_crit_edge ]
  %fcrth.0 = phi i32 [ %7, %if.then ], [ 0, %entry.if.end6_crit_edge ]
  tail call void @__ew32(ptr noundef %hw, i32 noundef 8544, i32 noundef %fcrtl.1) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 8552, i32 noundef %fcrth.0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_setup_fiber_serdes_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %3 = and i32 %2, -134217729
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %config_collision_dist = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 19
  %5 = ptrtoint ptr %config_collision_dist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config_collision_dist, align 4
  tail call void %6(ptr noundef %hw) #6
  %current_mode.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %7 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %switch.lookup, label %do.body5.i

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_commit_fc_settings_generic.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_setup_fiber_serdes_link, %if.then.i)) #6
          to label %cleanup [label %if.then.i], !srcloc !177

if.then.i:                                        ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_commit_fc_settings_generic.__UNIQUE_ID_ddebug374, ptr noundef %13, ptr noundef nonnull @.str.28) #6
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.e1000e_setup_fiber_serdes_link, i32 0, i32 %8
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 376, i32 noundef %switch.load) #6
  %txcw10.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 10
  %15 = ptrtoint ptr %txcw10.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %switch.load, ptr %txcw10.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_setup_fiber_serdes_link.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_setup_fiber_serdes_link, %if.then7)) #6
          to label %do.end10 [label %if.then7], !srcloc !177

if.then7:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %17, i32 0, i32 64
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_setup_fiber_serdes_link.__UNIQUE_ID_ddebug378, ptr noundef %19, ptr noundef nonnull @.str.24) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %switch.lookup
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %4) #6
  %20 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %23 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp = icmp eq i32 %24, 3
  br i1 %cmp, label %do.end10.if.then15_crit_edge, label %lor.lhs.false

do.end10.if.then15_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.end10
  %25 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %28 = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool14.not = icmp eq i32 %28, 0
  br i1 %tobool14.not, label %do.body18, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %do.end10.if.then15_crit_edge
  %call16 = tail call fastcc i32 @e1000_poll_fiber_serdes_link_generic(ptr noundef %hw)
  br label %cleanup

do.body18:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_setup_fiber_serdes_link.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_setup_fiber_serdes_link, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !177

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %netdev32 = getelementptr inbounds %struct.e1000_adapter, ptr %30, i32 0, i32 64
  %31 = ptrtoint ptr %netdev32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_setup_fiber_serdes_link.__UNIQUE_ID_ddebug379, ptr noundef %32, ptr noundef nonnull @.str.25) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body18, %if.then15, %if.then.i, %do.body5.i
  %retval.0 = phi i32 [ %call16, %if.then15 ], [ 0, %if.then30 ], [ -3, %if.then.i ], [ -3, %do.body5.i ], [ 0, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_poll_fiber_serdes_link_generic(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.087 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.inc, label %if.else

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %do.body4, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body4:                                         ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_poll_fiber_serdes_link_generic, %if.then9)) #6
          to label %do.end12 [label %if.then9], !srcloc !177

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug375, ptr noundef %7, ptr noundef nonnull @.str.56) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body4
  %autoneg_failed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 24
  %8 = ptrtoint ptr %autoneg_failed to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %autoneg_failed, align 1
  %check_for_link = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 3
  %9 = ptrtoint ptr %check_for_link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %check_for_link, align 4
  %call13 = tail call i32 %10(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end37, label %do.body17

do.body17:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_poll_fiber_serdes_link_generic, %if.then29)) #6
          to label %cleanup [label %if.then29], !srcloc !177

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev31 = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug376, ptr noundef %14, ptr noundef nonnull @.str.57) #6
  br label %cleanup

if.end37:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %autoneg_failed to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %autoneg_failed, align 1
  br label %cleanup

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %autoneg_failed39 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 24
  %16 = ptrtoint ptr %autoneg_failed39 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %autoneg_failed39, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_poll_fiber_serdes_link_generic, %if.then53)) #6
          to label %cleanup [label %if.then53], !srcloc !177

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %netdev55 = getelementptr inbounds %struct.e1000_adapter, ptr %18, i32 0, i32 64
  %19 = ptrtoint ptr %netdev55 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev55, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug377, ptr noundef %20, ptr noundef nonnull @.str.58) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.else, %if.end37, %if.then29, %do.body17
  %retval.0 = phi i32 [ %call13, %if.then29 ], [ 0, %if.then53 ], [ 0, %if.end37 ], [ %call13, %do.body17 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_config_collision_dist_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %3 = and i32 %2, -15744769
  %4 = or i32 %3, 15729408
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 1024, i32 noundef %5) #6
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_force_mac_fc(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_force_mac_fc.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_force_mac_fc, %if.then)) #6
          to label %do.end6 [label %if.then], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_force_mac_fc.__UNIQUE_ID_ddebug380, ptr noundef %7, ptr noundef nonnull @.str.27, i32 noundef %9) #6
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %current_mode8 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %current_mode8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_mode8, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %11, label %do.body17 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb11
    i32 3, label %sw.bb14
  ]

sw.bb:                                            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %3, -402653185
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  %and10 = and i32 %3, -402653185
  %or = or i32 %and10, 134217728
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  %and12 = and i32 %3, -402653185
  %or13 = or i32 %and12, 268435456
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  %or15 = or i32 %3, 402653184
  br label %sw.epilog

do.body17:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_force_mac_fc.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_force_mac_fc, %if.then29)) #6
          to label %cleanup [label %if.then29], !srcloc !177

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %netdev31 = getelementptr inbounds %struct.e1000_adapter, ptr %14, i32 0, i32 64
  %15 = ptrtoint ptr %netdev31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_force_mac_fc.__UNIQUE_ID_ddebug381, ptr noundef %16, ptr noundef nonnull @.str.28) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb11, %sw.bb9, %sw.bb
  %ctrl.0 = phi i32 [ %or15, %sw.bb14 ], [ %or13, %sw.bb11 ], [ %or, %sw.bb9 ], [ %and, %sw.bb ]
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %ctrl.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then29, %do.body17
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -3, %if.then29 ], [ -3, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_speed_and_duplex_copper(ptr nocapture noundef readonly %hw, ptr nocapture noundef %speed, ptr nocapture noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %.39 = select i1 %tobool2.not, i16 10, i16 100
  %.sink = select i1 %tobool.not, i16 %.39, i16 1000
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink, ptr %speed, align 2
  %and6 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %. = select i1 %tobool7.not, i16 1, i16 2
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %., ptr %duplex, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_get_speed_and_duplex_copper, %if.then16)) #6
          to label %do.end28 [label %if.then16], !srcloc !177

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %7, i32 0, i32 64
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %11)
  %cmp = icmp eq i16 %11, 1000
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %11)
  %cmp19 = icmp eq i16 %11, 100
  %cond = select i1 %cmp19, i32 100, i32 10
  %cond21 = select i1 %cmp, i32 1000, i32 %cond
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %13)
  %cmp23 = icmp eq i16 %13, 2
  %cond25 = select i1 %cmp23, ptr @.str.40, ptr @.str.41
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug398, ptr noundef %9, ptr noundef nonnull @.str.39, i32 noundef %cond21, ptr noundef nonnull %cond25) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then16, %entry
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @e1000e_get_speed_and_duplex_fiber_serdes(ptr nocapture noundef readnone %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %duplex) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1000, ptr %speed, align 2
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 2, ptr %duplex, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_hw_semaphore(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 1
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %i.076 = phi i32 [ 0, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 23376
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #6
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond = icmp eq i32 %i.076, %conv
  br i1 %exitcond, label %if.end.do.body5_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.do.body5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.076, i32 %add)
  %cmp2 = icmp eq i32 %i.076, %add
  br i1 %cmp2, label %while.end.do.body5_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.do.body5_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.body5:                                         ; preds = %while.end.do.body5_crit_edge, %if.end.do.body5_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_get_hw_semaphore.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_get_hw_semaphore, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !177

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %8, i32 0, i32 64
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_get_hw_semaphore.__UNIQUE_ID_ddebug399, ptr noundef %10, ptr noundef nonnull @.str.43) #6
  br label %cleanup

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %while.end.for.body_crit_edge
  %i.177 = phi i32 [ %inc23, %if.end22.for.body_crit_edge ], [ 0, %while.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %12, i32 23376
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %14 = or i32 %13, 33554432
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %15) #6
  %16 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %17, i32 23376
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %19 = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %if.end22, label %for.end

if.end22:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #6
  %inc23 = add nuw nsw i32 %i.177, 1
  %exitcond78 = icmp eq i32 %i.177, %conv
  br i1 %exitcond78, label %if.end22.if.then26_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end22.if.then26_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.177, i32 %add)
  %cmp24 = icmp eq i32 %i.177, %add
  br i1 %cmp24, label %for.end.if.then26_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.if.then26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.then26:                                        ; preds = %for.end.if.then26_crit_edge, %if.end22.if.then26_crit_edge
  %21 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 23376
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %24 = and i32 %23, -50331649
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %25) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_get_hw_semaphore.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_get_hw_semaphore, %if.then40)) #6
          to label %cleanup [label %if.then40], !srcloc !177

if.then40:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %netdev42 = getelementptr inbounds %struct.e1000_adapter, ptr %27, i32 0, i32 64
  %28 = ptrtoint ptr %netdev42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_get_hw_semaphore.__UNIQUE_ID_ddebug400, ptr noundef %29, ptr noundef nonnull @.str.44) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.then26, %for.end.cleanup_crit_edge, %if.then10, %do.body5
  %retval.0 = phi i32 [ -1, %if.then10 ], [ -1, %if.then40 ], [ 0, %for.end.cleanup_crit_edge ], [ -1, %do.body5 ], [ -1, %if.then26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_put_hw_semaphore(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 23376
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %3 = and i32 %2, -50331649
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_auto_rd_done(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %3 = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %7 = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %8 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %11 = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.2 = icmp eq i32 %11, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %15 = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.3 = icmp eq i32 %15, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %16 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %19 = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.4 = icmp eq i32 %19, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %20 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %23 = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.5 = icmp eq i32 %23, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %27 = and i32 %26, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.6 = icmp eq i32 %27, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.cleanup_crit_edge

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %28 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %31 = and i32 %30, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.7 = icmp eq i32 %31, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.cleanup_crit_edge

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %32 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %33, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %35 = and i32 %34, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.8 = icmp eq i32 %35, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %36 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %37, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %39 = and i32 %38, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.9 = icmp eq i32 %39, 0
  br i1 %tobool.not.9, label %do.body3, label %if.end.8.cleanup_crit_edge

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body3:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_get_auto_rd_done.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_get_auto_rd_done, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !177

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %41, i32 0, i32 64
  %42 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_get_auto_rd_done.__UNIQUE_ID_ddebug401, ptr noundef %43, ptr noundef nonnull @.str.46) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body3, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %if.then8 ], [ -9, %do.body3 ], [ 0, %if.end.8.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_valid_led_default(ptr noundef %hw, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_valid_led_default.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_valid_led_default, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !177

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_valid_led_default.__UNIQUE_ID_ddebug402, ptr noundef %5, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %7, label %if.end9.cleanup_crit_edge [
    i16 0, label %if.end9.if.then14_crit_edge
    i16 -1, label %if.end9.if.then14_crit_edge22
  ]

if.end9.if.then14_crit_edge22:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end9.if.then14_crit_edge, %if.end9.if.then14_crit_edge22
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -30447, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_id_led_init_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !174
  %valid_led_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %1 = ptrtoint ptr %valid_led_default to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %valid_led_default, align 4
  %call = call i32 %2(ptr noundef %hw, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 3584
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  %6 = call i32 @llvm.bswap.i32(i32 %5) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %ledctl_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %ledctl_default to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ledctl_default, align 4
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %ledctl_mode1, align 4
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %ledctl_mode2, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %conv6 = zext i16 %11 to i32
  %conv8 = and i32 %conv6, 15
  %12 = zext i32 %conv8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %conv8, label %if.end.for.inc_crit_edge [
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 5, label %if.end.sw.epilog_crit_edge138
    i32 6, label %if.end.sw.epilog_crit_edge139
    i32 7, label %if.end.sw.bb19_crit_edge
    i32 8, label %if.end.sw.bb19_crit_edge140
    i32 9, label %if.end.sw.bb19_crit_edge141
    i32 2, label %if.end.for.inc.sink.split_crit_edge
    i32 3, label %sw.bb44
  ]

if.end.for.inc.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.end.sw.bb19_crit_edge141:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end.sw.bb19_crit_edge140:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end.sw.bb19_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end.sw.epilog_crit_edge139:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.sw.epilog_crit_edge138:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb19:                                          ; preds = %if.end.sw.bb19_crit_edge, %if.end.sw.bb19_crit_edge140, %if.end.sw.bb19_crit_edge141
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge138, %if.end.sw.epilog_crit_edge139
  %.sink = phi i32 [ 15, %sw.bb19 ], [ 14, %if.end.sw.epilog_crit_edge ], [ 14, %if.end.sw.epilog_crit_edge138 ], [ 14, %if.end.sw.epilog_crit_edge139 ]
  %13 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ledctl_mode1, align 4
  %and25 = and i32 %14, -256
  %or30 = or i32 %and25, %.sink
  store i32 %or30, ptr %ledctl_mode1, align 4
  %switch.tableidx = add nsw i32 %conv8, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 5
  br i1 %15, label %switch.hole_check, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc_crit_edge, label %switch.lookup

switch.hole_check.for.inc_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.e1000e_id_led_init_generic, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %switch.lookup, %sw.bb44, %if.end.for.inc.sink.split_crit_edge
  %.sink97 = phi i32 [ 15, %sw.bb44 ], [ 14, %if.end.for.inc.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %18 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ledctl_mode2, align 4
  %and38 = and i32 %19, -256
  %or43 = or i32 %and38, %.sink97
  store i32 %or43, ptr %ledctl_mode2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %switch.hole_check.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %shr.1 = lshr i32 %conv6, 4
  %conv8.1 = and i32 %shr.1, 15
  %20 = zext i32 %conv8.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %conv8.1, label %for.inc.for.inc.1_crit_edge [
    i32 4, label %for.inc.sw.bb.1_crit_edge
    i32 5, label %for.inc.sw.bb.1_crit_edge142
    i32 6, label %for.inc.sw.bb.1_crit_edge143
    i32 7, label %for.inc.sw.epilog.1_crit_edge
    i32 8, label %for.inc.sw.epilog.1_crit_edge144
    i32 9, label %for.inc.sw.epilog.1_crit_edge145
    i32 2, label %for.inc.for.inc.1.sink.split_crit_edge
    i32 3, label %sw.bb44.1
  ]

for.inc.for.inc.1.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.sink.split

for.inc.sw.epilog.1_crit_edge145:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.1

for.inc.sw.epilog.1_crit_edge144:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.1

for.inc.sw.epilog.1_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.1

for.inc.sw.bb.1_crit_edge143:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge142:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc.sw.bb.1_crit_edge, %for.inc.sw.bb.1_crit_edge142, %for.inc.sw.bb.1_crit_edge143
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.bb.1, %for.inc.sw.epilog.1_crit_edge, %for.inc.sw.epilog.1_crit_edge144, %for.inc.sw.epilog.1_crit_edge145
  %.sink99 = phi i32 [ 3584, %sw.bb.1 ], [ 3840, %for.inc.sw.epilog.1_crit_edge ], [ 3840, %for.inc.sw.epilog.1_crit_edge144 ], [ 3840, %for.inc.sw.epilog.1_crit_edge145 ]
  %21 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ledctl_mode1, align 4
  %and14.1 = and i32 %22, -65281
  %or.1 = or i32 %and14.1, %.sink99
  store i32 %or.1, ptr %ledctl_mode1, align 4
  %switch.tableidx112 = add nsw i32 %conv8.1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx112)
  %23 = icmp ult i32 %switch.tableidx112, 5
  br i1 %23, label %switch.hole_check113, label %sw.epilog.1.for.inc.1_crit_edge

sw.epilog.1.for.inc.1_crit_edge:                  ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

sw.bb44.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.sink.split

switch.hole_check113:                             ; preds = %sw.epilog.1
  %switch.maskindex115 = trunc i32 %switch.tableidx112 to i8
  %switch.shifted116 = lshr i8 27, %switch.maskindex115
  %24 = and i8 %switch.shifted116, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %switch.lobit117.not = icmp eq i8 %24, 0
  br i1 %switch.lobit117.not, label %switch.hole_check113.for.inc.1_crit_edge, label %switch.lookup114

switch.hole_check113.for.inc.1_crit_edge:         ; preds = %switch.hole_check113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

switch.lookup114:                                 ; preds = %switch.hole_check113
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep118 = getelementptr inbounds [5 x i32], ptr @switch.table.e1000e_id_led_init_generic.59, i32 0, i32 %switch.tableidx112
  %25 = ptrtoint ptr %switch.gep118 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load119 = load i32, ptr %switch.gep118, align 4
  br label %for.inc.1.sink.split

for.inc.1.sink.split:                             ; preds = %switch.lookup114, %sw.bb44.1, %for.inc.for.inc.1.sink.split_crit_edge
  %.sink101 = phi i32 [ 3840, %sw.bb44.1 ], [ 3584, %for.inc.for.inc.1.sink.split_crit_edge ], [ %switch.load119, %switch.lookup114 ]
  %26 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ledctl_mode2, align 4
  %and50.1 = and i32 %27, -65281
  %or55.1 = or i32 %and50.1, %.sink101
  store i32 %or55.1, ptr %ledctl_mode2, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %switch.hole_check113.for.inc.1_crit_edge, %sw.epilog.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %shr.2 = lshr i32 %conv6, 8
  %conv8.2 = and i32 %shr.2, 15
  %28 = zext i32 %conv8.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %conv8.2, label %for.inc.1.for.inc.2_crit_edge [
    i32 4, label %for.inc.1.sw.bb.2_crit_edge
    i32 5, label %for.inc.1.sw.bb.2_crit_edge146
    i32 6, label %for.inc.1.sw.bb.2_crit_edge147
    i32 7, label %for.inc.1.sw.epilog.2_crit_edge
    i32 8, label %for.inc.1.sw.epilog.2_crit_edge148
    i32 9, label %for.inc.1.sw.epilog.2_crit_edge149
    i32 2, label %for.inc.1.for.inc.2.sink.split_crit_edge
    i32 3, label %sw.bb44.2
  ]

for.inc.1.for.inc.2.sink.split_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.sink.split

for.inc.1.sw.epilog.2_crit_edge149:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.2

for.inc.1.sw.epilog.2_crit_edge148:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.2

for.inc.1.sw.epilog.2_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.2

for.inc.1.sw.bb.2_crit_edge147:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge146:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1.sw.bb.2_crit_edge, %for.inc.1.sw.bb.2_crit_edge146, %for.inc.1.sw.bb.2_crit_edge147
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %sw.bb.2, %for.inc.1.sw.epilog.2_crit_edge, %for.inc.1.sw.epilog.2_crit_edge148, %for.inc.1.sw.epilog.2_crit_edge149
  %.sink103 = phi i32 [ 917504, %sw.bb.2 ], [ 983040, %for.inc.1.sw.epilog.2_crit_edge ], [ 983040, %for.inc.1.sw.epilog.2_crit_edge148 ], [ 983040, %for.inc.1.sw.epilog.2_crit_edge149 ]
  %29 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ledctl_mode1, align 4
  %and14.2 = and i32 %30, -16711681
  %or.2 = or i32 %and14.2, %.sink103
  store i32 %or.2, ptr %ledctl_mode1, align 4
  %switch.tableidx121 = add nsw i32 %conv8.2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx121)
  %31 = icmp ult i32 %switch.tableidx121, 5
  br i1 %31, label %switch.hole_check122, label %sw.epilog.2.for.inc.2_crit_edge

sw.epilog.2.for.inc.2_crit_edge:                  ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

sw.bb44.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.sink.split

switch.hole_check122:                             ; preds = %sw.epilog.2
  %switch.maskindex124 = trunc i32 %switch.tableidx121 to i8
  %switch.shifted125 = lshr i8 27, %switch.maskindex124
  %32 = and i8 %switch.shifted125, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %switch.lobit126.not = icmp eq i8 %32, 0
  br i1 %switch.lobit126.not, label %switch.hole_check122.for.inc.2_crit_edge, label %switch.lookup123

switch.hole_check122.for.inc.2_crit_edge:         ; preds = %switch.hole_check122
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

switch.lookup123:                                 ; preds = %switch.hole_check122
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep127 = getelementptr inbounds [5 x i32], ptr @switch.table.e1000e_id_led_init_generic.60, i32 0, i32 %switch.tableidx121
  %33 = ptrtoint ptr %switch.gep127 to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load128 = load i32, ptr %switch.gep127, align 4
  br label %for.inc.2.sink.split

for.inc.2.sink.split:                             ; preds = %switch.lookup123, %sw.bb44.2, %for.inc.1.for.inc.2.sink.split_crit_edge
  %.sink105 = phi i32 [ 983040, %sw.bb44.2 ], [ 917504, %for.inc.1.for.inc.2.sink.split_crit_edge ], [ %switch.load128, %switch.lookup123 ]
  %34 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ledctl_mode2, align 4
  %and50.2 = and i32 %35, -16711681
  %or55.2 = or i32 %and50.2, %.sink105
  store i32 %or55.2, ptr %ledctl_mode2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.2.sink.split, %switch.hole_check122.for.inc.2_crit_edge, %sw.epilog.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %shr.3 = lshr i32 %conv6, 12
  %36 = zext i32 %shr.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %shr.3, label %for.inc.2.cleanup_crit_edge [
    i32 4, label %for.inc.2.sw.bb.3_crit_edge
    i32 5, label %for.inc.2.sw.bb.3_crit_edge150
    i32 6, label %for.inc.2.sw.bb.3_crit_edge151
    i32 7, label %for.inc.2.sw.epilog.3_crit_edge
    i32 8, label %for.inc.2.sw.epilog.3_crit_edge152
    i32 9, label %for.inc.2.sw.epilog.3_crit_edge153
    i32 2, label %for.inc.2.cleanup.sink.split_crit_edge
    i32 3, label %sw.bb44.3
  ]

for.inc.2.cleanup.sink.split_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.inc.2.sw.epilog.3_crit_edge153:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.3

for.inc.2.sw.epilog.3_crit_edge152:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.3

for.inc.2.sw.epilog.3_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.3

for.inc.2.sw.bb.3_crit_edge151:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge150:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.3:                                          ; preds = %for.inc.2.sw.bb.3_crit_edge, %for.inc.2.sw.bb.3_crit_edge150, %for.inc.2.sw.bb.3_crit_edge151
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.bb.3, %for.inc.2.sw.epilog.3_crit_edge, %for.inc.2.sw.epilog.3_crit_edge152, %for.inc.2.sw.epilog.3_crit_edge153
  %.sink107 = phi i32 [ 234881024, %sw.bb.3 ], [ 251658240, %for.inc.2.sw.epilog.3_crit_edge ], [ 251658240, %for.inc.2.sw.epilog.3_crit_edge152 ], [ 251658240, %for.inc.2.sw.epilog.3_crit_edge153 ]
  %37 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ledctl_mode1, align 4
  %and14.3 = and i32 %38, 16777215
  %or.3 = or i32 %and14.3, %.sink107
  store i32 %or.3, ptr %ledctl_mode1, align 4
  %switch.tableidx130 = add nsw i32 %shr.3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx130)
  %39 = icmp ult i32 %switch.tableidx130, 5
  br i1 %39, label %switch.hole_check131, label %sw.epilog.3.cleanup_crit_edge

sw.epilog.3.cleanup_crit_edge:                    ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb44.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

switch.hole_check131:                             ; preds = %sw.epilog.3
  %switch.maskindex133 = trunc i32 %switch.tableidx130 to i8
  %switch.shifted134 = lshr i8 27, %switch.maskindex133
  %40 = and i8 %switch.shifted134, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.lobit135.not = icmp eq i8 %40, 0
  br i1 %switch.lobit135.not, label %switch.hole_check131.cleanup_crit_edge, label %switch.lookup132

switch.hole_check131.cleanup_crit_edge:           ; preds = %switch.hole_check131
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup132:                                 ; preds = %switch.hole_check131
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep136 = getelementptr inbounds [5 x i32], ptr @switch.table.e1000e_id_led_init_generic.61, i32 0, i32 %switch.tableidx130
  %41 = ptrtoint ptr %switch.gep136 to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load137 = load i32, ptr %switch.gep136, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup132, %sw.bb44.3, %for.inc.2.cleanup.sink.split_crit_edge
  %.sink109 = phi i32 [ 251658240, %sw.bb44.3 ], [ 234881024, %for.inc.2.cleanup.sink.split_crit_edge ], [ %switch.load137, %switch.lookup132 ]
  %42 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ledctl_mode2, align 4
  %and38.3 = and i32 %43, 16777215
  %or43.3 = or i32 %and38.3, %.sink109
  store i32 %or43.3, ptr %ledctl_mode2, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %switch.hole_check131.cleanup_crit_edge, %sw.epilog.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_setup_led_generic(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_led = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 17
  %0 = ptrtoint ptr %setup_led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup_led, align 4
  %cmp.not = icmp eq ptr %1, @e1000e_setup_led_generic
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %media_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 2, label %if.then2
    i32 1, label %if.then7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 3584
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %ledctl_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 5
  %9 = ptrtoint ptr %ledctl_default to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ledctl_default, align 4
  %and = and i32 %8, -208
  %or = or i32 %and, 15
  br label %cleanup.sink.split

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ledctl_mode1, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7, %if.then2
  %or.sink = phi i32 [ %or, %if.then2 ], [ %11, %if.then7 ]
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3584, i32 noundef %or.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_cleanup_led_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ledctl_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %ledctl_default to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ledctl_default, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3584, i32 noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_blink_led_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.if.end15_crit_edge, label %if.else

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.else:                                          ; preds = %entry
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ledctl_mode2, align 4
  %ledctl_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %ledctl_default to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ledctl_default, align 4
  %and = and i32 %3, 15
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and)
  %cmp7 = icmp eq i32 %and, 14
  %or.cond = select i1 %tobool.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.else.if.then12_crit_edge, label %lor.lhs.false

if.else.if.then12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.else
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp11 = icmp eq i32 %and, 15
  %or.cond29 = select i1 %tobool.not.not, i1 %cmp11, i1 false
  br i1 %or.cond29, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.else.if.then12_crit_edge
  %and13 = and i32 %3, -144
  %or = or i32 %and13, 142
  br label %if.end

if.end:                                           ; preds = %if.then12, %lor.lhs.false.if.end_crit_edge
  %ledctl_blink.1 = phi i32 [ %or, %if.then12 ], [ %3, %lor.lhs.false.if.end_crit_edge ]
  %shr.1 = lshr i32 %3, 8
  %and.1 = and i32 %shr.1, 15
  %7 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and.1)
  %cmp7.1 = icmp eq i32 %and.1, 14
  %or.cond.1 = select i1 %tobool.not.1, i1 %cmp7.1, i1 false
  br i1 %or.cond.1, label %if.end.if.then12.1_crit_edge, label %lor.lhs.false.1

if.end.if.then12.1_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.1

lor.lhs.false.1:                                  ; preds = %if.end
  %tobool.not.not.1 = xor i1 %tobool.not.1, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.1)
  %cmp11.1 = icmp eq i32 %and.1, 15
  %or.cond29.1 = select i1 %tobool.not.not.1, i1 %cmp11.1, i1 false
  br i1 %or.cond29.1, label %lor.lhs.false.1.if.then12.1_crit_edge, label %lor.lhs.false.1.if.end.1_crit_edge

lor.lhs.false.1.if.end.1_crit_edge:               ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

lor.lhs.false.1.if.then12.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.1

if.then12.1:                                      ; preds = %lor.lhs.false.1.if.then12.1_crit_edge, %if.end.if.then12.1_crit_edge
  %and13.1 = and i32 %ledctl_blink.1, -36609
  %or.1 = or i32 %and13.1, 36352
  br label %if.end.1

if.end.1:                                         ; preds = %if.then12.1, %lor.lhs.false.1.if.end.1_crit_edge
  %ledctl_blink.1.1 = phi i32 [ %or.1, %if.then12.1 ], [ %ledctl_blink.1, %lor.lhs.false.1.if.end.1_crit_edge ]
  %shr.2 = lshr i32 %3, 16
  %and.2 = and i32 %shr.2, 15
  %8 = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.2 = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and.2)
  %cmp7.2 = icmp eq i32 %and.2, 14
  %or.cond.2 = select i1 %tobool.not.2, i1 %cmp7.2, i1 false
  br i1 %or.cond.2, label %if.end.1.if.then12.2_crit_edge, label %lor.lhs.false.2

if.end.1.if.then12.2_crit_edge:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.2

lor.lhs.false.2:                                  ; preds = %if.end.1
  %tobool.not.not.2 = xor i1 %tobool.not.2, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.2)
  %cmp11.2 = icmp eq i32 %and.2, 15
  %or.cond29.2 = select i1 %tobool.not.not.2, i1 %cmp11.2, i1 false
  br i1 %or.cond29.2, label %lor.lhs.false.2.if.then12.2_crit_edge, label %lor.lhs.false.2.if.end.2_crit_edge

lor.lhs.false.2.if.end.2_crit_edge:               ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

lor.lhs.false.2.if.then12.2_crit_edge:            ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.2

if.then12.2:                                      ; preds = %lor.lhs.false.2.if.then12.2_crit_edge, %if.end.1.if.then12.2_crit_edge
  %and13.2 = and i32 %ledctl_blink.1.1, -9371649
  %or.2 = or i32 %and13.2, 9306112
  br label %if.end.2

if.end.2:                                         ; preds = %if.then12.2, %lor.lhs.false.2.if.end.2_crit_edge
  %ledctl_blink.1.2 = phi i32 [ %or.2, %if.then12.2 ], [ %ledctl_blink.1.1, %lor.lhs.false.2.if.end.2_crit_edge ]
  %shr.3 = lshr i32 %3, 24
  %and.3 = and i32 %shr.3, 15
  %9 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.3 = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and.3)
  %cmp7.3 = icmp eq i32 %and.3, 14
  %or.cond.3 = select i1 %tobool.not.3, i1 %cmp7.3, i1 false
  br i1 %or.cond.3, label %if.end.2.if.then12.3_crit_edge, label %lor.lhs.false.3

if.end.2.if.then12.3_crit_edge:                   ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.3

lor.lhs.false.3:                                  ; preds = %if.end.2
  %tobool.not.not.3 = xor i1 %tobool.not.3, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.3)
  %cmp11.3 = icmp eq i32 %and.3, 15
  %or.cond29.3 = select i1 %tobool.not.not.3, i1 %cmp11.3, i1 false
  br i1 %or.cond29.3, label %lor.lhs.false.3.if.then12.3_crit_edge, label %lor.lhs.false.3.if.end15_crit_edge

lor.lhs.false.3.if.end15_crit_edge:               ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

lor.lhs.false.3.if.then12.3_crit_edge:            ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.3

if.then12.3:                                      ; preds = %lor.lhs.false.3.if.then12.3_crit_edge, %if.end.2.if.then12.3_crit_edge
  %and13.3 = and i32 %ledctl_blink.1.2, 1895825407
  %or.3 = or i32 %and13.3, -1912602624
  br label %if.end15

if.end15:                                         ; preds = %if.then12.3, %lor.lhs.false.3.if.end15_crit_edge, %entry.if.end15_crit_edge
  %ledctl_blink.2 = phi i32 [ 142, %entry.if.end15_crit_edge ], [ %or.3, %if.then12.3 ], [ %ledctl_blink.1.2, %lor.lhs.false.3.if.end15_crit_edge ]
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3584, i32 noundef %ledctl_blink.2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_led_on_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %6 = and i32 %5, -17409
  %7 = or i32 %6, 16384
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %8) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ledctl_mode2, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3584, i32 noundef %10) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_led_off_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %6 = or i32 %5, 17408
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %7) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ledctl_mode1, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3584, i32 noundef %9) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_set_pcie_no_snoop(ptr noundef %hw, i32 noundef %no_snoop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_snoop)
  %tobool.not = icmp eq i32 %no_snoop, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 23296
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %3 = and i32 %2, -1056964609
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or = or i32 %4, %no_snoop
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23296, i32 noundef %or) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_disable_pcie_master(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %3 = or i32 %2, 67108864
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %4) #6
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %timeout.024 = phi i32 [ 800, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %5 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %8 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %dec = add nsw i32 %timeout.024, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body5.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body5.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_disable_pcie_master.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_disable_pcie_master, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !177

if.then10:                                        ; preds = %do.body5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %10, i32 0, i32 64
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_disable_pcie_master.__UNIQUE_ID_ddebug403, ptr noundef %12, ptr noundef nonnull @.str.49) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body5.critedge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -10, %if.then10 ], [ -10, %do.body5.critedge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_reset_adaptive(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adaptive_ifs = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 20
  %0 = ptrtoint ptr %adaptive_ifs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %adaptive_ifs, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_reset_adaptive.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_reset_adaptive, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !177

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_reset_adaptive.__UNIQUE_ID_ddebug404, ptr noundef %5, ptr noundef nonnull @.str.51) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %current_ifs_val = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 11
  %6 = ptrtoint ptr %current_ifs_val to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %current_ifs_val, align 4
  %ifs_min_val = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 13
  %7 = ptrtoint ptr %ifs_min_val to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 40, ptr %ifs_min_val, align 4
  %ifs_max_val = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %ifs_max_val to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 80, ptr %ifs_max_val, align 2
  %ifs_step_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 15
  %9 = ptrtoint ptr %ifs_step_size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 10, ptr %ifs_step_size, align 4
  %ifs_ratio = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 14
  %10 = ptrtoint ptr %ifs_ratio to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %ifs_ratio, align 2
  %in_ifs_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 26
  %11 = ptrtoint ptr %in_ifs_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %in_ifs_mode, align 1
  tail call void @__ew32(ptr noundef %hw, i32 noundef 1112, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %do.body2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_update_adaptive(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adaptive_ifs = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 20
  %0 = ptrtoint ptr %adaptive_ifs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %adaptive_ifs, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_update_adaptive.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_update_adaptive, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !177

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_update_adaptive.__UNIQUE_ID_ddebug405, ptr noundef %5, ptr noundef nonnull @.str.51) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %collision_delta = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %collision_delta to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %collision_delta, align 4
  %ifs_ratio = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 14
  %8 = ptrtoint ptr %ifs_ratio to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ifs_ratio, align 2
  %conv = zext i16 %9 to i32
  %mul = mul i32 %7, %conv
  %tx_packet_delta = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 9
  %10 = ptrtoint ptr %tx_packet_delta to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_packet_delta, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %11)
  %cmp = icmp ugt i32 %mul, %11
  br i1 %cmp, label %if.then11, label %if.else34

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %11)
  %cmp13 = icmp ugt i32 %11, 1000
  br i1 %cmp13, label %if.then15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.then11
  %in_ifs_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 26
  %12 = ptrtoint ptr %in_ifs_mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %in_ifs_mode, align 1
  %current_ifs_val = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 11
  %13 = ptrtoint ptr %current_ifs_val to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %current_ifs_val, align 4
  %ifs_max_val = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %ifs_max_val to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ifs_max_val, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp18 = icmp ult i16 %14, %16
  br i1 %cmp18, label %if.then20, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool22.not = icmp eq i16 %14, 0
  br i1 %tobool22.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %ifs_min_val = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 13
  %17 = ptrtoint ptr %ifs_min_val to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ifs_min_val, align 4
  br label %if.end29

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %ifs_step_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 15
  %19 = ptrtoint ptr %ifs_step_size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ifs_step_size, align 4
  %add = add i16 %20, %14
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23
  %storemerge = phi i16 [ %18, %if.then23 ], [ %add, %if.else ]
  %21 = ptrtoint ptr %current_ifs_val to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %storemerge, ptr %current_ifs_val, align 4
  %conv31 = zext i16 %storemerge to i32
  tail call void @__ew32(ptr noundef %hw, i32 noundef 1112, i32 noundef %conv31) #6
  br label %cleanup

if.else34:                                        ; preds = %if.end9
  %in_ifs_mode35 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 26
  %22 = ptrtoint ptr %in_ifs_mode35 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %in_ifs_mode35, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp ne i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %11)
  %cmp39 = icmp ult i32 %11, 1001
  %or.cond = select i1 %tobool36.not, i1 %cmp39, i1 false
  br i1 %or.cond, label %if.then41, label %if.else34.cleanup_crit_edge

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  %current_ifs_val42 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 11
  %24 = ptrtoint ptr %current_ifs_val42 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %current_ifs_val42, align 4
  %25 = ptrtoint ptr %in_ifs_mode35 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %in_ifs_mode35, align 1
  tail call void @__ew32(ptr noundef %hw, i32 noundef 1112, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.else34.cleanup_crit_edge, %if.end29, %if.then15.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then6, %do.body2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !33, !34, !36, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !97, !98, !100, !101, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !123, !124, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !159, !161, !162, !164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 118, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @e1000e_init_rx_addrs.__UNIQUE_ID_ddebug353, !1, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 123, i32 2}
!8 = !{ptr @e1000e_init_rx_addrs.__UNIQUE_ID_ddebug354, !7, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 158, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug355, !10, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!13 = !{ptr @e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug356, !14, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 173, i32 4}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 183, i32 3}
!17 = !{ptr @e1000_check_alt_mac_addr_generic.__UNIQUE_ID_ddebug357, !16, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 443, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @e1000e_check_for_copper_link.__UNIQUE_ID_ddebug358, !19, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 485, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug359, !23, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!26 = !{ptr @e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug360, !27, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 498, i32 4}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 507, i32 3}
!30 = !{ptr @e1000e_check_for_fiber_link.__UNIQUE_ID_ddebug361, !29, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 548, i32 3}
!33 = !{ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug362, !32, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!34 = !{ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug363, !35, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 561, i32 4}
!36 = !{ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug364, !37, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 570, i32 3}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 586, i32 5}
!40 = !{ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug365, !39, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 590, i32 4}
!43 = !{ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug366, !42, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 603, i32 6}
!46 = !{ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug367, !45, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 606, i32 6}
!49 = !{ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug368, !48, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 610, i32 5}
!52 = !{ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug369, !51, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 614, i32 4}
!55 = !{ptr @e1000e_check_for_serdes_link.__UNIQUE_ID_ddebug370, !54, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 692, i32 2}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @e1000e_setup_link_generic.__UNIQUE_ID_ddebug372, !57, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 704, i32 2}
!62 = !{ptr @e1000e_setup_link_generic.__UNIQUE_ID_ddebug373, !61, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 856, i32 2}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @e1000e_setup_fiber_serdes_link.__UNIQUE_ID_ddebug378, !64, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 870, i32 3}
!69 = !{ptr @e1000e_setup_fiber_serdes_link.__UNIQUE_ID_ddebug379, !68, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 964, i32 2}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @e1000e_force_mac_fc.__UNIQUE_ID_ddebug380, !71, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 982, i32 3}
!76 = !{ptr @e1000e_force_mac_fc.__UNIQUE_ID_ddebug381, !75, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1023, i32 3}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug382, !78, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1045, i32 4}
!83 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug383, !82, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1105, i32 5}
!86 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug384, !85, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1108, i32 5}
!89 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug385, !88, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1123, i32 4}
!92 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug386, !91, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!93 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug387, !94, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1137, i32 4}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1143, i32 4}
!97 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug388, !96, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1152, i32 4}
!100 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug389, !99, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!101 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug390, !102, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1164, i32 4}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1182, i32 4}
!105 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug391, !104, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!106 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug392, !107, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1238, i32 5}
!108 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug393, !109, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1241, i32 5}
!110 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug394, !111, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1256, i32 4}
!112 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug395, !113, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1270, i32 4}
!114 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug396, !115, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1276, i32 4}
!116 = !{ptr @e1000e_config_fc_after_link_up.__UNIQUE_ID_ddebug397, !117, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1288, i32 4}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1323, i32 2}
!120 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @e1000e_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug398, !119, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!122 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1371, i32 3}
!126 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @e1000e_get_hw_semaphore.__UNIQUE_ID_ddebug399, !125, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1390, i32 3}
!130 = !{ptr @e1000e_get_hw_semaphore.__UNIQUE_ID_ddebug400, !129, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1430, i32 3}
!133 = !{ptr @.str.46, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @e1000e_get_auto_rd_done.__UNIQUE_ID_ddebug401, !132, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1451, i32 3}
!137 = !{ptr @e1000e_valid_led_default.__UNIQUE_ID_ddebug402, !136, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1714, i32 3}
!140 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @e1000e_disable_pcie_master.__UNIQUE_ID_ddebug403, !139, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1732, i32 3}
!144 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @e1000e_reset_adaptive.__UNIQUE_ID_ddebug404, !143, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 1758, i32 3}
!148 = !{ptr @e1000e_update_adaptive.__UNIQUE_ID_ddebug405, !147, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 644, i32 3}
!151 = !{ptr @e1000_set_default_fc_generic.__UNIQUE_ID_ddebug371, !150, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 770, i32 3}
!154 = !{ptr @e1000_commit_fc_settings_generic.__UNIQUE_ID_ddebug374, !153, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!155 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 806, i32 3}
!157 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug375, !156, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!159 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 815, i32 4}
!161 = !{ptr @e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug376, !160, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/intel/e1000e/mac.c", i32 821, i32 3}
!164 = !{ptr @e1000_poll_fiber_serdes_link_generic.__UNIQUE_ID_ddebug377, !163, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{!"auto-init"}
!175 = !{i64 1943378}
!176 = !{i64 2156952227}
!177 = !{i64 2148943580, i64 2148943585, i64 2148943598, i64 2148943642, i64 2148943676, i64 2148943697}
!178 = !{i8 0, i8 2}
