; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_hmc.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_hmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
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
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
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
%struct.i40e_hmc_sd_entry = type { i32, i8, %union.anon.4 }
%union.anon.4 = type { %struct.i40e_hmc_pd_table }
%struct.i40e_hmc_pd_table = type { %struct.i40e_dma_mem, ptr, %struct.i40e_virt_mem, i32, i32 }
%struct.i40e_hmc_bp = type { i32, %struct.i40e_dma_mem, i32, i32 }
%struct.i40e_hmc_pd_entry = type { %struct.i40e_hmc_bp, i32, i8, i8 }

@i40e_add_sd_table_entry.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i40e\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i40e_add_sd_table_entry\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/i40e/i40e_hmc.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"i40e_add_sd_table_entry: bad sd_entry\0A\00", [57 x i8] zeroinitializer }, align 32
@i40e_add_sd_table_entry.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"i40e_add_sd_table_entry: bad sd_index\0A\00", [57 x i8] zeroinitializer }, align 32
@i40e_add_pd_table_entry.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i40e_add_pd_table_entry\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"i40e_add_pd_table_entry: bad pd_index\0A\00", [57 x i8] zeroinitializer }, align 32
@i40e_remove_pd_bp.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i40e_remove_pd_bp\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i40e_remove_pd_bp: bad idx\0A\00", [36 x i8] zeroinitializer }, align 32
@i40e_remove_pd_bp.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"i40e_remove_pd_bp: wrong sd_entry type\0A\00", [56 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 35, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 41, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 125, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 204, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [46 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_hmc.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 210, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_add_sd_table_entry(ptr noundef %hw, ptr nocapture noundef %hmc_info, i32 noundef %sd_index, i32 noundef %type, i64 noundef %direct_mode_sz) local_unnamed_addr #0 align 64 {
entry:
  %mem = alloca %struct.i40e_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem) #5
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !29
  %1 = getelementptr inbounds %struct.i40e_dma_mem, ptr %mem, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !29
  %3 = getelementptr inbounds %struct.i40e_dma_mem, ptr %mem, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !29
  %sd_entry1 = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %sd_entry1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_entry1, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_add_sd_table_entry.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_add_sd_table_entry, %if.then5)) #5
          to label %if.end78 [label %if.then5], !srcloc !30

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %back, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_add_sd_table_entry.__UNIQUE_ID_ddebug676, ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  br label %if.end78

if.end8:                                          ; preds = %entry
  %sd_cnt = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sd_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sd_index)
  %cmp10.not = icmp ugt i32 %12, %sd_index
  br i1 %cmp10.not, label %if.end34, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_add_sd_table_entry.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_add_sd_table_entry, %if.then25)) #5
          to label %if.end78 [label %if.then25], !srcloc !30

if.then25:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %back26 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %back26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %back26, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_add_sd_table_entry.__UNIQUE_ID_ddebug677, ptr noundef %dev28, ptr noundef nonnull @.str.4) #5
  br label %if.end78

if.end34:                                         ; preds = %if.end8
  %arrayidx = getelementptr %struct.i40e_hmc_sd_entry, ptr %6, i32 %sd_index
  %valid = getelementptr %struct.i40e_hmc_sd_entry, ptr %6, i32 %sd_index, i32 1
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool37.not = icmp eq i8 %18, 0
  br i1 %tobool37.not, label %if.then38, label %if.end34.if.end64_crit_edge

if.end34.if.end64_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp39 = icmp eq i32 %type, 1
  %.direct_mode_sz = select i1 %cmp39, i64 4096, i64 %direct_mode_sz
  %call42 = call i32 @i40e_allocate_dma_mem_d(ptr noundef %hw, ptr noundef nonnull %mem, i64 noundef %.direct_mode_sz, i32 noundef 4096) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then38.if.end78_crit_edge

if.then38.if.end78_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.end45:                                         ; preds = %if.then38
  %u = getelementptr %struct.i40e_hmc_sd_entry, ptr %6, i32 %sd_index, i32 2
  br i1 %cmp39, label %if.then47, label %if.else56

if.then47:                                        ; preds = %if.end45
  %pd_entry_virt_mem = getelementptr inbounds %struct.i40e_hmc_pd_table, ptr %u, i32 0, i32 2
  %call48 = call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef %pd_entry_virt_mem, i32 noundef 16384) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then75

if.end51:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %pd_entry_virt_mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pd_entry_virt_mem, align 4
  %pd_entry = getelementptr inbounds %struct.i40e_hmc_pd_table, ptr %u, i32 0, i32 1
  %21 = ptrtoint ptr %pd_entry to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %pd_entry, align 4
  %22 = call ptr @memcpy(ptr %u, ptr %mem, i32 12)
  br label %if.end59

if.else56:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %addr = getelementptr inbounds %struct.i40e_hmc_bp, ptr %u, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %addr, ptr %mem, i32 12)
  %sd_pd_index = getelementptr inbounds %struct.i40e_hmc_bp, ptr %u, i32 0, i32 2
  %24 = ptrtoint ptr %sd_pd_index to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sd_index, ptr %sd_pd_index, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.end51
  %25 = ptrtoint ptr %sd_entry1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_entry1, align 4
  %arrayidx62 = getelementptr %struct.i40e_hmc_sd_entry, ptr %26, i32 %sd_index
  %27 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %type, ptr %arrayidx62, align 4
  %ref_cnt = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ref_cnt, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %ref_cnt, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end59, %if.end34.if.end64_crit_edge
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp66 = icmp eq i32 %31, 2
  br i1 %cmp66, label %if.then67, label %if.end64.if.end78_crit_edge

if.end64.if.end78_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %ref_cnt69 = getelementptr %struct.i40e_hmc_sd_entry, ptr %6, i32 %sd_index, i32 2, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %ref_cnt69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ref_cnt69, align 4
  %inc70 = add i32 %33, 1
  store i32 %inc70, ptr %ref_cnt69, align 4
  br label %if.end78

if.then75:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef nonnull %mem) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.then67, %if.end64.if.end78_crit_edge, %if.then38.if.end78_crit_edge, %if.then25, %if.then11, %if.then5, %if.then
  %ret_code.2114 = phi i32 [ %call48, %if.then75 ], [ %call42, %if.then38.if.end78_crit_edge ], [ 0, %if.end64.if.end78_crit_edge ], [ 0, %if.then67 ], [ -45, %if.then25 ], [ -19, %if.then5 ], [ -19, %if.then ], [ -45, %if.then11 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem) #5
  ret i32 %ret_code.2114
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_allocate_dma_mem_d(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_allocate_virt_mem_d(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_free_dma_mem_d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_add_pd_table_entry(ptr noundef %hw, ptr nocapture noundef readonly %hmc_info, i32 noundef %pd_index, ptr noundef readonly %rsrc_pg) local_unnamed_addr #0 align 64 {
entry:
  %mem = alloca %struct.i40e_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem) #5
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !29
  %1 = getelementptr inbounds %struct.i40e_dma_mem, ptr %mem, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !29
  %3 = getelementptr inbounds %struct.i40e_dma_mem, ptr %mem, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !29
  %div61 = lshr i32 %pd_index, 9
  %sd_cnt = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sd_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div61, i32 %6)
  %cmp.not = icmp ult i32 %div61, %6
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_add_pd_table_entry.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_add_pd_table_entry, %if.then4)) #5
          to label %exit [label %if.then4], !srcloc !30

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %back, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_add_pd_table_entry.__UNIQUE_ID_ddebug678, ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  br label %exit

if.end7:                                          ; preds = %entry
  %sd_entry = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %sd_entry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_entry, align 4
  %arrayidx = getelementptr %struct.i40e_hmc_sd_entry, ptr %12, i32 %div61
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp10.not = icmp eq i32 %14, 1
  br i1 %cmp10.not, label %if.end12, label %if.end7.exit_crit_edge

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end12:                                         ; preds = %if.end7
  %rem = and i32 %pd_index, 511
  %u = getelementptr %struct.i40e_hmc_sd_entry, ptr %12, i32 %div61, i32 2
  %pd_entry16 = getelementptr inbounds %struct.i40e_hmc_pd_table, ptr %u, i32 0, i32 1
  %15 = ptrtoint ptr %pd_entry16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pd_entry16, align 4
  %arrayidx17 = getelementptr %struct.i40e_hmc_pd_entry, ptr %16, i32 %rem
  %valid = getelementptr %struct.i40e_hmc_pd_entry, ptr %16, i32 %rem, i32 3
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not = icmp eq i8 %18, 0
  br i1 %tobool18.not, label %if.then19, label %if.end12.if.end33_crit_edge

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then19:                                        ; preds = %if.end12
  %tobool20.not = icmp eq ptr %rsrc_pg, null
  br i1 %tobool20.not, label %if.else, label %if.then19.if.end28_crit_edge

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.else:                                          ; preds = %if.then19
  %call23 = call i32 @i40e_allocate_dma_mem_d(ptr noundef %hw, ptr noundef nonnull %mem, i64 noundef 4096, i32 noundef 4096) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else.if.end28_crit_edge, label %if.else.exit_crit_edge

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then19.if.end28_crit_edge
  %.sink = phi i8 [ 1, %if.then19.if.end28_crit_edge ], [ 0, %if.else.if.end28_crit_edge ]
  %page.0 = phi ptr [ %rsrc_pg, %if.then19.if.end28_crit_edge ], [ %mem, %if.else.if.end28_crit_edge ]
  %rsrc_pg27 = getelementptr %struct.i40e_hmc_pd_entry, ptr %16, i32 %rem, i32 2
  %19 = ptrtoint ptr %rsrc_pg27 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %rsrc_pg27, align 4
  %addr = getelementptr inbounds %struct.i40e_hmc_bp, ptr %arrayidx17, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %addr, ptr %page.0, i32 12)
  %sd_pd_index = getelementptr inbounds %struct.i40e_hmc_bp, ptr %arrayidx17, i32 0, i32 2
  %21 = ptrtoint ptr %sd_pd_index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %pd_index, ptr %sd_pd_index, align 4
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx17, align 4
  %pa = getelementptr inbounds %struct.i40e_dma_mem, ptr %page.0, i32 0, i32 1
  %23 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pa, align 4
  %or = or i32 %24, 1
  %conv = zext i32 %or to i64
  %25 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %u, align 4
  %add.ptr = getelementptr i64, ptr %26, i32 %rem
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv, ptr %add.ptr, align 8
  %sd_index = getelementptr %struct.i40e_hmc_pd_entry, ptr %16, i32 %rem, i32 1
  %28 = ptrtoint ptr %sd_index to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div61, ptr %sd_index, align 4
  %29 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %valid, align 1
  %ref_cnt = getelementptr inbounds %struct.i40e_hmc_pd_table, ptr %u, i32 0, i32 3
  %30 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ref_cnt, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %ref_cnt, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end28, %if.end12.if.end33_crit_edge
  %ref_cnt35 = getelementptr inbounds %struct.i40e_hmc_bp, ptr %arrayidx17, i32 0, i32 3
  %32 = ptrtoint ptr %ref_cnt35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ref_cnt35, align 4
  %inc36 = add i32 %33, 1
  store i32 %inc36, ptr %ref_cnt35, align 4
  br label %exit

exit:                                             ; preds = %if.end33, %if.else.exit_crit_edge, %if.end7.exit_crit_edge, %if.then4, %if.then
  %ret_code.2 = phi i32 [ -46, %if.then4 ], [ 0, %if.end7.exit_crit_edge ], [ 0, %if.end33 ], [ %call23, %if.else.exit_crit_edge ], [ -46, %if.then ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem) #5
  ret i32 %ret_code.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_remove_pd_bp(ptr noundef %hw, ptr nocapture noundef readonly %hmc_info, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div87 = lshr i32 %idx, 9
  %rem = and i32 %idx, 511
  %sd_cnt = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div87, i32 %1)
  %cmp.not = icmp ult i32 %div87, %1
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_remove_pd_bp.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_remove_pd_bp, %if.then4)) #5
          to label %exit [label %if.then4], !srcloc !30

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_remove_pd_bp.__UNIQUE_ID_ddebug679, ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  br label %exit

if.end7:                                          ; preds = %entry
  %sd_entry9 = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %sd_entry9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_entry9, align 4
  %arrayidx = getelementptr %struct.i40e_hmc_sd_entry, ptr %7, i32 %div87
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp10.not = icmp eq i32 %9, 1
  br i1 %cmp10.not, label %if.end34, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_remove_pd_bp.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_remove_pd_bp, %if.then25)) #5
          to label %exit [label %if.then25], !srcloc !30

if.then25:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %back26 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %back26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back26, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_remove_pd_bp.__UNIQUE_ID_ddebug680, ptr noundef %dev28, ptr noundef nonnull @.str.9) #5
  br label %exit

if.end34:                                         ; preds = %if.end7
  %u = getelementptr %struct.i40e_hmc_sd_entry, ptr %7, i32 %div87, i32 2
  %pd_entry38 = getelementptr inbounds %struct.i40e_hmc_pd_table, ptr %u, i32 0, i32 1
  %14 = ptrtoint ptr %pd_entry38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pd_entry38, align 4
  %arrayidx39 = getelementptr %struct.i40e_hmc_pd_entry, ptr %15, i32 %rem
  %ref_cnt = getelementptr inbounds %struct.i40e_hmc_bp, ptr %arrayidx39, i32 0, i32 3
  %16 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ref_cnt, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool42.not = icmp eq i32 %dec, 0
  br i1 %tobool42.not, label %if.end44, label %if.end34.exit_crit_edge

if.end34.exit_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end44:                                         ; preds = %if.end34
  %valid = getelementptr %struct.i40e_hmc_pd_entry, ptr %15, i32 %rem, i32 3
  %18 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %valid, align 1
  %ref_cnt45 = getelementptr inbounds %struct.i40e_hmc_pd_table, ptr %u, i32 0, i32 3
  %19 = ptrtoint ptr %ref_cnt45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ref_cnt45, align 4
  %dec46 = add i32 %20, -1
  store i32 %dec46, ptr %ref_cnt45, align 4
  %21 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %u, align 4
  %add.ptr = getelementptr i64, ptr %22, i32 %rem
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %add.ptr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %shl50 = shl i32 %idx, 16
  %or = or i32 %div87, %shl50
  %24 = tail call i32 @llvm.bswap.i32(i32 %or)
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %add.ptr51 = getelementptr i8, ptr %26, i32 787200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %24) #5, !srcloc !33
  %rsrc_pg = getelementptr %struct.i40e_hmc_pd_entry, ptr %15, i32 %rem, i32 2
  %27 = ptrtoint ptr %rsrc_pg to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rsrc_pg, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool52.not = icmp eq i8 %28, 0
  br i1 %tobool52.not, label %if.end56, label %if.end44.if.end59_crit_edge

if.end44.if.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.end56:                                         ; preds = %if.end44
  %addr = getelementptr inbounds %struct.i40e_hmc_bp, ptr %arrayidx39, i32 0, i32 1
  %call55 = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool57.not = icmp eq i32 %call55, 0
  br i1 %tobool57.not, label %if.end56.if.end59_crit_edge, label %if.end56.exit_crit_edge

if.end56.exit_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end56.if.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.end59:                                         ; preds = %if.end56.if.end59_crit_edge, %if.end44.if.end59_crit_edge
  %29 = ptrtoint ptr %ref_cnt45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ref_cnt45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool61.not = icmp eq i32 %30, 0
  br i1 %tobool61.not, label %if.then62, label %if.end59.exit_crit_edge

if.end59.exit_crit_edge:                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %pd_entry_virt_mem = getelementptr inbounds %struct.i40e_hmc_pd_table, ptr %u, i32 0, i32 2
  %call63 = tail call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef %pd_entry_virt_mem) #5
  br label %exit

exit:                                             ; preds = %if.then62, %if.end59.exit_crit_edge, %if.end56.exit_crit_edge, %if.end34.exit_crit_edge, %if.then25, %if.then11, %if.then4, %if.then
  %ret_code.1 = phi i32 [ -46, %if.then4 ], [ -47, %if.then25 ], [ 0, %if.end34.exit_crit_edge ], [ %call55, %if.end56.exit_crit_edge ], [ 0, %if.end59.exit_crit_edge ], [ 0, %if.then62 ], [ -46, %if.then ], [ -47, %if.then11 ]
  ret i32 %ret_code.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_free_virt_mem_d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @i40e_prep_remove_sd_bp(ptr nocapture noundef %hmc_info, i32 noundef %idx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_entry1 = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %sd_entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_entry1, align 4
  %ref_cnt = getelementptr %struct.i40e_hmc_sd_entry, ptr %1, i32 %idx, i32 2, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_cnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ref_cnt5 = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %ref_cnt5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref_cnt5, align 4
  %dec6 = add i32 %5, -1
  store i32 %dec6, ptr %ref_cnt5, align 4
  %valid = getelementptr %struct.i40e_hmc_sd_entry, ptr %1, i32 %idx, i32 1
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %valid, align 4
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %ret_code.0 = phi i32 [ 0, %if.end ], [ -63, %entry.exit_crit_edge ]
  ret i32 %ret_code.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_remove_sd_bp_new(ptr noundef %hw, ptr nocapture noundef readonly %hmc_info, i32 noundef %idx, i1 noundef zeroext %is_pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_pf, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sd_entry1 = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %sd_entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_entry1, align 4
  %2 = or i32 %idx, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 786944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr7 = getelementptr i8, ptr %6, i32 786688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 34078720) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %2)
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr12 = getelementptr i8, ptr %9, i32 786432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %7) #5, !srcloc !33
  %addr = getelementptr %struct.i40e_hmc_sd_entry, ptr %1, i32 %idx, i32 2, i32 0, i32 0, i32 1
  %call = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %addr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -64, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @i40e_prep_remove_pd_page(ptr nocapture noundef %hmc_info, i32 noundef %idx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_entry1 = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %sd_entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_entry1, align 4
  %ref_cnt = getelementptr %struct.i40e_hmc_sd_entry, ptr %1, i32 %idx, i32 2, i32 0, i32 3
  %2 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %valid = getelementptr %struct.i40e_hmc_sd_entry, ptr %1, i32 %idx, i32 1
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %valid, align 4
  %ref_cnt3 = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %ref_cnt3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_cnt3, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %ref_cnt3, align 4
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %ret_code.0 = phi i32 [ 0, %if.end ], [ -63, %entry.exit_crit_edge ]
  ret i32 %ret_code.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_remove_pd_page_new(ptr noundef %hw, ptr nocapture noundef readonly %hmc_info, i32 noundef %idx, i1 noundef zeroext %is_pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_pf, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sd_entry1 = getelementptr inbounds %struct.i40e_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %sd_entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_entry1, align 4
  %2 = or i32 %idx, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 786944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr7 = getelementptr i8, ptr %6, i32 786688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 524288) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %2)
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr12 = getelementptr i8, ptr %9, i32 786432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %7) #5, !srcloc !33
  %u = getelementptr %struct.i40e_hmc_sd_entry, ptr %1, i32 %idx, i32 2
  %call = tail call i32 @i40e_free_dma_mem_d(ptr noundef %hw, ptr noundef %u) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -64, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_hmc.c", i32 35, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @i40e_add_sd_table_entry.__UNIQUE_ID_ddebug676, !1, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/i40e/i40e_hmc.c", i32 41, i32 3}
!8 = !{ptr @i40e_add_sd_table_entry.__UNIQUE_ID_ddebug677, !7, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/i40e/i40e_hmc.c", i32 125, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @i40e_add_pd_table_entry.__UNIQUE_ID_ddebug678, !10, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/i40e/i40e_hmc.c", i32 204, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @i40e_remove_pd_bp.__UNIQUE_ID_ddebug679, !14, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/i40e/i40e_hmc.c", i32 210, i32 3}
!19 = !{ptr @i40e_remove_pd_bp.__UNIQUE_ID_ddebug680, !18, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i64 2149066349, i64 2149066354, i64 2149066367, i64 2149066411, i64 2149066445, i64 2149066466}
!31 = !{i8 0, i8 2}
!32 = !{i64 2160277688}
!33 = !{i64 6165925}
!34 = !{i64 2160279066}
!35 = !{i64 2160279582}
!36 = !{i64 2160280107}
!37 = !{i64 2160281261}
!38 = !{i64 2160281777}
!39 = !{i64 2160282302}
