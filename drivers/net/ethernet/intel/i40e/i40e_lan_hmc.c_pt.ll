; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.i40e_context_ele = type { i16, i16, i16, i16 }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
%struct.i40e_hmc_obj_info = type { i64, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.211, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.211 = type { ptr }
%struct.i40e_hmc_lan_create_obj_info = type { ptr, i32, i32, i32, i32, i64 }
%struct.i40e_hmc_sd_entry = type { i32, i8, %union.anon.4 }
%union.anon.4 = type { %struct.i40e_hmc_pd_table }
%struct.i40e_hmc_pd_table = type { %struct.i40e_dma_mem, ptr, %struct.i40e_virt_mem, i32, i32 }
%struct.i40e_hmc_lan_delete_obj_info = type { ptr, i32, i32, i32 }
%struct.i40e_hmc_pd_entry = type { %struct.i40e_hmc_bp, i32, i8, i8 }
%struct.i40e_hmc_bp = type { i32, %struct.i40e_dma_mem, i32, i32 }

@i40e_init_lan_hmc.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i40e\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i40e_init_lan_hmc\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"i40e_init_lan_hmc: Tx context: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@i40e_init_lan_hmc.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"i40e_init_lan_hmc: Rx context: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@i40e_init_lan_hmc.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"i40e_init_lan_hmc: FCoE context: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@i40e_init_lan_hmc.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"i40e_init_lan_hmc: FCoE filter: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@i40e_configure_lan_hmc.__UNIQUE_ID_ddebug693 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_configure_lan_hmc\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"i40e_configure_lan_hmc: Unknown SD type: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@i40e_hmc_txq_ce_info = internal global { [19 x %struct.i40e_context_ele], [40 x i8] } { [19 x %struct.i40e_context_ele] [%struct.i40e_context_ele { i16 0, i16 2, i16 13, i16 0 }, %struct.i40e_context_ele { i16 2, i16 1, i16 1, i16 30 }, %struct.i40e_context_ele { i16 8, i16 8, i16 57, i16 32 }, %struct.i40e_context_ele { i16 16, i16 1, i16 1, i16 89 }, %struct.i40e_context_ele { i16 17, i16 1, i16 1, i16 90 }, %struct.i40e_context_ele { i16 18, i16 1, i16 1, i16 91 }, %struct.i40e_context_ele { i16 19, i16 1, i16 1, i16 92 }, %struct.i40e_context_ele { i16 22, i16 1, i16 8, i16 96 }, %struct.i40e_context_ele { i16 20, i16 2, i16 13, i16 128 }, %struct.i40e_context_ele { i16 23, i16 1, i16 1, i16 160 }, %struct.i40e_context_ele { i16 24, i16 2, i16 13, i16 161 }, %struct.i40e_context_ele { i16 26, i16 1, i16 1, i16 174 }, %struct.i40e_context_ele { i16 27, i16 1, i16 1, i16 175 }, %struct.i40e_context_ele { i16 28, i16 1, i16 1, i16 176 }, %struct.i40e_context_ele { i16 32, i16 8, i16 64, i16 192 }, %struct.i40e_context_ele { i16 40, i16 4, i16 32, i16 896 }, %struct.i40e_context_ele { i16 44, i16 2, i16 10, i16 980 }, %struct.i40e_context_ele { i16 46, i16 1, i16 1, i16 990 }, %struct.i40e_context_ele zeroinitializer], [40 x i8] zeroinitializer }, align 32
@i40e_hmc_rxq_ce_info = internal global { [22 x %struct.i40e_context_ele], [48 x i8] } { [22 x %struct.i40e_context_ele] [%struct.i40e_context_ele { i16 0, i16 2, i16 13, i16 0 }, %struct.i40e_context_ele { i16 2, i16 2, i16 8, i16 13 }, %struct.i40e_context_ele { i16 8, i16 8, i16 57, i16 32 }, %struct.i40e_context_ele { i16 16, i16 2, i16 13, i16 89 }, %struct.i40e_context_ele { i16 18, i16 2, i16 7, i16 102 }, %struct.i40e_context_ele { i16 20, i16 2, i16 5, i16 109 }, %struct.i40e_context_ele { i16 22, i16 1, i16 2, i16 114 }, %struct.i40e_context_ele { i16 23, i16 1, i16 1, i16 116 }, %struct.i40e_context_ele { i16 24, i16 1, i16 1, i16 117 }, %struct.i40e_context_ele { i16 25, i16 1, i16 1, i16 118 }, %struct.i40e_context_ele { i16 26, i16 1, i16 1, i16 119 }, %struct.i40e_context_ele { i16 27, i16 1, i16 4, i16 120 }, %struct.i40e_context_ele { i16 28, i16 1, i16 2, i16 124 }, %struct.i40e_context_ele { i16 29, i16 1, i16 1, i16 127 }, %struct.i40e_context_ele { i16 32, i16 4, i16 14, i16 174 }, %struct.i40e_context_ele { i16 36, i16 1, i16 1, i16 193 }, %struct.i40e_context_ele { i16 37, i16 1, i16 1, i16 194 }, %struct.i40e_context_ele { i16 38, i16 1, i16 1, i16 195 }, %struct.i40e_context_ele { i16 39, i16 1, i16 1, i16 196 }, %struct.i40e_context_ele { i16 40, i16 2, i16 3, i16 198 }, %struct.i40e_context_ele { i16 42, i16 1, i16 1, i16 201 }, %struct.i40e_context_ele zeroinitializer], [48 x i8] zeroinitializer }, align 32
@i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i40e_create_lan_hmc_object\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"i40e_create_lan_hmc_object: bad info ptr\0A\00", [54 x i8] zeroinitializer }, align 32
@i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"i40e_create_lan_hmc_object: bad hmc_info ptr\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"i40e_create_lan_hmc_object: bad signature\0A\00", [53 x i8] zeroinitializer }, align 32
@i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"i40e_create_lan_hmc_object: returns error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i40e_delete_lan_hmc_object\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"i40e_delete_hmc_object: bad info ptr\0A\00", [58 x i8] zeroinitializer }, align 32
@i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"i40e_delete_hmc_object: bad info->hmc_info ptr\0A\00", [48 x i8] zeroinitializer }, align 32
@i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"i40e_delete_hmc_object: bad hmc_info->signature\0A\00", [47 x i8] zeroinitializer }, align 32
@i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.18, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"i40e_delete_hmc_object: bad sd_entry\0A\00", [58 x i8] zeroinitializer }, align 32
@i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.19, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"i40e_delete_hmc_object: bad hmc_info->hmc_obj\0A\00", [49 x i8] zeroinitializer }, align 32
@i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.20, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"i40e_delete_hmc_object: returns error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.20, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@i40e_hmc_get_object_va.__UNIQUE_ID_ddebug701 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_hmc_get_object_va\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"i40e_hmc_get_object_va: bad hmc_info ptr\0A\00", [54 x i8] zeroinitializer }, align 32
@i40e_hmc_get_object_va.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"i40e_hmc_get_object_va: bad hmc_info->hmc_obj ptr\0A\00", [45 x i8] zeroinitializer }, align 32
@i40e_hmc_get_object_va.__UNIQUE_ID_ddebug703 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"i40e_hmc_get_object_va: bad object_base ptr\0A\00", [51 x i8] zeroinitializer }, align 32
@i40e_hmc_get_object_va.__UNIQUE_ID_ddebug704 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 0, i8 -5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"i40e_hmc_get_object_va: bad hmc_info->signature\0A\00", [47 x i8] zeroinitializer }, align 32
@i40e_hmc_get_object_va.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.26, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"i40e_hmc_get_object_va: returns error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 115, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 138, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 161, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 184, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 478, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"i40e_hmc_txq_ce_info\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 672, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"i40e_hmc_rxq_ce_info\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 698, i32 32 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 293, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 298, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 303, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 309, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 534, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 539, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 544, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 550, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 556, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 561, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 991, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 996, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1001, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1006, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [50 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1010, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @i40e_hmc_txq_ce_info, ptr @i40e_hmc_rxq_ce_info, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_hmc_txq_ce_info to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_hmc_rxq_ce_info to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_init_lan_hmc(ptr noundef %hw, i32 noundef %txq_num, i32 noundef %rxq_num, i32 noundef %fcoe_cntx_num, i32 noundef %fcoe_filt_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hmc = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30
  %0 = ptrtoint ptr %hmc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1213027143, ptr %hmc, align 8
  %pf_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 17
  %1 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pf_id, align 2
  %hmc_fn_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 1
  %3 = ptrtoint ptr %hmc_fn_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %hmc_fn_id, align 4
  %hmc_obj_virt_mem = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 4
  %call = tail call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef %hmc_obj_virt_mem, i32 noundef 120) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.init_lan_hmc_out_crit_edge

entry.init_lan_hmc_out_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_lan_hmc_out

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %hmc_obj_virt_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hmc_obj_virt_mem, align 4
  %hmc_obj = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 3
  %6 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %hmc_obj, align 8
  %max_cnt = getelementptr inbounds %struct.i40e_hmc_obj_info, ptr %5, i32 0, i32 1
  %cnt = getelementptr inbounds %struct.i40e_hmc_obj_info, ptr %5, i32 0, i32 2
  %size = getelementptr inbounds %struct.i40e_hmc_obj_info, ptr %5, i32 0, i32 3
  %7 = call ptr @memset(ptr %5, i32 0, i32 24)
  %8 = load ptr, ptr %hmc_obj, align 8
  %arrayidx10 = getelementptr %struct.i40e_hmc_obj_info, ptr %8, i32 1
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 794632
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !84
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %max_cnt13 = getelementptr %struct.i40e_hmc_obj_info, ptr %8, i32 1, i32 1
  %13 = ptrtoint ptr %max_cnt13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max_cnt13, align 8
  %cnt14 = getelementptr %struct.i40e_hmc_obj_info, ptr %8, i32 1, i32 2
  %14 = ptrtoint ptr %cnt14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %txq_num, ptr %cnt14, align 4
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %arrayidx10, align 8
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add.ptr19 = getelementptr i8, ptr %17, i32 794628
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !84
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %sh_prom = zext i32 %19 to i64
  %shl = shl nuw i64 1, %sh_prom
  %size23 = getelementptr %struct.i40e_hmc_obj_info, ptr %8, i32 1, i32 3
  %20 = ptrtoint ptr %size23 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %shl, ptr %size23, align 8
  %21 = ptrtoint ptr %max_cnt13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_cnt13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %txq_num)
  %cmp = icmp ult i32 %22, %txq_num
  br i1 %cmp, label %if.then25, label %if.end37

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_init_lan_hmc.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_init_lan_hmc, %if.then32)) #5
          to label %init_lan_hmc_out [label %if.then32], !srcloc !87

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %max_cnt13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_cnt13, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_init_lan_hmc.__UNIQUE_ID_ddebug676, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %txq_num, i32 noundef %28, i32 noundef -50) #5
  br label %init_lan_hmc_out

if.end37:                                         ; preds = %if.end
  %29 = ptrtoint ptr %max_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_cnt, align 8
  %add = add i32 %30, %22
  store i32 %add, ptr %max_cnt, align 8
  %31 = ptrtoint ptr %cnt14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cnt14, align 4
  %33 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cnt, align 4
  %add42 = add i32 %34, %32
  store i32 %add42, ptr %cnt, align 4
  %35 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hmc_obj, align 8
  %arrayidx45 = getelementptr %struct.i40e_hmc_obj_info, ptr %36, i32 2
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 8
  %add.ptr49 = getelementptr i8, ptr %38, i32 794632
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #5, !srcloc !84
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %max_cnt53 = getelementptr %struct.i40e_hmc_obj_info, ptr %36, i32 2, i32 1
  %41 = ptrtoint ptr %max_cnt53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_cnt53, align 8
  %cnt54 = getelementptr %struct.i40e_hmc_obj_info, ptr %36, i32 2, i32 2
  %42 = ptrtoint ptr %cnt54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %rxq_num, ptr %cnt54, align 4
  %43 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hmc_obj, align 8
  %arrayidx57 = getelementptr %struct.i40e_hmc_obj_info, ptr %44, i32 1
  %45 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx57, align 8
  %cnt62 = getelementptr %struct.i40e_hmc_obj_info, ptr %44, i32 1, i32 2
  %47 = ptrtoint ptr %cnt62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cnt62, align 4
  %conv = zext i32 %48 to i64
  %size66 = getelementptr %struct.i40e_hmc_obj_info, ptr %44, i32 1, i32 3
  %49 = ptrtoint ptr %size66 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %size66, align 8
  %mul = mul i64 %50, %conv
  %add67 = add i64 %mul, %46
  %rem.i = and i64 %add67, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i)
  %cmp.not.i = icmp eq i64 %rem.i, 0
  %sub.i = sub nuw nsw i64 512, %rem.i
  %add.i = select i1 %cmp.not.i, i64 0, i64 %sub.i
  %aligned_offset.0.i = add i64 %add.i, %add67
  %51 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %aligned_offset.0.i, ptr %arrayidx45, align 8
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 8
  %add.ptr75 = getelementptr i8, ptr %53, i32 794636
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #5, !srcloc !84
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  %sh_prom79 = zext i32 %55 to i64
  %shl80 = shl nuw i64 1, %sh_prom79
  %size81 = getelementptr %struct.i40e_hmc_obj_info, ptr %36, i32 2, i32 3
  %56 = ptrtoint ptr %size81 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %shl80, ptr %size81, align 8
  %57 = ptrtoint ptr %max_cnt53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_cnt53, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %rxq_num)
  %cmp83 = icmp ult i32 %58, %rxq_num
  br i1 %cmp83, label %if.then85, label %if.end109

if.then85:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_init_lan_hmc.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_init_lan_hmc, %if.then99)) #5
          to label %init_lan_hmc_out [label %if.then99], !srcloc !87

if.then99:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  %back100 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %59 = ptrtoint ptr %back100 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %back100, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %max_cnt53 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_cnt53, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_init_lan_hmc.__UNIQUE_ID_ddebug677, ptr noundef %dev102, ptr noundef nonnull @.str.4, i32 noundef %rxq_num, i32 noundef %64, i32 noundef -50) #5
  br label %init_lan_hmc_out

if.end109:                                        ; preds = %if.end37
  %65 = ptrtoint ptr %max_cnt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_cnt, align 8
  %add112 = add i32 %66, %58
  store i32 %add112, ptr %max_cnt, align 8
  %67 = ptrtoint ptr %cnt54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cnt54, align 4
  %69 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cnt, align 4
  %add115 = add i32 %70, %68
  store i32 %add115, ptr %cnt, align 4
  %71 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hmc_obj, align 8
  %arrayidx118 = getelementptr %struct.i40e_hmc_obj_info, ptr %72, i32 3
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 8
  %add.ptr122 = getelementptr i8, ptr %74, i32 794644
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122) #5, !srcloc !84
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %max_cnt126 = getelementptr %struct.i40e_hmc_obj_info, ptr %72, i32 3, i32 1
  %77 = ptrtoint ptr %max_cnt126 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %max_cnt126, align 8
  %cnt127 = getelementptr %struct.i40e_hmc_obj_info, ptr %72, i32 3, i32 2
  %78 = ptrtoint ptr %cnt127 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %fcoe_cntx_num, ptr %cnt127, align 4
  %79 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hmc_obj, align 8
  %arrayidx130 = getelementptr %struct.i40e_hmc_obj_info, ptr %80, i32 2
  %81 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx130, align 8
  %cnt135 = getelementptr %struct.i40e_hmc_obj_info, ptr %80, i32 2, i32 2
  %83 = ptrtoint ptr %cnt135 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cnt135, align 4
  %conv136 = zext i32 %84 to i64
  %size140 = getelementptr %struct.i40e_hmc_obj_info, ptr %80, i32 2, i32 3
  %85 = ptrtoint ptr %size140 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %size140, align 8
  %mul141 = mul i64 %86, %conv136
  %add142 = add i64 %mul141, %82
  %rem.i422 = and i64 %add142, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i422)
  %cmp.not.i423 = icmp eq i64 %rem.i422, 0
  %sub.i424 = sub nuw nsw i64 512, %rem.i422
  %add.i425 = select i1 %cmp.not.i423, i64 0, i64 %sub.i424
  %aligned_offset.0.i426 = add i64 %add.i425, %add142
  %87 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %aligned_offset.0.i426, ptr %arrayidx118, align 8
  %88 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw, align 8
  %add.ptr150 = getelementptr i8, ptr %89, i32 794640
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #5, !srcloc !84
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  %sh_prom154 = zext i32 %91 to i64
  %shl155 = shl nuw i64 1, %sh_prom154
  %size156 = getelementptr %struct.i40e_hmc_obj_info, ptr %72, i32 3, i32 3
  %92 = ptrtoint ptr %size156 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %shl155, ptr %size156, align 8
  %93 = ptrtoint ptr %max_cnt126 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_cnt126, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %fcoe_cntx_num)
  %cmp158 = icmp ult i32 %94, %fcoe_cntx_num
  br i1 %cmp158, label %if.then160, label %if.end184

if.then160:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_init_lan_hmc.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_init_lan_hmc, %if.then174)) #5
          to label %init_lan_hmc_out [label %if.then174], !srcloc !87

if.then174:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #7
  %back175 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %95 = ptrtoint ptr %back175 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %back175, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 8
  %dev177 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %99 = ptrtoint ptr %max_cnt126 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_cnt126, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_init_lan_hmc.__UNIQUE_ID_ddebug678, ptr noundef %dev177, ptr noundef nonnull @.str.5, i32 noundef %fcoe_cntx_num, i32 noundef %100, i32 noundef -50) #5
  br label %init_lan_hmc_out

if.end184:                                        ; preds = %if.end109
  %101 = ptrtoint ptr %max_cnt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_cnt, align 8
  %add187 = add i32 %102, %94
  store i32 %add187, ptr %max_cnt, align 8
  %103 = ptrtoint ptr %cnt127 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cnt127, align 4
  %105 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cnt, align 4
  %add190 = add i32 %106, %104
  store i32 %add190, ptr %cnt, align 4
  %107 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hmc_obj, align 8
  %arrayidx193 = getelementptr %struct.i40e_hmc_obj_info, ptr %108, i32 4
  %109 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw, align 8
  %add.ptr197 = getelementptr i8, ptr %110, i32 794832
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197) #5, !srcloc !84
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %max_cnt201 = getelementptr %struct.i40e_hmc_obj_info, ptr %108, i32 4, i32 1
  %113 = ptrtoint ptr %max_cnt201 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %max_cnt201, align 8
  %cnt202 = getelementptr %struct.i40e_hmc_obj_info, ptr %108, i32 4, i32 2
  %114 = ptrtoint ptr %cnt202 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %fcoe_filt_num, ptr %cnt202, align 4
  %115 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hmc_obj, align 8
  %arrayidx205 = getelementptr %struct.i40e_hmc_obj_info, ptr %116, i32 3
  %117 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx205, align 8
  %cnt210 = getelementptr %struct.i40e_hmc_obj_info, ptr %116, i32 3, i32 2
  %119 = ptrtoint ptr %cnt210 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cnt210, align 4
  %conv211 = zext i32 %120 to i64
  %size215 = getelementptr %struct.i40e_hmc_obj_info, ptr %116, i32 3, i32 3
  %121 = ptrtoint ptr %size215 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %size215, align 8
  %mul216 = mul i64 %122, %conv211
  %add217 = add i64 %mul216, %118
  %rem.i427 = and i64 %add217, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i427)
  %cmp.not.i428 = icmp eq i64 %rem.i427, 0
  %sub.i429 = sub nuw nsw i64 512, %rem.i427
  %add.i430 = select i1 %cmp.not.i428, i64 0, i64 %sub.i429
  %aligned_offset.0.i431 = add i64 %add.i430, %add217
  %123 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %aligned_offset.0.i431, ptr %arrayidx193, align 8
  %124 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw, align 8
  %add.ptr225 = getelementptr i8, ptr %125, i32 794648
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr225) #5, !srcloc !84
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  %sh_prom229 = zext i32 %127 to i64
  %shl230 = shl nuw i64 1, %sh_prom229
  %size231 = getelementptr %struct.i40e_hmc_obj_info, ptr %108, i32 4, i32 3
  %128 = ptrtoint ptr %size231 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %shl230, ptr %size231, align 8
  %129 = ptrtoint ptr %max_cnt201 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_cnt201, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %fcoe_filt_num)
  %cmp233 = icmp ult i32 %130, %fcoe_filt_num
  br i1 %cmp233, label %if.then235, label %if.end259

if.then235:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_init_lan_hmc.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_init_lan_hmc, %if.then249)) #5
          to label %init_lan_hmc_out [label %if.then249], !srcloc !87

if.then249:                                       ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #7
  %back250 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %131 = ptrtoint ptr %back250 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %back250, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 8
  %dev252 = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  %135 = ptrtoint ptr %max_cnt201 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %max_cnt201, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_init_lan_hmc.__UNIQUE_ID_ddebug679, ptr noundef %dev252, ptr noundef nonnull @.str.6, i32 noundef %fcoe_filt_num, i32 noundef %136, i32 noundef -50) #5
  br label %init_lan_hmc_out

if.end259:                                        ; preds = %if.end184
  %137 = ptrtoint ptr %max_cnt to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_cnt, align 8
  %add262 = add i32 %138, %130
  store i32 %add262, ptr %max_cnt, align 8
  %139 = ptrtoint ptr %cnt202 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cnt202, align 4
  %141 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cnt, align 4
  %add265 = add i32 %142, %140
  store i32 %add265, ptr %cnt, align 4
  %first_sd_index = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 2
  %143 = ptrtoint ptr %first_sd_index to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 0, ptr %first_sd_index, align 2
  %sd_table = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 5
  %ref_cnt = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 5, i32 2
  %144 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %ref_cnt, align 4
  %mul.i = shl i32 %txq_num, 7
  %conv.i = zext i32 %mul.i to i64
  %rem.i.i = and i64 %conv.i, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i.i)
  %cmp.not.i.i = icmp eq i64 %rem.i.i, 0
  %sub.i.i = sub nuw nsw i64 512, %rem.i.i
  %add.i.i = select i1 %cmp.not.i.i, i64 0, i64 %sub.i.i
  %mul1.i = shl i32 %rxq_num, 5
  %conv2.i = zext i32 %mul1.i to i64
  %aligned_offset.0.i.i = add nuw nsw i64 %conv2.i, %conv.i
  %add.i432 = add nuw nsw i64 %aligned_offset.0.i.i, %add.i.i
  %rem.i19.i = and i64 %add.i432, 480
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i19.i)
  %cmp.not.i20.i = icmp eq i64 %rem.i19.i, 0
  %sub.i21.i = sub nuw nsw i64 512, %rem.i19.i
  %add.i22.i = select i1 %cmp.not.i20.i, i64 0, i64 %sub.i21.i
  %mul4.i = shl i32 %fcoe_cntx_num, 6
  %conv5.i = zext i32 %mul4.i to i64
  %aligned_offset.0.i23.i = add nuw nsw i64 %add.i432, %conv5.i
  %add6.i = add nuw nsw i64 %aligned_offset.0.i23.i, %add.i22.i
  %rem.i24.i = and i64 %add6.i, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i24.i)
  %cmp.not.i25.i = icmp eq i64 %rem.i24.i, 0
  %sub.i26.i = sub nuw nsw i64 512, %rem.i24.i
  %add.i27.i = select i1 %cmp.not.i25.i, i64 0, i64 %sub.i26.i
  %mul8.i = shl i32 %fcoe_filt_num, 6
  %conv9.i = zext i32 %mul8.i to i64
  %aligned_offset.0.i28.i = add nuw nsw i64 %add6.i, %conv9.i
  %add10.i = add nuw nsw i64 %aligned_offset.0.i28.i, %add.i27.i
  %rem.i29.i = and i64 %add10.i, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i29.i)
  %cmp.not.i30.i = icmp eq i64 %rem.i29.i, 0
  %sub.i31.i = sub nuw nsw i64 512, %rem.i29.i
  %add.i32.i = select i1 %cmp.not.i30.i, i64 0, i64 %sub.i31.i
  %aligned_offset.0.i33.i = add nuw nsw i64 %add.i32.i, %add10.i
  %sd_entry = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 5, i32 3
  %145 = ptrtoint ptr %sd_entry to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sd_entry, align 4
  %cmp271 = icmp eq ptr %146, null
  br i1 %cmp271, label %if.then273, label %if.end259.if.end295_crit_edge

if.end259.if.end295_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end295

if.then273:                                       ; preds = %if.end259
  %147 = trunc i64 %aligned_offset.0.i33.i to i32
  %conv275 = add i32 %147, 2097151
  %div412 = lshr i32 %conv275, 21
  %sd_cnt = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 5, i32 1
  %148 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %div412, ptr %sd_cnt, align 4
  %mul283 = mul nuw nsw i32 %div412, 40
  %call284 = tail call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef %sd_table, i32 noundef %mul283) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.end287, label %if.then273.init_lan_hmc_out_crit_edge

if.then273.init_lan_hmc_out_crit_edge:            ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_lan_hmc_out

if.end287:                                        ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #7
  %149 = ptrtoint ptr %sd_table to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sd_table, align 4
  %151 = ptrtoint ptr %sd_entry to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %sd_entry, align 4
  br label %if.end295

if.end295:                                        ; preds = %if.end287, %if.end259.if.end295_crit_edge
  %152 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %aligned_offset.0.i33.i, ptr %size, align 8
  br label %init_lan_hmc_out

init_lan_hmc_out:                                 ; preds = %if.end295, %if.then273.init_lan_hmc_out_crit_edge, %if.then249, %if.then235, %if.then174, %if.then160, %if.then99, %if.then85, %if.then32, %if.then25, %entry.init_lan_hmc_out_crit_edge
  %ret_code.1 = phi i32 [ %call, %entry.init_lan_hmc_out_crit_edge ], [ -50, %if.then32 ], [ -50, %if.then99 ], [ -50, %if.then174 ], [ -50, %if.then249 ], [ %call284, %if.then273.init_lan_hmc_out_crit_edge ], [ 0, %if.end295 ], [ -50, %if.then25 ], [ -50, %if.then85 ], [ -50, %if.then160 ], [ -50, %if.then235 ]
  ret i32 %ret_code.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_allocate_virt_mem_d(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_configure_lan_hmc(ptr noundef %hw, i32 noundef %model) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.i40e_hmc_lan_create_obj_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #5
  %0 = getelementptr inbounds i8, ptr %info, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %hmc = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30
  %hmc_fn_id1 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 1
  %2 = ptrtoint ptr %hmc_fn_id1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hmc_fn_id1, align 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hmc, ptr %info, align 8
  %rsrc_type = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rsrc_type, align 4
  %start_idx = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %start_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %start_idx, align 8
  %hmc_obj = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 3
  %7 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hmc_obj, align 8
  %size = getelementptr inbounds %struct.i40e_hmc_obj_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size, align 8
  %direct_mode_sz = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 5
  %11 = ptrtoint ptr %direct_mode_sz to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %direct_mode_sz, align 8
  %12 = zext i32 %model to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %model, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge151
    i32 2, label %entry.try_type_paged_crit_edge
  ]

entry.try_type_paged_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %try_type_paged

entry.sw.bb_crit_edge151:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge151
  %entry_type = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 4
  %13 = ptrtoint ptr %entry_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %entry_type, align 8
  %count = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %count, align 4
  %call = call fastcc i32 @i40e_create_lan_hmc_object(ptr noundef %hw, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %model)
  %cmp = icmp ne i32 %model, 0
  %15 = or i1 %cmp, %tobool.not
  br i1 %15, label %if.else, label %sw.bb.try_type_paged_crit_edge

sw.bb.try_type_paged_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %try_type_paged

if.else:                                          ; preds = %sw.bb
  br i1 %tobool.not, label %if.else.sw.epilog_crit_edge, label %if.else.configure_lan_hmc_out_crit_edge

if.else.configure_lan_hmc_out_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %configure_lan_hmc_out

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

try_type_paged:                                   ; preds = %sw.bb.try_type_paged_crit_edge, %entry.try_type_paged_crit_edge
  %entry_type8 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 4
  %16 = ptrtoint ptr %entry_type8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %entry_type8, align 8
  %count9 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %count9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %count9, align 4
  %call10 = call fastcc i32 @i40e_create_lan_hmc_object(ptr noundef %hw, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %try_type_paged.sw.epilog_crit_edge, label %try_type_paged.configure_lan_hmc_out_crit_edge

try_type_paged.configure_lan_hmc_out_crit_edge:   ; preds = %try_type_paged
  call void @__sanitizer_cov_trace_pc() #7
  br label %configure_lan_hmc_out

try_type_paged.sw.epilog_crit_edge:               ; preds = %try_type_paged
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_configure_lan_hmc.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_configure_lan_hmc, %if.then19)) #5
          to label %configure_lan_hmc_out [label %if.then19], !srcloc !87

if.then19:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %back, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_configure_lan_hmc.__UNIQUE_ID_ddebug693, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef -47) #5
  br label %configure_lan_hmc_out

sw.epilog:                                        ; preds = %try_type_paged.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge
  %22 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hmc_obj, align 8
  %arrayidx25 = getelementptr %struct.i40e_hmc_obj_info, ptr %23, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx25, align 8
  %26 = trunc i64 %25 to i32
  %27 = lshr i32 %26, 9
  %conv = and i32 %27, 32767
  %28 = call i32 @llvm.bswap.i32(i32 %conv)
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 8
  %conv29 = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv29, 2
  %add = add nuw nsw i32 %mul, 811520
  %add.ptr = getelementptr i8, ptr %30, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %28) #5, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  call void @arm_heavy_mb() #5
  %cnt = getelementptr %struct.i40e_hmc_obj_info, ptr %23, i32 1, i32 2
  %31 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cnt, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %add36 = add nuw nsw i32 %mul, 811776
  %add.ptr37 = getelementptr i8, ptr %35, i32 %add36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %33) #5, !srcloc !95
  %36 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hmc_obj, align 8
  %arrayidx40 = getelementptr %struct.i40e_hmc_obj_info, ptr %37, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx40, align 8
  %40 = trunc i64 %39 to i32
  %41 = lshr i32 %40, 9
  %conv47 = and i32 %41, 32767
  %42 = call i32 @llvm.bswap.i32(i32 %conv47)
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 8
  %add51 = or i32 %mul, 812032
  %add.ptr52 = getelementptr i8, ptr %44, i32 %add51
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %42) #5, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  call void @arm_heavy_mb() #5
  %cnt56 = getelementptr %struct.i40e_hmc_obj_info, ptr %37, i32 2, i32 2
  %45 = ptrtoint ptr %cnt56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cnt56, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 8
  %add60 = add nuw nsw i32 %mul, 812288
  %add.ptr61 = getelementptr i8, ptr %49, i32 %add60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %47) #5, !srcloc !95
  %50 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hmc_obj, align 8
  %arrayidx64 = getelementptr %struct.i40e_hmc_obj_info, ptr %51, i32 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx64, align 8
  %54 = trunc i64 %53 to i32
  %55 = lshr i32 %54, 9
  %conv71 = and i32 %55, 32767
  %56 = call i32 @llvm.bswap.i32(i32 %conv71)
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 8
  %add75 = add nuw nsw i32 %mul, 812544
  %add.ptr76 = getelementptr i8, ptr %58, i32 %add75
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %56) #5, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  call void @arm_heavy_mb() #5
  %cnt80 = getelementptr %struct.i40e_hmc_obj_info, ptr %51, i32 3, i32 2
  %59 = ptrtoint ptr %cnt80 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cnt80, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 8
  %add84 = add nuw nsw i32 %mul, 812800
  %add.ptr85 = getelementptr i8, ptr %63, i32 %add84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %61) #5, !srcloc !95
  %64 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hmc_obj, align 8
  %arrayidx88 = getelementptr %struct.i40e_hmc_obj_info, ptr %65, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx88, align 8
  %68 = trunc i64 %67 to i32
  %69 = lshr i32 %68, 9
  %conv95 = and i32 %69, 32767
  %70 = call i32 @llvm.bswap.i32(i32 %conv95)
  %71 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw, align 8
  %add99 = or i32 %mul, 813056
  %add.ptr100 = getelementptr i8, ptr %72, i32 %add99
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %70) #5, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  call void @arm_heavy_mb() #5
  %cnt104 = getelementptr %struct.i40e_hmc_obj_info, ptr %65, i32 4, i32 2
  %73 = ptrtoint ptr %cnt104 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cnt104, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 8
  %add108 = add nuw nsw i32 %mul, 813312
  %add.ptr109 = getelementptr i8, ptr %77, i32 %add108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %75) #5, !srcloc !95
  br label %configure_lan_hmc_out

configure_lan_hmc_out:                            ; preds = %sw.epilog, %if.then19, %sw.default, %try_type_paged.configure_lan_hmc_out_crit_edge, %if.else.configure_lan_hmc_out_crit_edge
  %ret_code.1 = phi i32 [ -47, %if.then19 ], [ %call10, %try_type_paged.configure_lan_hmc_out_crit_edge ], [ 0, %sw.epilog ], [ %call, %if.else.configure_lan_hmc_out_crit_edge ], [ -47, %sw.default ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #5
  ret i32 %ret_code.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_create_lan_hmc_object(ptr noundef %hw, ptr noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %info, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_create_lan_hmc_object, %if.then4)) #5
          to label %exit [label %if.then4], !srcloc !87

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug680, ptr noundef %dev, ptr noundef nonnull @.str.10) #5
  br label %exit

if.end7:                                          ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %cmp8 = icmp eq ptr %5, null
  br i1 %cmp8, label %if.then9, label %if.end32

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_create_lan_hmc_object, %if.then23)) #5
          to label %exit [label %if.then23], !srcloc !87

if.then23:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %back24 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %back24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back24, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug681, ptr noundef %dev26, ptr noundef nonnull @.str.11) #5
  br label %exit

if.end32:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213027143, i32 %11)
  %cmp34.not = icmp eq i32 %11, 1213027143
  br i1 %cmp34.not, label %if.end58, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_create_lan_hmc_object, %if.then49)) #5
          to label %exit [label %if.then49], !srcloc !87

if.then49:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %back50 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %back50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %back50, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug682, ptr noundef %dev52, ptr noundef nonnull @.str.12) #5
  br label %exit

if.end58:                                         ; preds = %if.end32
  %start_idx = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %start_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start_idx, align 8
  %hmc_obj = getelementptr inbounds %struct.i40e_hmc_info, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hmc_obj, align 4
  %rsrc_type = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 1
  %20 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rsrc_type, align 4
  %arrayidx = getelementptr %struct.i40e_hmc_obj_info, ptr %19, i32 %21
  %cnt = getelementptr %struct.i40e_hmc_obj_info, ptr %19, i32 %21, i32 2
  %22 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %23)
  %cmp60.not = icmp ult i32 %17, %23
  br i1 %cmp60.not, label %if.end84, label %if.then61

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_create_lan_hmc_object, %if.then75)) #5
          to label %exit [label %if.then75], !srcloc !87

if.then75:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  %back76 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %24 = ptrtoint ptr %back76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %back76, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug683, ptr noundef %dev78, ptr noundef nonnull @.str.13, i32 noundef -49) #5
  br label %exit

if.end84:                                         ; preds = %if.end58
  %count = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 3
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count, align 4
  %add = add i32 %29, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp91 = icmp ugt i32 %add, %23
  br i1 %cmp91, label %if.then92, label %if.end115

if.then92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_create_lan_hmc_object, %if.then106)) #5
          to label %exit [label %if.then106], !srcloc !87

if.then106:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  %back107 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %30 = ptrtoint ptr %back107 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %back107, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug684, ptr noundef %dev109, ptr noundef nonnull @.str.13, i32 noundef -50) #5
  br label %exit

if.end115:                                        ; preds = %if.end84
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx, align 8
  %size = getelementptr %struct.i40e_hmc_obj_info, ptr %19, i32 %21, i32 3
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %size, align 8
  %conv = zext i32 %17 to i64
  %mul = mul i64 %37, %conv
  %add125 = add i64 %mul, %35
  %conv132 = zext i32 %29 to i64
  %mul133 = mul i64 %37, %conv132
  %div470 = lshr i64 %add125, 21
  %conv135 = trunc i64 %div470 to i32
  %add134 = add i64 %mul133, -1
  %sub = add i64 %add134, %add125
  %div136471 = lshr i64 %sub, 21
  %conv137 = trunc i64 %div136471 to i32
  %add138 = add i32 %conv137, 1
  %sd_cnt = getelementptr inbounds %struct.i40e_hmc_info, ptr %5, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sd_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv135)
  %cmp140.not = icmp ule i32 %39, %conv135
  call void @__sanitizer_cov_trace_cmp4(i32 %add138, i32 %39)
  %cmp145 = icmp ugt i32 %add138, %39
  %or.cond = select i1 %cmp140.not, i1 true, i1 %cmp145
  br i1 %or.cond, label %if.end115.exit_crit_edge, label %if.end148

if.end115.exit_crit_edge:                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end148:                                        ; preds = %if.end115
  %div173472 = lshr i64 %add125, 12
  %conv174 = trunc i64 %div173472 to i32
  %div176473 = lshr i64 %sub, 12
  %conv177 = trunc i64 %div176473 to i32
  %add178 = add i32 %conv177, 1
  %direct_mode_sz = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 5
  %40 = ptrtoint ptr %direct_mode_sz to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %direct_mode_sz, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp179 = icmp eq i64 %41, 0
  %. = select i1 %cmp179, i64 2097152, i64 %41
  call void @__sanitizer_cov_trace_cmp4(i32 %add138, i32 %conv135)
  %cmp184516 = icmp ugt i32 %add138, %conv135
  br i1 %cmp184516, label %for.body.lr.ph, label %if.end148.exit_crit_edge

if.end148.exit_crit_edge:                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

for.body.lr.ph:                                   ; preds = %if.end148
  %entry_type = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, ptr %info, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc299.for.body_crit_edge, %for.body.lr.ph
  %pd_error.0.off0520 = phi i1 [ false, %for.body.lr.ph ], [ %pd_error.2.off0, %for.inc299.for.body_crit_edge ]
  %j.0517 = phi i32 [ %conv135, %for.body.lr.ph ], [ %inc300, %for.inc299.for.body_crit_edge ]
  %42 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info, align 8
  %44 = ptrtoint ptr %entry_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %entry_type, align 8
  %call187 = tail call i32 @i40e_add_sd_table_entry(ptr noundef %hw, ptr noundef %43, i32 noundef %j.0517, i32 noundef %45, i64 noundef %.) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %while.cond302.preheader

while.cond302.preheader:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0517)
  %tobool303.not525 = icmp ne i32 %j.0517, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0517, i32 %conv135)
  %cmp305526 = icmp ugt i32 %j.0517, %conv135
  %or.cond480527 = select i1 %tobool303.not525, i1 %cmp305526, i1 false
  br i1 %or.cond480527, label %while.cond302.preheader.while.body308_crit_edge, label %while.cond302.preheader.exit_crit_edge

while.cond302.preheader.exit_crit_edge:           ; preds = %while.cond302.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

while.cond302.preheader.while.body308_crit_edge:  ; preds = %while.cond302.preheader
  br label %while.body308

if.end190:                                        ; preds = %for.body
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info, align 8
  %sd_entry193 = getelementptr inbounds %struct.i40e_hmc_info, ptr %47, i32 0, i32 5, i32 3
  %48 = ptrtoint ptr %sd_entry193 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sd_entry193, align 4
  %arrayidx194 = getelementptr %struct.i40e_hmc_sd_entry, ptr %49, i32 %j.0517
  %50 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp196 = icmp eq i32 %51, 1
  br i1 %cmp196, label %if.then198, label %if.end190.if.end230_crit_edge

if.end190.if.end230_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end230

if.then198:                                       ; preds = %if.end190
  %mul199 = shl i32 %j.0517, 9
  %52 = tail call i32 @llvm.umax.i32(i32 %mul199, i32 %conv174)
  %mul204 = add i32 %mul199, 512
  %53 = tail call i32 @llvm.umin.i32(i32 %add178, i32 %mul204)
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %53)
  %cmp213505 = icmp ult i32 %52, %53
  br i1 %cmp213505, label %if.then198.for.body215_crit_edge, label %if.then198.for.end_crit_edge

if.then198.for.end_crit_edge:                     ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then198.for.body215_crit_edge:                 ; preds = %if.then198
  br label %for.body215

for.body215:                                      ; preds = %for.inc.for.body215_crit_edge, %if.then198.for.body215_crit_edge
  %i.0506 = phi i32 [ %inc, %for.inc.for.body215_crit_edge ], [ %52, %if.then198.for.body215_crit_edge ]
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 8
  %call217 = tail call i32 @i40e_add_pd_table_entry(ptr noundef %hw, ptr noundef %55, i32 noundef %i.0506, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %for.inc, label %for.body215.while.cond.preheader_crit_edge

for.body215.while.cond.preheader_crit_edge:       ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

for.inc:                                          ; preds = %for.body215
  %inc = add nuw i32 %i.0506, 1
  %cmp213 = icmp ult i32 %inc, %53
  br i1 %cmp213, label %for.inc.for.body215_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body215_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body215

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then198.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %52, %if.then198.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  br i1 %pd_error.0.off0520, label %for.end.while.cond.preheader_crit_edge, label %for.end.if.end230_crit_edge

for.end.if.end230_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end230

for.end.while.cond.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end.while.cond.preheader_crit_edge, %for.body215.while.cond.preheader_crit_edge
  %ret_code.2538 = phi i32 [ 0, %for.end.while.cond.preheader_crit_edge ], [ %call217, %for.body215.while.cond.preheader_crit_edge ]
  %i.0.lcssa537 = phi i32 [ %i.0.lcssa, %for.end.while.cond.preheader_crit_edge ], [ %i.0506, %for.body215.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa537)
  %tobool223.not512 = icmp ne i32 %i.0.lcssa537, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa537, i32 %52)
  %cmp224513 = icmp ugt i32 %i.0.lcssa537, %52
  %or.cond479514 = select i1 %tobool223.not512, i1 %cmp224513, i1 false
  br i1 %or.cond479514, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end230_crit_edge

while.cond.preheader.if.end230_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end230

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.1515 = phi i32 [ %sub227, %while.body.while.body_crit_edge ], [ %i.0.lcssa537, %while.cond.preheader.while.body_crit_edge ]
  %56 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info, align 8
  %sub227 = add i32 %i.1515, -1
  %call228 = tail call i32 @i40e_remove_pd_bp(ptr noundef %hw, ptr noundef %57, i32 noundef %sub227) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub227)
  %tobool223.not = icmp ne i32 %sub227, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub227, i32 %52)
  %cmp224 = icmp ugt i32 %sub227, %52
  %or.cond479 = select i1 %tobool223.not, i1 %cmp224, i1 false
  br i1 %or.cond479, label %while.body.while.body_crit_edge, label %while.body.if.end230_crit_edge

while.body.if.end230_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end230

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end230:                                        ; preds = %while.body.if.end230_crit_edge, %while.cond.preheader.if.end230_crit_edge, %for.end.if.end230_crit_edge, %if.end190.if.end230_crit_edge
  %pd_error.2.off0 = phi i1 [ false, %for.end.if.end230_crit_edge ], [ %pd_error.0.off0520, %if.end190.if.end230_crit_edge ], [ true, %while.cond.preheader.if.end230_crit_edge ], [ true, %while.body.if.end230_crit_edge ]
  %ret_code.3 = phi i32 [ 0, %for.end.if.end230_crit_edge ], [ 0, %if.end190.if.end230_crit_edge ], [ %ret_code.2538, %while.cond.preheader.if.end230_crit_edge ], [ %ret_code.2538, %while.body.if.end230_crit_edge ]
  %valid = getelementptr %struct.i40e_hmc_sd_entry, ptr %49, i32 %j.0517, i32 1
  %58 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %valid, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool231.not = icmp eq i8 %59, 0
  br i1 %tobool231.not, label %if.then232, label %if.end230.for.inc299_crit_edge

if.end230.for.inc299_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc299

if.then232:                                       ; preds = %if.end230
  %60 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %valid, align 4
  %61 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx194, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %62, label %if.then232.exit_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb261
  ]

if.then232.exit_crit_edge:                        ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

sw.bb:                                            ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #7
  %pa = getelementptr %struct.i40e_hmc_sd_entry, ptr %49, i32 %j.0517, i32 2, i32 0, i32 0, i32 1
  %64 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pa, align 4
  %or244 = or i32 %65, 2049
  %66 = or i32 %j.0517, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %68, i32 786944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %69 = tail call i32 @llvm.bswap.i32(i32 %or244)
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 8
  %add.ptr255 = getelementptr i8, ptr %71, i32 786688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr255, i32 %69) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %72 = tail call i32 @llvm.bswap.i32(i32 %66)
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 8
  %add.ptr260 = getelementptr i8, ptr %74, i32 786432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr260, i32 %72) #5, !srcloc !95
  br label %for.inc299

sw.bb261:                                         ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #7
  %pa266 = getelementptr %struct.i40e_hmc_sd_entry, ptr %49, i32 %j.0517, i32 2, i32 0, i32 0, i32 2
  %75 = ptrtoint ptr %pa266 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pa266, align 4
  %or279 = or i32 %76, 2051
  %77 = or i32 %j.0517, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 8
  %add.ptr287 = getelementptr i8, ptr %79, i32 786944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287, i32 0) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %80 = tail call i32 @llvm.bswap.i32(i32 %or279)
  %81 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw, align 8
  %add.ptr292 = getelementptr i8, ptr %82, i32 786688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr292, i32 %80) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %83 = tail call i32 @llvm.bswap.i32(i32 %77)
  %84 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw, align 8
  %add.ptr297 = getelementptr i8, ptr %85, i32 786432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr297, i32 %83) #5, !srcloc !95
  br label %for.inc299

for.inc299:                                       ; preds = %sw.bb261, %sw.bb, %if.end230.for.inc299_crit_edge
  %inc300 = add nuw i32 %j.0517, 1
  %exitcond.not = icmp eq i32 %j.0517, %conv137
  br i1 %exitcond.not, label %for.inc299.exit_crit_edge, label %for.inc299.for.body_crit_edge

for.inc299.for.body_crit_edge:                    ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc299.exit_crit_edge:                        ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

while.body308:                                    ; preds = %sw.epilog350.while.body308_crit_edge, %while.cond302.preheader.while.body308_crit_edge
  %ret_code.4529 = phi i32 [ %ret_code.5, %sw.epilog350.while.body308_crit_edge ], [ %call187, %while.cond302.preheader.while.body308_crit_edge ]
  %j.1528 = phi i32 [ %sub312, %sw.epilog350.while.body308_crit_edge ], [ %j.0517, %while.cond302.preheader.while.body308_crit_edge ]
  %86 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %info, align 8
  %sd_entry311 = getelementptr inbounds %struct.i40e_hmc_info, ptr %87, i32 0, i32 5, i32 3
  %88 = ptrtoint ptr %sd_entry311 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sd_entry311, align 4
  %sub312 = add i32 %j.1528, -1
  %arrayidx313 = getelementptr %struct.i40e_hmc_sd_entry, ptr %89, i32 %sub312
  %90 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx313, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %91, label %while.body308.sw.epilog350_crit_edge [
    i32 1, label %sw.bb315
    i32 2, label %sw.bb345
  ]

while.body308.sw.epilog350_crit_edge:             ; preds = %while.body308
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog350

sw.bb315:                                         ; preds = %while.body308
  %mul317 = shl i32 %sub312, 9
  %93 = tail call i32 @llvm.umax.i32(i32 %mul317, i32 %conv174)
  %mul325 = shl i32 %j.1528, 9
  %94 = tail call i32 @llvm.umin.i32(i32 %add178, i32 %mul325)
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %94)
  %cmp334523 = icmp ult i32 %93, %94
  br i1 %cmp334523, label %sw.bb315.for.body336_crit_edge, label %sw.bb315.for.end341_crit_edge

sw.bb315.for.end341_crit_edge:                    ; preds = %sw.bb315
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end341

sw.bb315.for.body336_crit_edge:                   ; preds = %sw.bb315
  br label %for.body336

for.body336:                                      ; preds = %for.body336.for.body336_crit_edge, %sw.bb315.for.body336_crit_edge
  %i.2524 = phi i32 [ %inc340, %for.body336.for.body336_crit_edge ], [ %93, %sw.bb315.for.body336_crit_edge ]
  %95 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %info, align 8
  %call338 = tail call i32 @i40e_remove_pd_bp(ptr noundef %hw, ptr noundef %96, i32 noundef %i.2524) #5
  %inc340 = add nuw i32 %i.2524, 1
  %cmp334 = icmp ult i32 %inc340, %94
  br i1 %cmp334, label %for.body336.for.body336_crit_edge, label %for.body336.for.end341_crit_edge

for.body336.for.end341_crit_edge:                 ; preds = %for.body336
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end341

for.body336.for.body336_crit_edge:                ; preds = %for.body336
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body336

for.end341:                                       ; preds = %for.body336.for.end341_crit_edge, %sw.bb315.for.end341_crit_edge
  %97 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %info, align 8
  %call.i = tail call i32 @i40e_prep_remove_pd_page(ptr noundef %98, i32 noundef %sub312) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.end341.sw.epilog350_crit_edge

for.end341.sw.epilog350_crit_edge:                ; preds = %for.end341
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog350

if.then.i:                                        ; preds = %for.end341
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 @i40e_remove_pd_page_new(ptr noundef %hw, ptr noundef %98, i32 noundef %sub312, i1 noundef zeroext true) #5
  br label %sw.epilog350

sw.bb345:                                         ; preds = %while.body308
  %call.i493 = tail call i32 @i40e_prep_remove_sd_bp(ptr noundef %87, i32 noundef %sub312) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i493)
  %tobool.not.i494 = icmp eq i32 %call.i493, 0
  br i1 %tobool.not.i494, label %if.then.i496, label %sw.bb345.sw.epilog350_crit_edge

sw.bb345.sw.epilog350_crit_edge:                  ; preds = %sw.bb345
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog350

if.then.i496:                                     ; preds = %sw.bb345
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i495 = tail call i32 @i40e_remove_sd_bp_new(ptr noundef %hw, ptr noundef %87, i32 noundef %sub312, i1 noundef zeroext true) #5
  br label %sw.epilog350

sw.epilog350:                                     ; preds = %if.then.i496, %sw.bb345.sw.epilog350_crit_edge, %if.then.i, %for.end341.sw.epilog350_crit_edge, %while.body308.sw.epilog350_crit_edge
  %ret_code.5 = phi i32 [ -47, %while.body308.sw.epilog350_crit_edge ], [ %ret_code.4529, %for.end341.sw.epilog350_crit_edge ], [ %ret_code.4529, %if.then.i ], [ %ret_code.4529, %sw.bb345.sw.epilog350_crit_edge ], [ %ret_code.4529, %if.then.i496 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub312)
  %tobool303.not = icmp ne i32 %sub312, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub312, i32 %conv135)
  %cmp305 = icmp ugt i32 %sub312, %conv135
  %or.cond480 = select i1 %tobool303.not, i1 %cmp305, i1 false
  br i1 %or.cond480, label %sw.epilog350.while.body308_crit_edge, label %sw.epilog350.exit_crit_edge

sw.epilog350.exit_crit_edge:                      ; preds = %sw.epilog350
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

sw.epilog350.while.body308_crit_edge:             ; preds = %sw.epilog350
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body308

exit:                                             ; preds = %sw.epilog350.exit_crit_edge, %for.inc299.exit_crit_edge, %if.then232.exit_crit_edge, %while.cond302.preheader.exit_crit_edge, %if.end148.exit_crit_edge, %if.end115.exit_crit_edge, %if.then106, %if.then92, %if.then75, %if.then61, %if.then49, %if.then35, %if.then23, %if.then9, %if.then4, %if.then
  %ret_code.6 = phi i32 [ -19, %if.then4 ], [ -19, %if.then23 ], [ -19, %if.then49 ], [ -49, %if.then75 ], [ -50, %if.then106 ], [ -45, %if.end115.exit_crit_edge ], [ -19, %if.then ], [ -19, %if.then9 ], [ -19, %if.then35 ], [ -49, %if.then61 ], [ -50, %if.then92 ], [ %call187, %while.cond302.preheader.exit_crit_edge ], [ 0, %if.end148.exit_crit_edge ], [ %ret_code.5, %sw.epilog350.exit_crit_edge ], [ %ret_code.3, %for.inc299.exit_crit_edge ], [ -47, %if.then232.exit_crit_edge ]
  ret i32 %ret_code.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_shutdown_lan_hmc(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.i40e_hmc_lan_delete_obj_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #5
  %0 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, ptr %info, i32 0, i32 3
  %hmc = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hmc, ptr %info, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %2, align 4
  %call = call fastcc i32 @i40e_delete_lan_hmc_object(ptr noundef %hw, ptr noundef nonnull %info)
  %sd_table = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 5
  %call2 = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef %sd_table) #5
  %sd_cnt = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 5, i32 1
  %7 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sd_cnt, align 4
  %sd_entry = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 5, i32 3
  %8 = ptrtoint ptr %sd_entry to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sd_entry, align 4
  %hmc_obj_virt_mem = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 4
  %call8 = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef %hmc_obj_virt_mem) #5
  %hmc_obj = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 3
  %9 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %hmc_obj, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_delete_lan_hmc_object(ptr noundef %hw, ptr noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %info, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_delete_lan_hmc_object, %if.then4)) #5
          to label %exit [label %if.then4], !srcloc !87

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug694, ptr noundef %dev, ptr noundef nonnull @.str.15) #5
  br label %exit

if.end7:                                          ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %cmp8 = icmp eq ptr %5, null
  br i1 %cmp8, label %if.then9, label %if.end32

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_delete_lan_hmc_object, %if.then23)) #5
          to label %exit [label %if.then23], !srcloc !87

if.then23:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %back24 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %back24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back24, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug695, ptr noundef %dev26, ptr noundef nonnull @.str.16) #5
  br label %exit

if.end32:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213027143, i32 %11)
  %cmp34.not = icmp eq i32 %11, 1213027143
  br i1 %cmp34.not, label %if.end58, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_delete_lan_hmc_object, %if.then49)) #5
          to label %exit [label %if.then49], !srcloc !87

if.then49:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %back50 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %back50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %back50, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug696, ptr noundef %dev52, ptr noundef nonnull @.str.17) #5
  br label %exit

if.end58:                                         ; preds = %if.end32
  %sd_entry = getelementptr inbounds %struct.i40e_hmc_info, ptr %5, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %sd_entry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd_entry, align 4
  %cmp60 = icmp eq ptr %17, null
  br i1 %cmp60, label %if.then61, label %if.end84

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_delete_lan_hmc_object, %if.then75)) #5
          to label %exit [label %if.then75], !srcloc !87

if.then75:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  %back76 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %back76 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %back76, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug697, ptr noundef %dev78, ptr noundef nonnull @.str.18) #5
  br label %exit

if.end84:                                         ; preds = %if.end58
  %hmc_obj = getelementptr inbounds %struct.i40e_hmc_info, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hmc_obj, align 4
  %cmp86 = icmp eq ptr %23, null
  br i1 %cmp86, label %if.then87, label %if.end110

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_delete_lan_hmc_object, %if.then101)) #5
          to label %exit [label %if.then101], !srcloc !87

if.then101:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %back102 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %24 = ptrtoint ptr %back102 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %back102, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %dev104 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug698, ptr noundef %dev104, ptr noundef nonnull @.str.19) #5
  br label %exit

if.end110:                                        ; preds = %if.end84
  %start_idx = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, ptr %info, i32 0, i32 2
  %28 = ptrtoint ptr %start_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %start_idx, align 4
  %rsrc_type = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, ptr %info, i32 0, i32 1
  %30 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rsrc_type, align 4
  %arrayidx = getelementptr %struct.i40e_hmc_obj_info, ptr %23, i32 %31
  %cnt = getelementptr %struct.i40e_hmc_obj_info, ptr %23, i32 %31, i32 2
  %32 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %33)
  %cmp113.not = icmp ult i32 %29, %33
  br i1 %cmp113.not, label %if.end137, label %if.then114

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_delete_lan_hmc_object, %if.then128)) #5
          to label %exit [label %if.then128], !srcloc !87

if.then128:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #7
  %back129 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %34 = ptrtoint ptr %back129 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %back129, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %dev131 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug699, ptr noundef %dev131, ptr noundef nonnull @.str.20, i32 noundef -49) #5
  br label %exit

if.end137:                                        ; preds = %if.end110
  %count = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, ptr %info, i32 0, i32 3
  %38 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count, align 4
  %add = add i32 %39, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %33)
  %cmp144 = icmp ugt i32 %add, %33
  br i1 %cmp144, label %if.then145, label %if.end168

if.then145:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_delete_lan_hmc_object, %if.then159)) #5
          to label %exit [label %if.then159], !srcloc !87

if.then159:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #7
  %back160 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %40 = ptrtoint ptr %back160 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %back160, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %dev162 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug700, ptr noundef %dev162, ptr noundef nonnull @.str.20, i32 noundef -50) #5
  br label %exit

if.end168:                                        ; preds = %if.end137
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx, align 8
  %size = getelementptr %struct.i40e_hmc_obj_info, ptr %23, i32 %31, i32 3
  %46 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %size, align 8
  %conv = zext i32 %29 to i64
  %mul = mul i64 %47, %conv
  %add178 = add i64 %mul, %45
  %conv185 = zext i32 %39 to i64
  %mul186 = mul i64 %47, %conv185
  %div359 = lshr i64 %add178, 12
  %conv188 = trunc i64 %div359 to i32
  %add187 = add i64 %mul186, 17592186044415
  %sub = add i64 %add187, %add178
  %div189360 = lshr i64 %sub, 12
  %conv190 = trunc i64 %div189360 to i32
  %add191 = add i32 %conv190, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add191, i32 %conv188)
  %cmp192399 = icmp ugt i32 %add191, %conv188
  br i1 %cmp192399, label %if.end168.for.body_crit_edge, label %if.end168.for.end_crit_edge

if.end168.for.end_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end168.for.body_crit_edge:                     ; preds = %if.end168
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end168.for.body_crit_edge
  %j.0400 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %conv188, %if.end168.for.body_crit_edge ]
  %div194363 = lshr i32 %j.0400, 9
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info, align 4
  %sd_entry197 = getelementptr inbounds %struct.i40e_hmc_info, ptr %49, i32 0, i32 5, i32 3
  %50 = ptrtoint ptr %sd_entry197 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sd_entry197, align 4
  %arrayidx198 = getelementptr %struct.i40e_hmc_sd_entry, ptr %51, i32 %div194363
  %52 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp199.not = icmp eq i32 %53, 1
  br i1 %cmp199.not, label %if.end202, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end202:                                        ; preds = %for.body
  %rem = and i32 %j.0400, 511
  %pd_entry = getelementptr %struct.i40e_hmc_sd_entry, ptr %51, i32 %div194363, i32 2, i32 0, i32 1
  %54 = ptrtoint ptr %pd_entry to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pd_entry, align 4
  %valid = getelementptr %struct.i40e_hmc_pd_entry, ptr %55, i32 %rem, i32 3
  %56 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %valid, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool208.not = icmp eq i8 %57, 0
  br i1 %tobool208.not, label %if.end202.for.inc_crit_edge, label %if.then209

if.end202.for.inc_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then209:                                       ; preds = %if.end202
  %call211 = tail call i32 @i40e_remove_pd_bp(ptr noundef %hw, ptr noundef %49, i32 noundef %j.0400) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.then209.for.inc_crit_edge, label %if.then209.exit_crit_edge

if.then209.exit_crit_edge:                        ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then209.for.inc_crit_edge:                     ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then209.for.inc_crit_edge, %if.end202.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %j.0400, 1
  %exitcond.not = icmp eq i32 %j.0400, %conv190
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end168.for.end_crit_edge
  %58 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %info, align 4
  %hmc_obj218 = getelementptr inbounds %struct.i40e_hmc_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %hmc_obj218 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hmc_obj218, align 4
  %62 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rsrc_type, align 4
  %arrayidx220 = getelementptr %struct.i40e_hmc_obj_info, ptr %61, i32 %63
  %64 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx220, align 8
  %size226 = getelementptr %struct.i40e_hmc_obj_info, ptr %61, i32 %63, i32 3
  %66 = ptrtoint ptr %size226 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %size226, align 8
  %68 = ptrtoint ptr %start_idx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %start_idx, align 4
  %conv228 = zext i32 %69 to i64
  %mul229 = mul i64 %67, %conv228
  %add230 = add i64 %mul229, %65
  %70 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count, align 4
  %conv237 = zext i32 %71 to i64
  %mul238 = mul i64 %67, %conv237
  %div240361 = lshr i64 %add230, 21
  %conv241 = trunc i64 %div240361 to i32
  %add239 = add i64 %mul238, 9007199254740991
  %sub242 = add i64 %add239, %add230
  %div243362 = lshr i64 %sub242, 21
  %conv244 = trunc i64 %div243362 to i32
  %add245 = add i32 %conv244, 1
  %sd_cnt = getelementptr inbounds %struct.i40e_hmc_info, ptr %59, i32 0, i32 5, i32 1
  %72 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sd_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %conv241)
  %cmp248.not = icmp ule i32 %73, %conv241
  call void @__sanitizer_cov_trace_cmp4(i32 %add245, i32 %73)
  %cmp253 = icmp ugt i32 %add245, %73
  %or.cond = select i1 %cmp248.not, i1 true, i1 %cmp253
  br i1 %or.cond, label %for.end.exit_crit_edge, label %for.cond257.preheader

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

for.cond257.preheader:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add245, i32 %conv241)
  %cmp258402 = icmp ugt i32 %add245, %conv241
  br i1 %cmp258402, label %for.cond257.preheader.for.body260_crit_edge, label %for.cond257.preheader.exit_crit_edge

for.cond257.preheader.exit_crit_edge:             ; preds = %for.cond257.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

for.cond257.preheader.for.body260_crit_edge:      ; preds = %for.cond257.preheader
  br label %for.body260

for.body260:                                      ; preds = %for.inc285.for.body260_crit_edge, %for.cond257.preheader.for.body260_crit_edge
  %i.0403 = phi i32 [ %inc286, %for.inc285.for.body260_crit_edge ], [ %conv241, %for.cond257.preheader.for.body260_crit_edge ]
  %74 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %info, align 4
  %sd_entry263 = getelementptr inbounds %struct.i40e_hmc_info, ptr %75, i32 0, i32 5, i32 3
  %76 = ptrtoint ptr %sd_entry263 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sd_entry263, align 4
  %valid265 = getelementptr %struct.i40e_hmc_sd_entry, ptr %77, i32 %i.0403, i32 1
  %78 = ptrtoint ptr %valid265 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %valid265, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool266.not = icmp eq i8 %79, 0
  br i1 %tobool266.not, label %for.body260.for.inc285_crit_edge, label %if.end268

for.body260.for.inc285_crit_edge:                 ; preds = %for.body260
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc285

if.end268:                                        ; preds = %for.body260
  %arrayidx264 = getelementptr %struct.i40e_hmc_sd_entry, ptr %77, i32 %i.0403
  %80 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx264, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %81, label %if.end268.for.inc285_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb279
  ]

if.end268.for.inc285_crit_edge:                   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc285

sw.bb:                                            ; preds = %if.end268
  %call.i = tail call i32 @i40e_prep_remove_sd_bp(ptr noundef %75, i32 noundef %i.0403) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %i40e_remove_sd_bp.exit, label %sw.bb.for.inc285_crit_edge

sw.bb.for.inc285_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc285

i40e_remove_sd_bp.exit:                           ; preds = %sw.bb
  %call1.i = tail call i32 @i40e_remove_sd_bp_new(ptr noundef %hw, ptr noundef %75, i32 noundef %i.0403, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool276.not = icmp eq i32 %call1.i, 0
  br i1 %tobool276.not, label %i40e_remove_sd_bp.exit.for.inc285_crit_edge, label %i40e_remove_sd_bp.exit.exit_crit_edge

i40e_remove_sd_bp.exit.exit_crit_edge:            ; preds = %i40e_remove_sd_bp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

i40e_remove_sd_bp.exit.for.inc285_crit_edge:      ; preds = %i40e_remove_sd_bp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc285

sw.bb279:                                         ; preds = %if.end268
  %call.i382 = tail call i32 @i40e_prep_remove_pd_page(ptr noundef %75, i32 noundef %i.0403) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i382)
  %tobool.not.i383 = icmp eq i32 %call.i382, 0
  br i1 %tobool.not.i383, label %i40e_remove_pd_page.exit, label %sw.bb279.for.inc285_crit_edge

sw.bb279.for.inc285_crit_edge:                    ; preds = %sw.bb279
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc285

i40e_remove_pd_page.exit:                         ; preds = %sw.bb279
  %call1.i384 = tail call i32 @i40e_remove_pd_page_new(ptr noundef %hw, ptr noundef %75, i32 noundef %i.0403, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i384)
  %tobool282.not = icmp eq i32 %call1.i384, 0
  br i1 %tobool282.not, label %i40e_remove_pd_page.exit.for.inc285_crit_edge, label %i40e_remove_pd_page.exit.exit_crit_edge

i40e_remove_pd_page.exit.exit_crit_edge:          ; preds = %i40e_remove_pd_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

i40e_remove_pd_page.exit.for.inc285_crit_edge:    ; preds = %i40e_remove_pd_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc285

for.inc285:                                       ; preds = %i40e_remove_pd_page.exit.for.inc285_crit_edge, %sw.bb279.for.inc285_crit_edge, %i40e_remove_sd_bp.exit.for.inc285_crit_edge, %sw.bb.for.inc285_crit_edge, %if.end268.for.inc285_crit_edge, %for.body260.for.inc285_crit_edge
  %inc286 = add i32 %i.0403, 1
  %exitcond408.not = icmp eq i32 %i.0403, %conv244
  br i1 %exitcond408.not, label %for.inc285.exit_crit_edge, label %for.inc285.for.body260_crit_edge

for.inc285.for.body260_crit_edge:                 ; preds = %for.inc285
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body260

for.inc285.exit_crit_edge:                        ; preds = %for.inc285
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

exit:                                             ; preds = %for.inc285.exit_crit_edge, %i40e_remove_pd_page.exit.exit_crit_edge, %i40e_remove_sd_bp.exit.exit_crit_edge, %for.cond257.preheader.exit_crit_edge, %for.end.exit_crit_edge, %if.then209.exit_crit_edge, %if.then159, %if.then145, %if.then128, %if.then114, %if.then101, %if.then87, %if.then75, %if.then61, %if.then49, %if.then35, %if.then23, %if.then9, %if.then4, %if.then
  %ret_code.4 = phi i32 [ -19, %if.then4 ], [ -19, %if.then23 ], [ -19, %if.then49 ], [ -19, %if.then75 ], [ -19, %if.then101 ], [ -49, %if.then128 ], [ -50, %if.then159 ], [ -45, %for.end.exit_crit_edge ], [ -19, %if.then ], [ -19, %if.then9 ], [ -19, %if.then35 ], [ -19, %if.then61 ], [ -19, %if.then87 ], [ -49, %if.then114 ], [ -50, %if.then145 ], [ 0, %for.cond257.preheader.exit_crit_edge ], [ %call1.i, %i40e_remove_sd_bp.exit.exit_crit_edge ], [ %call1.i384, %i40e_remove_pd_page.exit.exit_crit_edge ], [ 0, %for.inc285.exit_crit_edge ], [ %call211, %if.then209.exit_crit_edge ]
  ret i32 %ret_code.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_free_virt_mem_d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_clear_lan_tx_queue_context(ptr noundef %hw, i16 noundef zeroext %queue) local_unnamed_addr #0 align 64 {
entry:
  %context_bytes = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %context_bytes) #5
  %0 = ptrtoint ptr %context_bytes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %context_bytes, align 4, !annotation !110
  %conv = zext i16 %queue to i32
  %call = call fastcc i32 @i40e_hmc_get_object_va(ptr noundef %hw, ptr noundef nonnull %context_bytes, i32 noundef 1, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %context_bytes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context_bytes, align 4
  %hmc_obj.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 3
  %3 = ptrtoint ptr %hmc_obj.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hmc_obj.i, align 8
  %size.i = getelementptr %struct.i40e_hmc_obj_info, ptr %4, i32 1, i32 3
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size.i, align 8
  %conv.i = trunc i64 %6 to i32
  %7 = call ptr @memset(ptr %2, i32 0, i32 %conv.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %context_bytes) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_hmc_get_object_va(ptr noundef readonly %hw, ptr noundef writeonly %object_base, i32 noundef %rsrc_type, i32 noundef %obj_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hmc = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30
  %cmp = icmp eq ptr %hmc, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug701, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_hmc_get_object_va, %if.then4)) #5
          to label %exit [label %if.then4], !srcloc !87

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug701, ptr noundef %dev, ptr noundef nonnull @.str.22) #5
  br label %exit

if.end7:                                          ; preds = %entry
  %hmc_obj = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 3
  %4 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hmc_obj, align 4
  %cmp8 = icmp eq ptr %5, null
  br i1 %cmp8, label %if.then9, label %if.end32

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_hmc_get_object_va, %if.then23)) #5
          to label %exit [label %if.then23], !srcloc !87

if.then23:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %back24 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %back24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back24, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug702, ptr noundef %dev26, ptr noundef nonnull @.str.23) #5
  br label %exit

if.end32:                                         ; preds = %if.end7
  %cmp33 = icmp eq ptr %object_base, null
  br i1 %cmp33, label %if.then34, label %if.end57

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug703, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_hmc_get_object_va, %if.then48)) #5
          to label %exit [label %if.then48], !srcloc !87

if.then48:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %back49 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %back49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back49, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug703, ptr noundef %dev51, ptr noundef nonnull @.str.24) #5
  br label %exit

if.end57:                                         ; preds = %if.end32
  %14 = ptrtoint ptr %hmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hmc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213027143, i32 %15)
  %cmp58.not = icmp eq i32 %15, 1213027143
  br i1 %cmp58.not, label %if.end82, label %if.then59

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_hmc_get_object_va, %if.then73)) #5
          to label %exit [label %if.then73], !srcloc !87

if.then73:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  %back74 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %back74 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %back74, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev76 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug704, ptr noundef %dev76, ptr noundef nonnull @.str.25) #5
  br label %exit

if.end82:                                         ; preds = %if.end57
  %cnt = getelementptr %struct.i40e_hmc_obj_info, ptr %5, i32 %rsrc_type, i32 2
  %20 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %obj_idx)
  %cmp84.not = icmp ugt i32 %21, %obj_idx
  br i1 %cmp84.not, label %if.end108, label %do.body87

do.body87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_hmc_get_object_va, %if.then99)) #5
          to label %exit [label %if.then99], !srcloc !87

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  %back100 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %back100 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %back100, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug705, ptr noundef %dev102, ptr noundef nonnull @.str.26, i32 noundef 0) #5
  br label %exit

if.end108:                                        ; preds = %if.end82
  %arrayidx = getelementptr %struct.i40e_hmc_obj_info, ptr %5, i32 %rsrc_type
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx, align 8
  %size = getelementptr %struct.i40e_hmc_obj_info, ptr %5, i32 %rsrc_type, i32 3
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %size, align 8
  %conv = zext i32 %obj_idx to i64
  %mul = mul i64 %29, %conv
  %add = add i64 %mul, %27
  %div204 = lshr i64 %add, 21
  %conv118 = trunc i64 %div204 to i32
  %sd_entry122 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 5, i32 3
  %30 = ptrtoint ptr %sd_entry122 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_entry122, align 4
  %arrayidx123 = getelementptr %struct.i40e_hmc_sd_entry, ptr %31, i32 %conv118
  %32 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp133 = icmp eq i32 %33, 1
  %34 = trunc i64 %add to i32
  br i1 %cmp133, label %if.then135, label %if.else

if.then135:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  %35 = lshr i32 %34, 12
  %rem = and i32 %35, 511
  %pd_entry157 = getelementptr %struct.i40e_hmc_sd_entry, ptr %31, i32 %conv118, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %pd_entry157 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pd_entry157, align 4
  %conv160 = and i32 %34, 4095
  %addr = getelementptr %struct.i40e_hmc_pd_entry, ptr %37, i32 %rem, i32 0, i32 1
  %38 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %conv160
  %40 = ptrtoint ptr %object_base to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %object_base, align 4
  br label %exit

if.else:                                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  %conv162 = and i32 %34, 2097151
  %addr164 = getelementptr %struct.i40e_hmc_sd_entry, ptr %31, i32 %conv118, i32 2, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %addr164 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr164, align 4
  %add.ptr166 = getelementptr i8, ptr %42, i32 %conv162
  %43 = ptrtoint ptr %object_base to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr166, ptr %object_base, align 4
  br label %exit

exit:                                             ; preds = %if.else, %if.then135, %if.then99, %do.body87, %if.then73, %if.then59, %if.then48, %if.then34, %if.then23, %if.then9, %if.then4, %if.then
  %ret_code.0 = phi i32 [ -19, %if.then4 ], [ -19, %if.then23 ], [ -19, %if.then48 ], [ -19, %if.then73 ], [ 0, %if.then135 ], [ 0, %if.else ], [ -49, %if.then99 ], [ -19, %if.then ], [ -19, %if.then9 ], [ -19, %if.then34 ], [ -19, %if.then59 ], [ -49, %do.body87 ]
  ret i32 %ret_code.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_set_lan_tx_queue_context(ptr noundef %hw, i16 noundef zeroext %queue, ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  %context_bytes = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %context_bytes) #5
  %0 = ptrtoint ptr %context_bytes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %context_bytes, align 4, !annotation !110
  %conv = zext i16 %queue to i32
  %call = call fastcc i32 @i40e_hmc_get_object_va(ptr noundef %hw, ptr noundef nonnull %context_bytes, i32 noundef 1, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %context_bytes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context_bytes, align 4
  call fastcc void @i40e_set_hmc_context(ptr noundef %2, ptr noundef nonnull @i40e_hmc_txq_ce_info, ptr noundef %s)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %context_bytes) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_set_hmc_context(ptr nocapture noundef %context_bytes, ptr nocapture noundef readonly %ce_info, ptr nocapture noundef readonly %dest) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %width37 = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 0, i32 2
  %0 = ptrtoint ptr %width37 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %width37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not38 = icmp eq i16 %1, 0
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %arrayidx41 = phi ptr [ %arrayidx, %for.inc.for.body_crit_edge ], [ %ce_info, %entry.for.body_crit_edge ]
  %f.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %size_of = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %f.039, i32 1
  %2 = ptrtoint ptr %size_of to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size_of, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %3, label %for.body.for.inc_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb5
    i16 4, label %sw.bb7
    i16 8, label %sw.bb9
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx41, align 2
  %conv.i = zext i16 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %dest, i32 %conv.i
  %lsb.i = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %f.039, i32 3
  %7 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %lsb.i, align 2
  %rem.i = and i16 %8, 7
  %width.i = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %f.039, i32 2
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %width.i, align 2
  %conv3.i = zext i16 %10 to i32
  %notmask.i = shl nsw i32 -1, %conv3.i
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = and i32 %notmask.i, 255
  %conv5.i = xor i32 %conv4.i, 255
  %13 = trunc i32 %conv5.i to i8
  %conv7.i = and i8 %12, %13
  %conv8.i = zext i16 %rem.i to i32
  %shl10.i = shl i32 %conv5.i, %conv8.i
  %conv13.i = zext i8 %conv7.i to i16
  %shl14.i = shl nuw nsw i16 %conv13.i, %rem.i
  %14 = lshr i16 %8, 3
  %div.i = zext i16 %14 to i32
  %add.ptr18.i = getelementptr i8, ptr %context_bytes, i32 %div.i
  %15 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %dest_byte.0.copyload.i = load i8, ptr %add.ptr18.i, align 1
  %16 = trunc i32 %shl10.i to i8
  %17 = xor i8 %16, -1
  %conv22.i = and i8 %dest_byte.0.copyload.i, %17
  %conv23.i = trunc i16 %shl14.i to i8
  %or.i = or i8 %conv22.i, %conv23.i
  store i8 %or.i, ptr %add.ptr18.i, align 1
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx41, align 2
  %conv.i1 = zext i16 %19 to i32
  %add.ptr.i2 = getelementptr i8, ptr %dest, i32 %conv.i1
  %lsb.i3 = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %f.039, i32 3
  %20 = ptrtoint ptr %lsb.i3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %lsb.i3, align 2
  %rem.i4 = and i16 %21, 7
  %width.i5 = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %f.039, i32 2
  %22 = ptrtoint ptr %width.i5 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %width.i5, align 2
  %conv3.i6 = zext i16 %23 to i32
  %notmask.i7 = shl nsw i32 -1, %conv3.i6
  %24 = ptrtoint ptr %add.ptr.i2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i2, align 2
  %conv4.i8 = and i32 %notmask.i7, 65535
  %conv5.i9 = xor i32 %conv4.i8, 65535
  %26 = trunc i32 %conv5.i9 to i16
  %conv7.i10 = and i16 %25, %26
  %conv8.i11 = zext i16 %rem.i4 to i32
  %shl10.i12 = shl i32 %conv5.i9, %conv8.i11
  %conv11.i = trunc i32 %shl10.i12 to i16
  %shl14.i13 = shl i16 %conv7.i10, %rem.i4
  %27 = lshr i16 %21, 3
  %div.i14 = zext i16 %27 to i32
  %add.ptr18.i15 = getelementptr i8, ptr %context_bytes, i32 %div.i14
  %28 = ptrtoint ptr %add.ptr18.i15 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %dest_word.0.copyload.i = load i16, ptr %add.ptr18.i15, align 1
  %29 = xor i16 %conv11.i, -1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #5
  %and21.i = and i16 %30, %dest_word.0.copyload.i
  %31 = tail call i16 @llvm.bswap.i16(i16 %shl14.i13) #5
  %or37.i = or i16 %and21.i, %31
  %32 = ptrtoint ptr %add.ptr18.i15 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %or37.i, ptr %add.ptr18.i15, align 1
  br label %for.inc

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx41, align 2
  %lsb.i16 = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %f.039, i32 3
  %35 = ptrtoint ptr %lsb.i16 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %lsb.i16, align 2
  %width.i17 = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %f.039, i32 2
  %37 = ptrtoint ptr %width.i17 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %width.i17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %38)
  %cmp.i = icmp ult i16 %38, 32
  %conv3.i18 = zext i16 %38 to i32
  %notmask.i19 = shl nsw i32 -1, %conv3.i18
  %sub.i = xor i32 %notmask.i19, -1
  %mask.0.i = select i1 %cmp.i, i32 %sub.i, i32 -1
  %39 = and i16 %36, 7
  %conv.i20 = zext i16 %34 to i32
  %add.ptr.i21 = getelementptr i8, ptr %dest, i32 %conv.i20
  %40 = ptrtoint ptr %add.ptr.i21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i21, align 4
  %and.i = and i32 %mask.0.i, %41
  %conv7.i22 = zext i16 %39 to i32
  %shl8.i = shl i32 %mask.0.i, %conv7.i22
  %shl10.i23 = shl i32 %and.i, %conv7.i22
  %42 = lshr i16 %36, 3
  %div.i24 = zext i16 %42 to i32
  %add.ptr13.i = getelementptr i8, ptr %context_bytes, i32 %div.i24
  %43 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %dest_dword.0.copyload.i = load i32, ptr %add.ptr13.i, align 1
  %44 = xor i32 %shl8.i, -1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  %and14.i = and i32 %45, %dest_dword.0.copyload.i
  %46 = tail call i32 @llvm.bswap.i32(i32 %shl10.i23) #5
  %or.i25 = or i32 %and14.i, %46
  %47 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %or.i25, ptr %add.ptr13.i, align 1
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  %48 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx41, align 2
  %lsb.i26 = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %f.039, i32 3
  %50 = ptrtoint ptr %lsb.i26 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %lsb.i26, align 2
  %width.i27 = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %f.039, i32 2
  %52 = ptrtoint ptr %width.i27 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %width.i27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %53)
  %cmp.i28 = icmp ult i16 %53, 64
  br i1 %cmp.i28, label %if.then.i, label %sw.bb9.i40e_write_qword.exit_crit_edge

sw.bb9.i40e_write_qword.exit_crit_edge:           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %i40e_write_qword.exit

if.then.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %sh_prom.i = zext i16 %53 to i64
  %notmask.i29 = shl nsw i64 -1, %sh_prom.i
  %sub.i30 = xor i64 %notmask.i29, -1
  br label %i40e_write_qword.exit

i40e_write_qword.exit:                            ; preds = %if.then.i, %sw.bb9.i40e_write_qword.exit_crit_edge
  %mask.0.i31 = phi i64 [ %sub.i30, %if.then.i ], [ -1, %sw.bb9.i40e_write_qword.exit_crit_edge ]
  %54 = and i16 %51, 7
  %conv.i32 = zext i16 %49 to i32
  %add.ptr.i33 = getelementptr i8, ptr %dest, i32 %conv.i32
  %55 = ptrtoint ptr %add.ptr.i33 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr.i33, align 8
  %and.i34 = and i64 %56, %mask.0.i31
  %sh_prom8.i = zext i16 %54 to i64
  %shl9.i = shl i64 %mask.0.i31, %sh_prom8.i
  %shl12.i = shl i64 %and.i34, %sh_prom8.i
  %57 = lshr i16 %51, 3
  %div.i35 = zext i16 %57 to i32
  %add.ptr15.i = getelementptr i8, ptr %context_bytes, i32 %div.i35
  %58 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %dest_qword.0.copyload.i = load i64, ptr %add.ptr15.i, align 1
  %59 = xor i64 %shl9.i, -1
  %60 = tail call i64 @llvm.bswap.i64(i64 %59) #5
  %and16.i = and i64 %dest_qword.0.copyload.i, %60
  %61 = tail call i64 @llvm.bswap.i64(i64 %shl12.i) #5
  %or.i36 = or i64 %61, %and16.i
  %62 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %or.i36, ptr %add.ptr15.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %i40e_write_qword.exit, %sw.bb7, %sw.bb5, %sw.bb, %for.body.for.inc_crit_edge
  %inc = add i32 %f.039, 1
  %arrayidx = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %inc
  %width = getelementptr %struct.i40e_context_ele, ptr %ce_info, i32 %inc, i32 2
  %63 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %width, align 2
  %cmp.not = icmp eq i16 %64, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_clear_lan_rx_queue_context(ptr noundef %hw, i16 noundef zeroext %queue) local_unnamed_addr #0 align 64 {
entry:
  %context_bytes = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %context_bytes) #5
  %0 = ptrtoint ptr %context_bytes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %context_bytes, align 4, !annotation !110
  %conv = zext i16 %queue to i32
  %call = call fastcc i32 @i40e_hmc_get_object_va(ptr noundef %hw, ptr noundef nonnull %context_bytes, i32 noundef 2, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %context_bytes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context_bytes, align 4
  %hmc_obj.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 30, i32 3
  %3 = ptrtoint ptr %hmc_obj.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hmc_obj.i, align 8
  %size.i = getelementptr %struct.i40e_hmc_obj_info, ptr %4, i32 2, i32 3
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size.i, align 8
  %conv.i = trunc i64 %6 to i32
  %7 = call ptr @memset(ptr %2, i32 0, i32 %conv.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %context_bytes) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_set_lan_rx_queue_context(ptr noundef %hw, i16 noundef zeroext %queue, ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  %context_bytes = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %context_bytes) #5
  %0 = ptrtoint ptr %context_bytes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %context_bytes, align 4, !annotation !110
  %conv = zext i16 %queue to i32
  %call = call fastcc i32 @i40e_hmc_get_object_va(ptr noundef %hw, ptr noundef nonnull %context_bytes, i32 noundef 2, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %context_bytes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context_bytes, align 4
  call fastcc void @i40e_set_hmc_context(ptr noundef %2, ptr noundef nonnull @i40e_hmc_rxq_ce_info, ptr noundef %s)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %context_bytes) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_add_sd_table_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_add_pd_table_entry(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_remove_pd_bp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_prep_remove_pd_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_remove_pd_page_new(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_prep_remove_sd_bp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_remove_sd_bp_new(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 115, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @i40e_init_lan_hmc.__UNIQUE_ID_ddebug676, !1, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 138, i32 3}
!8 = !{ptr @i40e_init_lan_hmc.__UNIQUE_ID_ddebug677, !7, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 161, i32 3}
!11 = !{ptr @i40e_init_lan_hmc.__UNIQUE_ID_ddebug678, !10, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 184, i32 3}
!14 = !{ptr @i40e_init_lan_hmc.__UNIQUE_ID_ddebug679, !13, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 478, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @i40e_configure_lan_hmc.__UNIQUE_ID_ddebug693, !16, !"__UNIQUE_ID_ddebug693", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 293, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug680, !20, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 298, i32 3}
!25 = !{ptr @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug681, !24, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 303, i32 3}
!28 = !{ptr @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug682, !27, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 309, i32 3}
!31 = !{ptr @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug683, !30, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!32 = !{ptr @i40e_create_lan_hmc_object.__UNIQUE_ID_ddebug684, !33, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 316, i32 3}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 534, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug694, !35, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 539, i32 3}
!40 = !{ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug695, !39, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 544, i32 3}
!43 = !{ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug696, !42, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 550, i32 3}
!46 = !{ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug697, !45, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 556, i32 3}
!49 = !{ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug698, !48, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 561, i32 3}
!52 = !{ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug699, !51, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!53 = !{ptr @i40e_delete_lan_hmc_object.__UNIQUE_ID_ddebug700, !54, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 569, i32 3}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 991, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug701, !56, !"__UNIQUE_ID_ddebug701", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 996, i32 3}
!61 = !{ptr @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug702, !60, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 1001, i32 3}
!64 = !{ptr @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug703, !63, !"__UNIQUE_ID_ddebug703", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 1006, i32 3}
!67 = !{ptr @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug704, !66, !"__UNIQUE_ID_ddebug704", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 1010, i32 3}
!70 = !{ptr @i40e_hmc_get_object_va.__UNIQUE_ID_ddebug705, !69, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!71 = !{ptr @i40e_hmc_txq_ce_info, !72, !"i40e_hmc_txq_ce_info", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 672, i32 32}
!73 = !{ptr @i40e_hmc_rxq_ce_info, !74, !"i40e_hmc_rxq_ce_info", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c", i32 698, i32 32}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 6190511}
!85 = !{i64 2160288285}
!86 = !{i64 2160288884}
!87 = !{i64 2149090517, i64 2149090522, i64 2149090535, i64 2149090579, i64 2149090613, i64 2149090634}
!88 = !{i64 2160292896}
!89 = !{i64 2160293495}
!90 = !{i64 2160297507}
!91 = !{i64 2160298106}
!92 = !{i64 2160302168}
!93 = !{i64 2160302767}
!94 = !{i64 2160335238}
!95 = !{i64 6190093}
!96 = !{i64 2160336012}
!97 = !{i64 2160336837}
!98 = !{i64 2160337611}
!99 = !{i64 2160338440}
!100 = !{i64 2160339214}
!101 = !{i64 2160340039}
!102 = !{i64 2160340813}
!103 = !{i8 0, i8 2}
!104 = !{i64 2160325365}
!105 = !{i64 2160325890}
!106 = !{i64 2160326415}
!107 = !{i64 2160327761}
!108 = !{i64 2160328286}
!109 = !{i64 2160328811}
!110 = !{!"auto-init"}
